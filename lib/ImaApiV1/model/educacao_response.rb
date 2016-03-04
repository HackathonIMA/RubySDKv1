module ImaApiV1
  module Model
	  # 
	  class EducacaoResponse < BaseObject
	    attr_accessor :id, :ano, :codigo_regiao, :descricao_regiao, :escala_grupo, :regime, :nome_unidade_escolar, :bairro, :descricao, :endereco_escola_demanda, :logradouro_demanda, :municipio_demanda, :uf_demanda, :cep_demanda, :demanda
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
	        
	        # CÃ³digo do grupo escolar (AG1: 0~1,5 anos, AG2: 1,5~3 anos, AG3: 3 ~5 anos).
	        :'escala_grupo' => :'escalaGrupo',
	        
	        # DescriÃ§Ã£o do regime escolar.
	        :'regime' => :'regime',
	        
	        # Nome da Unidade escolar.
	        :'nome_unidade_escolar' => :'nomeUnidadeEscolar',
	        
	        # Nome do bairro onde a unidade escolar se encontra.
	        :'bairro' => :'bairro',
	        
	        # DescriÃ§Ã£o da demanda.
	        :'descricao' => :'descricao',
	        
	        # EndereÃ§o completo da unidade onde foi registrada a demanda.
	        :'endereco_escola_demanda' => :'endereco_escola_demanda',
	        
	        # Nome do logradouro da unidade onde foi registrada a demanda.
	        :'logradouro_demanda' => :'logradouro_demanda',
	        
	        # Nome do municÃ­pio da unidade onde foi registrada a demanda. (sempre Campinas)
	        :'municipio_demanda' => :'municipio_demanda',
	        
	        # Sigla da unidade federativa do cadastro da demanda (sempre SP)
	        :'uf_demanda' => :'uf_demanda',
	        
	        # CEP registrado do endereÃ§o da unidade onde foi registrada a demanda.
	        :'cep_demanda' => :'cep_demanda',
	        
	        # Quantidade total do registro da demanda. Cada registro do webservice traz a tipificaÃ§Ã£o da demanda e este campo mostra os valores consolidados totais para a demanda.
	        :'demanda' => :'demanda'
	        
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
	        :'descricao' => :'string',
	        :'endereco_escola_demanda' => :'string',
	        :'logradouro_demanda' => :'string',
	        :'municipio_demanda' => :'string',
	        :'uf_demanda' => :'string',
	        :'cep_demanda' => :'string',
	        :'demanda' => :'string'
	        
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
	      
	      if attributes[:'endereco_escola_demanda']
	        @endereco_escola_demanda = attributes[:'endereco_escola_demanda']
	      end
	      
	      if attributes[:'logradouro_demanda']
	        @logradouro_demanda = attributes[:'logradouro_demanda']
	      end
	      
	      if attributes[:'municipio_demanda']
	        @municipio_demanda = attributes[:'municipio_demanda']
	      end
	      
	      if attributes[:'uf_demanda']
	        @uf_demanda = attributes[:'uf_demanda']
	      end
	      
	      if attributes[:'cep_demanda']
	        @cep_demanda = attributes[:'cep_demanda']
	      end
	      
	      if attributes[:'demanda']
	        @demanda = attributes[:'demanda']
	      end
	      
	    end
	  end
	
	
  end
end
