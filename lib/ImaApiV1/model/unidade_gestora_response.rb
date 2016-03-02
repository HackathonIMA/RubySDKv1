module ImaApiV1
  module Model
	  # 
	  class UnidadeGestoraResponse < BaseObject
	    attr_accessor :links, :id, :descricao, :gestao
	    # attribute mapping from ruby-style variable name to JSON key
	    def self.attribute_map
	      {
	        
	        # 
	        :'links' => :'links',
	        
	        # Identificador do registro.
	        :'id' => :'ID',
	        
	        # DescriÃ§Ã£o da Unidade Gestora
	        :'descricao' => :'descricao',
	        
	        # DescriÃ§Ã£o do tipo de gestÃ£o  ou CÃ³digo do tipo de GestÃ£o
	        :'gestao' => :'gestao'
	        
	      }
	    end
	
	    # attribute type
	    def self.swagger_types
	      {
	        :'links' => :'array[LinksModel]',
	        :'id' => :'string',
	        :'descricao' => :'string',
	        :'gestao' => :'string'
	        
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
	      
	      if attributes[:'gestao']
	        @gestao = attributes[:'gestao']
	      end
	      
	    end
	  end
	
	
  end
end
