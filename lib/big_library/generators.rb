module BigLibrary
  module Generators

    def try_migration_template(source, destination)
      begin
        migration_template(source, destination)
      rescue
        puts $! 
      end
    end

    def copy_javascript
      copy_file 'assets/javascripts/rails.js',  'public/javascripts/big_lib_rails.js'
    end

    # Migration is the migration_class_name and the asset file should be named migration_class_name_migration.rb
    def create_migration_file(migration)
      begin
        migration_template "#{migration}_migration.rb", "db/migrate/#{migration}.rb"
        sleep(2) # cheap hack to make sure migration numbers end up being different
      rescue
        puts $!
      end
    end
  end # Generators
end # BigLibrary

