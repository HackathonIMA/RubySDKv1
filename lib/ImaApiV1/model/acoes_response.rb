module ImaApiV1
  module Model
	  # 
	  class AcoesResponse < BaseObject
	    attr_accessor :id, :nome, :descricao, :numero
	    # attribute mapping from ruby-style variable name to JSON key
	    def self.attribute_map
	      {
	        
	        # Identificador do registro.
	        :'id' => :'ID',
	        
	        # Nome da aÃ§Ã£o
	        :'nome' => :'nome',
	        
	        # DescriÃ§Ã£o da aÃ§Ã£o
	        :'descricao' => :'descricao',
	        
	        # Numero da aÃ§Ã£o
	        :'numero' => :'numero'
	        
	      }
	    end
	
	    # attribute type
	    def self.swagger_types
	      {
	        :'id' => :'string',
	        :'nome' => :'string',
	        :'descricao' => :'int',
	        :'numero' => :'string'
	        
	      }
	    end
	
	    def initialize(attributes = {})
	      return if !attributes.is_a?(Hash) || attributes.empty?
	
	      # convert string to symbol for hash key
	      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}
	
	      
	      if attributes[:'ID']
	        @id = attributes[:'ID']
	      end
	      
	      if attributes[:'nome']
	        @nome = attributes[:'nome']
	      end
	      
	      if attributes[:'descricao']
	        @descricao = attributes[:'descricao']
	      end
	      
	      if attributes[:'numero']
	        @numero = attributes[:'numero']
	      end
	      
	    end
	  end
	
	
  end
end
