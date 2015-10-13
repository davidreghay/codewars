class Typer
  
  instance_eval do
  
    def is_number?(ob)
      ob.is_a?(Numeric)
    end
    
    def is_boolean?(ob)
      ob.is_a?(TrueClass) || ob.is_a?(FalseClass)
    end
    
    def is_array?(ob)
      ob.is_a?(Array)
    end
    
    def is_time?(ob)
      ob.is_a?(Time)
    end
    
    def is_regexp?(ob)
      ob.is_a?(Regexp)
    end
    
    def is_nil?(ob)
      ob.is_a?(NilClass)
    end
    
    def is_string?(ob)
      ob.is_a?(String)
    end
    
    def is_exception?(ob)
      ob.is_a?(Exception)
    end
    
  end
  
end
