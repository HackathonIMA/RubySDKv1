module ImaApiV1
  module Model
	  # 
	  class ElementoDespesaResponse < BaseObject
	    attr_accessor :id, :descricao
	    # attribute mapping from ruby-style variable name to JSON key
	    def self.attribute_map
	      {
	        
	        # Identificador do registro.
	        :'id' => :'ID',
	        
	        # descriÃ§Ã£o do elemento de despesa
	        :'descricao' => :'descricao'
	        
	      }
	    end
	
	    # attribute type
	    def self.swagger_types
	      {
	        :'id' => :'string',
	        :'descricao' => :'string'
	        
	      }
	    end
	
	    def initialize(attributes = {})
	      return if !attributes.is_a?(Hash) || attributes.empty?
	
	      # convert string to symbol for hash key
	      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}
	
	      
	      if attributes[:'ID']
	        @id = attributes[:'ID']
	      end
	      
	      if attributes[:'descricao']
	        @descricao = attributes[:'descricao']
	      end
	      
	    end
	  end
	
	
  end
end
