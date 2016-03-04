module ImaApiV1
  module Model
	  # 
	  class SolicitacaoResponse < BaseObject
	    attr_accessor :id, :nome_regional, :codigo_regiao, :nome_regiao, :secretaria, :codigo_bairro, :nome_bairro, :codigo_assunto, :descricao_assunto, :ano_solicitacao, :tipo_solicitacao, :descricao_tipo_solicitacao, :status_solicitacao, :descricao_status, :data_cadastro, :data_previsao_resposta, :data_atendimento, :data_conclusao, :cep, :tipo_logradouro, :nome_logradouro, :data_providencia
	    # attribute mapping from ruby-style variable name to JSON key
	    def self.attribute_map
	      {
	        
	        # Identificador do registro.
	        :'id' => :'ID',
	        
	        # Nome da administraÃ§Ã£o regional.
	        :'nome_regional' => :'nomeRegional',
	        
	        # CÃ³digo da regiÃ£o.
	        :'codigo_regiao' => :'codigoRegiao',
	        
	        # Nome / DescriÃ§Ã£o da regiÃ£o.
	        :'nome_regiao' => :'nomeRegiao',
	        
	        # Nome da secretÃ¡ria.
	        :'secretaria' => :'secretaria',
	        
	        # CÃ³digo da bairro.
	        :'codigo_bairro' => :'codigoBairro',
	        
	        # Nome do bairro.
	        :'nome_bairro' => :'nomeBairro',
	        
	        # CÃ³digo do assunto da solicitaÃ§Ã£o.
	        :'codigo_assunto' => :'codigoAssunto',
	        
	        # DescriÃ§Ã£o do assunto da solicitaÃ§Ã£o.
	        :'descricao_assunto' => :'descricaoAssunto',
	        
	        # Ano em que a solicitaÃ§Ã£o ocorreu.
	        :'ano_solicitacao' => :'anoSolicitacao',
	        
	        # CÃ³digo referente ao tipo de solicitaÃ§Ã£o.
	        :'tipo_solicitacao' => :'tipoSolicitacao',
	        
	        # DescriÃ§Ã£o do tipo de solicitaÃ§Ã£o realizada.
	        :'descricao_tipo_solicitacao' => :'descricaoTipoSolicitacao',
	        
	        # CÃ³digo do status da solicitaÃ§Ã£o.
	        :'status_solicitacao' => :'statusSolicitacao',
	        
	        # DescriÃ§Ã£o do status.
	        :'descricao_status' => :'descricaoStatus',
	        
	        # Data do cadastramento da solicitaÃ§Ã£o.
	        :'data_cadastro' => :'dataCadastro',
	        
	        # Data da previsÃ£o de resposta da solicitaÃ§Ã£o depois de executada.
	        :'data_previsao_resposta' => :'dataPrevisaoResposta',
	        
	        # Data em que o atendimento ocorreu
	        :'data_atendimento' => :'dataAtendimento',
	        
	        # Data em que a solicitaÃ§Ã£o foi concluÃ­da.
	        :'data_conclusao' => :'dataConclusao',
	        
	        # CEP
	        :'cep' => :'cep',
	        
	        # Tipo de logradouro (Exemplo &gt; Rua, Avenida, etc.)
	        :'tipo_logradouro' => :'tipoLogradouro',
	        
	        # Nome da rua / logradouro.
	        :'nome_logradouro' => :'nomeLogradouro',
	        
	        # Data da providÃªncia
	        :'data_providencia' => :'dataProvidencia'
	        
	      }
	    end
	
	    # attribute type
	    def self.swagger_types
	      {
	        :'id' => :'string',
	        :'nome_regional' => :'string',
	        :'codigo_regiao' => :'string',
	        :'nome_regiao' => :'string',
	        :'secretaria' => :'string',
	        :'codigo_bairro' => :'int',
	        :'nome_bairro' => :'string',
	        :'codigo_assunto' => :'int',
	        :'descricao_assunto' => :'string',
	        :'ano_solicitacao' => :'int',
	        :'tipo_solicitacao' => :'int',
	        :'descricao_tipo_solicitacao' => :'string',
	        :'status_solicitacao' => :'int',
	        :'descricao_status' => :'string',
	        :'data_cadastro' => :'date',
	        :'data_previsao_resposta' => :'date',
	        :'data_atendimento' => :'date',
	        :'data_conclusao' => :'date',
	        :'cep' => :'string',
	        :'tipo_logradouro' => :'string',
	        :'nome_logradouro' => :'string',
	        :'data_providencia' => :'date'
	        
	      }
	    end
	
	    def initialize(attributes = {})
	      return if !attributes.is_a?(Hash) || attributes.empty?
	
	      # convert string to symbol for hash key
	      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}
	
	      
	      if attributes[:'ID']
	        @id = attributes[:'ID']
	      end
	      
	      if attributes[:'nomeRegional']
	        @nome_regional = attributes[:'nomeRegional']
	      end
	      
	      if attributes[:'codigoRegiao']
	        @codigo_regiao = attributes[:'codigoRegiao']
	      end
	      
	      if attributes[:'nomeRegiao']
	        @nome_regiao = attributes[:'nomeRegiao']
	      end
	      
	      if attributes[:'secretaria']
	        @secretaria = attributes[:'secretaria']
	      end
	      
	      if attributes[:'codigoBairro']
	        @codigo_bairro = attributes[:'codigoBairro']
	      end
	      
	      if attributes[:'nomeBairro']
	        @nome_bairro = attributes[:'nomeBairro']
	      end
	      
	      if attributes[:'codigoAssunto']
	        @codigo_assunto = attributes[:'codigoAssunto']
	      end
	      
	      if attributes[:'descricaoAssunto']
	        @descricao_assunto = attributes[:'descricaoAssunto']
	      end
	      
	      if attributes[:'anoSolicitacao']
	        @ano_solicitacao = attributes[:'anoSolicitacao']
	      end
	      
	      if attributes[:'tipoSolicitacao']
	        @tipo_solicitacao = attributes[:'tipoSolicitacao']
	      end
	      
	      if attributes[:'descricaoTipoSolicitacao']
	        @descricao_tipo_solicitacao = attributes[:'descricaoTipoSolicitacao']
	      end
	      
	      if attributes[:'statusSolicitacao']
	        @status_solicitacao = attributes[:'statusSolicitacao']
	      end
	      
	      if attributes[:'descricaoStatus']
	        @descricao_status = attributes[:'descricaoStatus']
	      end
	      
	      if attributes[:'dataCadastro']
	        @data_cadastro = attributes[:'dataCadastro']
	      end
	      
	      if attributes[:'dataPrevisaoResposta']
	        @data_previsao_resposta = attributes[:'dataPrevisaoResposta']
	      end
	      
	      if attributes[:'dataAtendimento']
	        @data_atendimento = attributes[:'dataAtendimento']
	      end
	      
	      if attributes[:'dataConclusao']
	        @data_conclusao = attributes[:'dataConclusao']
	      end
	      
	      if attributes[:'cep']
	        @cep = attributes[:'cep']
	      end
	      
	      if attributes[:'tipoLogradouro']
	        @tipo_logradouro = attributes[:'tipoLogradouro']
	      end
	      
	      if attributes[:'nomeLogradouro']
	        @nome_logradouro = attributes[:'nomeLogradouro']
	      end
	      
	      if attributes[:'dataProvidencia']
	        @data_providencia = attributes[:'dataProvidencia']
	      end
	      
	    end
	  end
	
	
  end
end
