Gem::Specification.new do |s|
  s.platform    = Gem::Platform::RUBY
  s.name        = 'strip_attributes'
  s.version     = '1.1.2'
  s.summary     = 'strip_attributes'
  s.description = 'StripAttributes is a Rails plugin that automatically strips all ActiveRecord model attributes of leading and trailing whitespace before validation. If the attribute is blank, it strips the value to nil.'

  s.required_ruby_version     = '>= 1.8.7'
  s.required_rubygems_version = ">= 1.3.6"

  s.author            = 'Joe Noon'
  s.email             = 'joenoon@gmail.com'
  s.homepage          = 'http://github.com/joenoon'
  s.files = [
    "Rakefile",
    "README.rdoc",
    "lib/strip_attributes.rb"
  ]
  s.require_paths = ["lib"]
  
end