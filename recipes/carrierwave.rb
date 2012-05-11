if config['carrierwave']
  if recipes.include? 'mongoid'
    gem 'carrierwave-mongoid', :require => 'carrierwave/mongoid'
  else
    gem 'carrierwave'
  end 
else
  recipes.delete('carrierwave')
end

if config['carrierwave']
  after_bundler do
    # Code here is run after Bundler installs all the gems for the project.
    # You can run generators and rake tasks in this section.
    #if recipes.include? 'mongoid'
    #  create_file 'config/initializers/mongoid-carrierwave.rb' do
    #    <<-RUBY
#require 'carrierwave_mongoid'
#        RUBY
#      end
#    end
  end
end

if config['carrierwave']
  after_everything do
    # These blocks are run after the bundler blocks and are reserved for
    # special cases like committing the files to a git repository (something
    # that depends on everything having been generated).
  end
end
# A recipe is two parts: the Ruby code and YAML back-matter that comes
# after a blank line with the __END__ keyword.

__END__

name: carrierwave
description: "Use carrierwave for file uploading."
author: pranik

category: persistence
tags: [storage]

config:
  - carrierwave:
      type: boolean
      prompt: "Would you like to use carrierwave to store your files?"
