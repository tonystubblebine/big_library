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
  end # Generators
end # BigLibrary

