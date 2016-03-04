module ImaApiV1
  module Model
	  # 
	  class ProtocoloResponse < BaseObject
	    attr_accessor :id, :codigo_regiao, :nome_regiao, :codigo_bairro, :nome_bairro, :codigo_expediente, :secretaria_expediente, :codigo_assunto, :descricao_assunto, :ano_processo, :ponto_cadastramento, :nome_ponto_cadastramento, :data_cadastro, :data_atendimento, :data_cancelamento
	    # attribute mapping from ruby-style variable name to JSON key
	    def self.attribute_map
	      {
	        
	        # Identificador do registro.
	        :'id' => :'ID',
	        
	        # CÃ³digo da regiÃ£o onde foi registrado o protocolo.
	        :'codigo_regiao' => :'codigoRegiao',
	        
	        # Nome da Ã¡rea onde a regiÃ£o se encontra. (Exemplo &gt; \&quot;NORTE\&quot;)
	        :'nome_regiao' => :'nomeRegiao',
	        
	        # CÃ³digo de bairro referente ao protocolo.
	        :'codigo_bairro' => :'codigoBairro',
	        
	        # Nome do bairro.
	        :'nome_bairro' => :'nomeBairro',
	        
	        # CÃ³digo do expediente emissor do protocolo.
	        :'codigo_expediente' => :'codigoExpediente',
	        
	        # DescriÃ§Ã£o da Secretaria expediente do protocolo.
	        :'secretaria_expediente' => :'secretariaExpediente',
	        
	        # CÃ³digo do assunto referente ao protocolo.
	        :'codigo_assunto' => :'codigoAssunto',
	        
	        # DescriÃ§Ã£o do assunto do protocolo.
	        :'descricao_assunto' => :'descricaoAssunto',
	        
	        # Ano em que o processo foi iniciado.
	        :'ano_processo' => :'anoProcesso',
	        
	        # CÃ³digo do ponto onde o protocolo foi cadastrado.
	        :'ponto_cadastramento' => :'pontoCadastramento',
	        
	        # Nome do ponto de cadastramento.
	        :'nome_ponto_cadastramento' => :'nomePontoCadastramento',
	        
	        # Data do cadastro do protocolo.
	        :'data_cadastro' => :'dataCadastro',
	        
	        # Data do atendimento.
	        :'data_atendimento' => :'dataAtendimento',
	        
	        # Data em que o protocolo foi cancelado.
	        :'data_cancelamento' => :'dataCancelamento'
	        
	      }
	    end
	
	    # attribute type
	    def self.swagger_types
	      {
	        :'id' => :'string',
	        :'codigo_regiao' => :'int',
	        :'nome_regiao' => :'string',
	        :'codigo_bairro' => :'int',
	        :'nome_bairro' => :'string',
	        :'codigo_expediente' => :'int',
	        :'secretaria_expediente' => :'string',
	        :'codigo_assunto' => :'int',
	        :'descricao_assunto' => :'string',
	        :'ano_processo' => :'int',
	        :'ponto_cadastramento' => :'int',
	        :'nome_ponto_cadastramento' => :'string',
	        :'data_cadastro' => :'DateTime',
	        :'data_atendimento' => :'DateTime',
	        :'data_cancelamento' => :'DateTime'
	        
	      }
	    end
	
	    def initialize(attributes = {})
	      return if !attributes.is_a?(Hash) || attributes.empty?
	
	      # convert string to symbol for hash key
	      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}
	
	      
	      if attributes[:'ID']
	        @id = attributes[:'ID']
	      end
	      
	      if attributes[:'codigoRegiao']
	        @codigo_regiao = attributes[:'codigoRegiao']
	      end
	      
	      if attributes[:'nomeRegiao']
	        @nome_regiao = attributes[:'nomeRegiao']
	      end
	      
	      if attributes[:'codigoBairro']
	        @codigo_bairro = attributes[:'codigoBairro']
	      end
	      
	      if attributes[:'nomeBairro']
	        @nome_bairro = attributes[:'nomeBairro']
	      end
	      
	      if attributes[:'codigoExpediente']
	        @codigo_expediente = attributes[:'codigoExpediente']
	      end
	      
	      if attributes[:'secretariaExpediente']
	        @secretaria_expediente = attributes[:'secretariaExpediente']
	      end
	      
	      if attributes[:'codigoAssunto']
	        @codigo_assunto = attributes[:'codigoAssunto']
	      end
	      
	      if attributes[:'descricaoAssunto']
	        @descricao_assunto = attributes[:'descricaoAssunto']
	      end
	      
	      if attributes[:'anoProcesso']
	        @ano_processo = attributes[:'anoProcesso']
	      end
	      
	      if attributes[:'pontoCadastramento']
	        @ponto_cadastramento = attributes[:'pontoCadastramento']
	      end
	      
	      if attributes[:'nomePontoCadastramento']
	        @nome_ponto_cadastramento = attributes[:'nomePontoCadastramento']
	      end
	      
	      if attributes[:'dataCadastro']
	        @data_cadastro = attributes[:'dataCadastro']
	      end
	      
	      if attributes[:'dataAtendimento']
	        @data_atendimento = attributes[:'dataAtendimento']
	      end
	      
	      if attributes[:'dataCancelamento']
	        @data_cancelamento = attributes[:'dataCancelamento']
	      end
	      
	    end
	  end
	
	
  end
end
