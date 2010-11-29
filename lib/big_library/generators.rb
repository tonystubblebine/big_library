module BigLibrary
  module Generators

    def try_migration_template(source, destination)
      begin
        migration_template(source, destination)
      rescue
        puts $! 
      end
    end

  end # Generators
end # BigLibrary

