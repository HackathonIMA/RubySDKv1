module ImaApiV1
  module Model
	  # 
	  class FonteDetalhadaResponse < BaseObject
	    attr_accessor :id, :descricao, :codigo_grupo
	    # attribute mapping from ruby-style variable name to JSON key
	    def self.attribute_map
	      {
	        
	        # Identificador do registro.
	        :'id' => :'ID',
	        
	        # DescriÃ§Ã£o da fonte receita
	        :'descricao' => :'descricao',
	        
	        # cÃ³digo grupo fonte receita
	        :'codigo_grupo' => :'codigoGrupo'
	        
	      }
	    end
	
	    # attribute type
	    def self.swagger_types
	      {
	        :'id' => :'string',
	        :'descricao' => :'string',
	        :'codigo_grupo' => :'string'
	        
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
	      
	      if attributes[:'codigoGrupo']
	        @codigo_grupo = attributes[:'codigoGrupo']
	      end
	      
	    end
	  end
	
	
  end
end
