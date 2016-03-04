module ImaApiV1
  module Model
	  # 
	  class CredorResponse < BaseObject
	    attr_accessor :links, :id, :descricao, :municipio_descricao
	    # attribute mapping from ruby-style variable name to JSON key
	    def self.attribute_map
	      {
	        
	        # 
	        :'links' => :'links',
	        
	        # Identificador do registro.
	        :'id' => :'ID',
	        
	        # Descricao do credor
	        :'descricao' => :'descricao',
	        
	        # Municipio do credor
	        :'municipio_descricao' => :'municipioDescricao'
	        
	      }
	    end
	
	    # attribute type
	    def self.swagger_types
	      {
	        :'links' => :'array[LinksModel]',
	        :'id' => :'string',
	        :'descricao' => :'string',
	        :'municipio_descricao' => :'string'
	        
	      }
	    end
	
	    def initialize(attributes = {})
	      return if !attributes.is_a?(Hash) || attributes.empty?
	
	      # convert string to symbol for hash key
	      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}
	
	      
	      if attributes[:'links']
	        if (value = attributes[:'links']).is_a?(Array)
	          @links = value
	        end
	      end
	      
	      if attributes[:'ID']
	        @id = attributes[:'ID']
	      end
	      
	      if attributes[:'descricao']
	        @descricao = attributes[:'descricao']
	      end
	      
	      if attributes[:'municipioDescricao']
	        @municipio_descricao = attributes[:'municipioDescricao']
	      end
	      
	    end
	  end
	
	
  end
end
