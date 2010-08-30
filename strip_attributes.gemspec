Gem::Specification.new do |s|
  s.platform    = Gem::Platform::RUBY
  s.name        = 'strip_attributes'
  s.version     = 1.0
  s.summary     = 'strip_attributes'
  s.description = 'StripAttributes is a Rails plugin that automatically strips all ActiveRecord model attributes of leading and trailing whitespace before validation. If the attribute is blank, it strips the value to nil.'

  s.required_ruby_version     = '>= 1.8.7'
  s.required_rubygems_version = ">= 1.3.6"

  s.author            = 'Ryan McGeary'
  s.email             = 'ryan@mcgeary.org'
  s.homepage          = 'http://ryan.mcgeary.org'
  s.rubyforge_project = 'strip_attributes'

  s.bindir             = 'bin'
end