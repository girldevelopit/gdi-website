module RSpec
  module Support
    module InSubProcess
      if Process.respond_to?(:fork) && !(RUBY_PLATFORM == 'java' && RUBY_VERSION == '1.8.7')
        # Useful as a way to isolate a global change to a subprocess.

        # rubocop:disable MethodLength
        def in_sub_process
          readme, writeme = IO.pipe

          pid = Process.fork do
            exception = nil
            begin
              yield
            rescue Exception => e
              exception = e
            end

            writeme.write Marshal.dump(exception)

            readme.close
            writeme.close
            exit! # prevent at_exit hooks from running (e.g. minitest)
          end

          writeme.close
          Process.waitpid(pid)

          exception = Marshal.load(readme.read)
          readme.close

          raise exception if exception
        end
      else
        def in_sub_process
          skip "This spec requires forking to work properly, " \
               "and your platform does not support forking"
        end
      end
      # rubocop:enable MethodLength
    end
  end
end
