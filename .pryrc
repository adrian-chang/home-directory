if Kernel.const_defined?("Rails") then
  require File.join(Rails.root,"config","environment")
  require 'rails/console/app'
  require 'rails/console/helpers'
  Pry::RailsCommands.instance_methods.each do |name| 
    Pry::Commands.command name.to_s do 
      Class.new.extend(Pry::RailsCommands).send(name)
    end
  end
end
