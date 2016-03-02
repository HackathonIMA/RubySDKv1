module ImaApiV1
  module Model
	  # 
	  class EducacaoResponse < BaseObject
	    attr_accessor :id, :ano, :codigo_regiao, :descricao_regiao, :escala_grupo, :regime, :nome_unidade_escolar, :bairro, :descricao
	    # attribute mapping from ruby-style variable name to JSON key
	    def self.attribute_map
	      {
	        
	        # Identificador do registro.
	        :'id' => :'ID',
	        
	        # Ano do registro.
	        :'ano' => :'ano',
	        
	        # CÃ³digo da regiÃ£o.
	        :'codigo_regiao' => :'codigoRegiao',
	        
	        # DescriÃ§Ã£o da regiÃ£o.
	        :'descricao_regiao' => :'descricaoRegiao',
	        
	        # CÃ³digo do grupo escolar.
	        :'escala_grupo' => :'escalaGrupo',
	        
	        # DescriÃ§Ã£o do regime escolar.
	        :'regime' => :'regime',
	        
	        # Nome da Unidade escolar.
	        :'nome_unidade_escolar' => :'nomeUnidadeEscolar',
	        
	        # Nome do bairro onde a unidade escolar se encontra.
	        :'bairro' => :'bairro',
	        
	        # DescriÃ§Ã£o da demanda.
	        :'descricao' => :'descricao'
	        
	      }
	    end
	
	    # attribute type
	    def self.swagger_types
	      {
	        :'id' => :'string',
	        :'ano' => :'int',
	        :'codigo_regiao' => :'int',
	        :'descricao_regiao' => :'string',
	        :'escala_grupo' => :'string',
	        :'regime' => :'string',
	        :'nome_unidade_escolar' => :'string',
	        :'bairro' => :'string',
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
	      
	      if attributes[:'ano']
	        @ano = attributes[:'ano']
	      end
	      
	      if attributes[:'codigoRegiao']
	        @codigo_regiao = attributes[:'codigoRegiao']
	      end
	      
	      if attributes[:'descricaoRegiao']
	        @descricao_regiao = attributes[:'descricaoRegiao']
	      end
	      
	      if attributes[:'escalaGrupo']
	        @escala_grupo = attributes[:'escalaGrupo']
	      end
	      
	      if attributes[:'regime']
	        @regime = attributes[:'regime']
	      end
	      
	      if attributes[:'nomeUnidadeEscolar']
	        @nome_unidade_escolar = attributes[:'nomeUnidadeEscolar']
	      end
	      
	      if attributes[:'bairro']
	        @bairro = attributes[:'bairro']
	      end
	      
	      if attributes[:'descricao']
	        @descricao = attributes[:'descricao']
	      end
	      
	    end
	  end
	
	
  end
end
