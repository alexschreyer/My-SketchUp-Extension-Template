require 'sketchup.rb'

# Main code 

module MY_Extensions

  module MY_ThisExtension

    def self.my_method 
      # do something...
    end

    def self.my_second_method 
      # do something else...
    end
    
    # Create menu items (once when loading)
    unless file_loaded?(__FILE__)
      menu = UI.menu('Plugins').add_submenu('My Extension') 
      menu.add_item('My Tool 1') { self.my_method } 
      menu.add_item('My Tool 2') { self.my_second_method } 
      file_loaded(__FILE__)
    end

  end  # module MY_ThisExtension
  
end  # module MY_Extensions
