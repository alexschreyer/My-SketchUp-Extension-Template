=begin

Copyright 2022, Author 
All Rights Reserved

License: AuthorsLicenseStatement 
Author: AuthorName
Organization: AuthorAffiliationOrOrganizationIfAny 
Name: ScriptName
Version: ScriptVersion
SU Version: MinimumSketchUpVersion 
Date: Date
Description: ScriptDescription 
Usage: ScriptUsageInstructions 
History:
    1.0.0 YYYY-MM-DD Description of changes
    
=end

require 'sketchup.rb'
require 'extensions.rb'

# Wrap in your own module. Start its name with a capital letter

module MY_Extensions

  module MY_ThisExtension

    # Load extension
    my_extension_loader = SketchupExtension.new( 'My Extension' , 'my_extension/my_extension_file.rb' )
    my_extension_loader.copyright = 'Copyright 2022 by Me' 
    my_extension_loader.creator = 'My team and I' 
    my_extension_loader.version = '1.0.0' 
    my_extension_loader.description = 'Description of this extension.'
    Sketchup.register_extension( my_extension_loader, true )

  end  # module MY_ThisExtension
  
end  # module MY_Extensions
