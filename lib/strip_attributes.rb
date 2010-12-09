module StripAttributes

  def self.included(klass)
    klass.send :extend, ClassMethods
    # sets up default of stripping for all fields
    klass.send :strip_attributes!
    klass.class_inheritable_reader :strip_attributes_options
    klass.send :include, InstanceMethods
  end

  module ClassMethods
    def strip_attributes!(options = {})
      write_inheritable_attribute(:strip_attributes_options, {
        :except => Array(options[:except] || []),
        :only => Array(options[:only] || [])
      })
    end
  end
  
  module InstanceMethods

    def strip_attributes!
      return if strip_attributes_options.nil?
      
      self.class.columns.each do |column|
        next unless (column.type == :string || column.type == :text)
        
        field = column.name.to_sym
        value = self[field]

        if !value.respond_to?(:strip)
          next
        elsif strip_attributes_options[:except].include?(field)
          next
        elsif strip_attributes_options[:only].any? && !strip_attributes_options[:only].include?(field)
          next
        else
          self[field] = (value.blank?) ? nil : value.strip
        end
      end
      
    end
  end
end
