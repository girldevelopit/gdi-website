# config/initializers/postgresql_database_tasks.rb
module ActiveRecord
  module Tasks
    class PostgreSQLDatabaseTasks
      def drop
        establish_master_connection
        connection.select_all "select pg_terminate_backend(pg_stat_activity.pid) from pg_stat_activity where datname='#{configuration['database']}' AND state='idle';"
        connection.drop_database configuration['database']
      end
    end
  end
end

# If you see PG::ObjectInUse: ERROR:  database "gdi_development" is being accessed by other users
# DETAIL:  There is 1 other session using the database.
# : DROP DATABASE IF EXISTS "gdi_development"

# Run in the terminal
# rake environment db:drop
# rake db:drop db:create db:migrate
