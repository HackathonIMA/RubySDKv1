module ImaApiV1
  module Model
	  # 
	  class EmpenhoResponse < BaseObject
	    attr_accessor :links, :id, :codigo_funcao, :processo
	    # attribute mapping from ruby-style variable name to JSON key
	    def self.attribute_map
	      {
	        
	        # 
	        :'links' => :'links',
	        
	        # Identificador do registro.
	        :'id' => :'ID',
	        
	        # CÃ³digo da funcao
	        :'codigo_funcao' => :'codigoFuncao',
	        
	        # Procesos de compra
	        :'processo' => :'processo'
	        
	      }
	    end
	
	    # attribute type
	    def self.swagger_types
	      {
	        :'links' => :'array[LinksModel]',
	        :'id' => :'string',
	        :'codigo_funcao' => :'int',
	        :'processo' => :'string'
	        
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
	      
	      if attributes[:'codigoFuncao']
	        @codigo_funcao = attributes[:'codigoFuncao']
	      end
	      
	      if attributes[:'processo']
	        @processo = attributes[:'processo']
	      end
	      
	    end
	  end
	
	
  end
end
