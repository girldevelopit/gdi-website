module RSpec
  module Support
    # @api private
    #
    # Provides query methods for different OS or OS features.
    module OS
      def windows?
        RbConfig::CONFIG['host_os'] =~ /cygwin|mswin|mingw|bccwin|wince|emx/
      end
      module_function :windows?

      def windows_file_path?
        ::File::ALT_SEPARATOR == '\\'
      end
      module_function :windows_file_path?
    end
  end
end
