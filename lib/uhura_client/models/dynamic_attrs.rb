# frozen_string_literal: true

module UhuraClient
  class DynamicAttrs
    def create_method(name, &block)
      self.class.send(:define_method, name, &block)
    end

    def create_attr(name)
      create_method( "#{name}=".to_sym ) { |val|
        instance_variable_set( "@#{name}", val)
      }
      create_method(name.to_sym) {
        instance_variable_get("@#{name}")
      }
    end
  end
end
