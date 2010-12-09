require 'strip_attributes'
ActiveRecord::Base.send :include, StripAttributes
ActiveRecord::Base.before_validation :strip_attributes!
