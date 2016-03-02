module ImaApiV1
  module Model
	  # 
	  class SaudeResponse < BaseObject
	    attr_accessor :id, :distrito_vinculo, :municipio, :uf, :local_atendimento, :distrito_atendimento, :data_atendimento, :codigo_tipo_atendimento, :descricao_tipo_atendimento, :descricao_grupo_atendimento, :codigo_grupo_atendimento_sus, :ocupacao_profissional, :descricao_tipo_vinculo_sms, :codigo_procedimento_sus, :descricao_procedimento, :codigo_atividade_profissional_sus, :descricao_atividade_profissional, :sexo, :idade, :hora, :periodo, :data_nascimento, :quantidade_realizada
	    # attribute mapping from ruby-style variable name to JSON key
	    def self.attribute_map
	      {
	        
	        # Identificador do registro.
	        :'id' => :'ID',
	        
	        # Distrito onde o antendimento foi realizado.
	        :'distrito_vinculo' => :'distritoVinculo',
	        
	        # Nome do municÃ­pio
	        :'municipio' => :'municipio',
	        
	        # IndicaÃ§Ã£o da unidade federal.
	        :'uf' => :'uf',
	        
	        # Nome do local onde o atendimento foi feito.
	        :'local_atendimento' => :'localAtendimento',
	        
	        # Indicacao do distrito onde o atendimento ocorreu.
	        :'distrito_atendimento' => :'distritoAtendimento',
	        
	        # Data e hora que o atendimento ocorreu.
	        :'data_atendimento' => :'dataAtendimento',
	        
	        # CÃ³digo do tipo de atendimento.
	        :'codigo_tipo_atendimento' => :'codigoTipoAtendimento',
	        
	        # Descricao do tipo de atendimento.
	        :'descricao_tipo_atendimento' => :'descricaoTipoAtendimento',
	        
	        # DescriÃ§Ã£o do grupo de atendimento.
	        :'descricao_grupo_atendimento' => :'descricaoGrupoAtendimento',
	        
	        # CÃ³digo do grupo de atendimento vinculado ao SUS.
	        :'codigo_grupo_atendimento_sus' => :'codigoGrupoAtendimentoSUS',
	        
	        # Descricao formal da ocupaÃ§Ã£o do profissional.
	        :'ocupacao_profissional' => :'ocupacaoProfissional',
	        
	        # DescriÃ§Ã£o do tipo de vinculo com a Secretaria Municipal de SaÃºde.
	        :'descricao_tipo_vinculo_sms' => :'descricaoTipoVinculoSMS',
	        
	        # CÃ³digo do procedimento realizado pelo SUS
	        :'codigo_procedimento_sus' => :'codigoProcedimentoSUS',
	        
	        # Descricao do procedimento.
	        :'descricao_procedimento' => :'descricaoProcedimento',
	        
	        # CÃ³digo do profissional SUS.
	        :'codigo_atividade_profissional_sus' => :'codigoAtividadeProfissionalSUS',
	        
	        # IndicaÃ§Ã£o da profissÃ£o do atendente.
	        :'descricao_atividade_profissional' => :'descricaoAtividadeProfissional',
	        
	        # DescriÃ§Ã£o do sexo. (&#39;MASCULINO&#39; ou &#39;FEMININO&#39;)
	        :'sexo' => :'sexo',
	        
	        # IndicaÃ§Ã£o da idade.
	        :'idade' => :'idade',
	        
	        # IndicaÃ§Ã£o da hora da ocorrÃªncia.
	        :'hora' => :'hora',
	        
	        # Descricao do periodo (Exemplo &gt; MANHA)
	        :'periodo' => :'periodo',
	        
	        # Data de nascimento do profissional.
	        :'data_nascimento' => :'dataNascimento',
	        
	        # Quantidade de atendimento realizados.
	        :'quantidade_realizada' => :'quantidadeRealizada'
	        
	      }
	    end
	
	    # attribute type
	    def self.swagger_types
	      {
	        :'id' => :'string',
	        :'distrito_vinculo' => :'string',
	        :'municipio' => :'string',
	        :'uf' => :'string',
	        :'local_atendimento' => :'string',
	        :'distrito_atendimento' => :'string',
	        :'data_atendimento' => :'DateTime',
	        :'codigo_tipo_atendimento' => :'int',
	        :'descricao_tipo_atendimento' => :'string',
	        :'descricao_grupo_atendimento' => :'string',
	        :'codigo_grupo_atendimento_sus' => :'int',
	        :'ocupacao_profissional' => :'string',
	        :'descricao_tipo_vinculo_sms' => :'string',
	        :'codigo_procedimento_sus' => :'int',
	        :'descricao_procedimento' => :'string',
	        :'codigo_atividade_profissional_sus' => :'int',
	        :'descricao_atividade_profissional' => :'string',
	        :'sexo' => :'string',
	        :'idade' => :'string',
	        :'hora' => :'string',
	        :'periodo' => :'string',
	        :'data_nascimento' => :'DateTime',
	        :'quantidade_realizada' => :'int'
	        
	      }
	    end
	
	    def initialize(attributes = {})
	      return if !attributes.is_a?(Hash) || attributes.empty?
	
	      # convert string to symbol for hash key
	      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}
	
	      
	      if attributes[:'ID']
	        @id = attributes[:'ID']
	      end
	      
	      if attributes[:'distritoVinculo']
	        @distrito_vinculo = attributes[:'distritoVinculo']
	      end
	      
	      if attributes[:'municipio']
	        @municipio = attributes[:'municipio']
	      end
	      
	      if attributes[:'uf']
	        @uf = attributes[:'uf']
	      end
	      
	      if attributes[:'localAtendimento']
	        @local_atendimento = attributes[:'localAtendimento']
	      end
	      
	      if attributes[:'distritoAtendimento']
	        @distrito_atendimento = attributes[:'distritoAtendimento']
	      end
	      
	      if attributes[:'dataAtendimento']
	        @data_atendimento = attributes[:'dataAtendimento']
	      end
	      
	      if attributes[:'codigoTipoAtendimento']
	        @codigo_tipo_atendimento = attributes[:'codigoTipoAtendimento']
	      end
	      
	      if attributes[:'descricaoTipoAtendimento']
	        @descricao_tipo_atendimento = attributes[:'descricaoTipoAtendimento']
	      end
	      
	      if attributes[:'descricaoGrupoAtendimento']
	        @descricao_grupo_atendimento = attributes[:'descricaoGrupoAtendimento']
	      end
	      
	      if attributes[:'codigoGrupoAtendimentoSUS']
	        @codigo_grupo_atendimento_sus = attributes[:'codigoGrupoAtendimentoSUS']
	      end
	      
	      if attributes[:'ocupacaoProfissional']
	        @ocupacao_profissional = attributes[:'ocupacaoProfissional']
	      end
	      
	      if attributes[:'descricaoTipoVinculoSMS']
	        @descricao_tipo_vinculo_sms = attributes[:'descricaoTipoVinculoSMS']
	      end
	      
	      if attributes[:'codigoProcedimentoSUS']
	        @codigo_procedimento_sus = attributes[:'codigoProcedimentoSUS']
	      end
	      
	      if attributes[:'descricaoProcedimento']
	        @descricao_procedimento = attributes[:'descricaoProcedimento']
	      end
	      
	      if attributes[:'codigoAtividadeProfissionalSUS']
	        @codigo_atividade_profissional_sus = attributes[:'codigoAtividadeProfissionalSUS']
	      end
	      
	      if attributes[:'descricaoAtividadeProfissional']
	        @descricao_atividade_profissional = attributes[:'descricaoAtividadeProfissional']
	      end
	      
	      if attributes[:'sexo']
	        @sexo = attributes[:'sexo']
	      end
	      
	      if attributes[:'idade']
	        @idade = attributes[:'idade']
	      end
	      
	      if attributes[:'hora']
	        @hora = attributes[:'hora']
	      end
	      
	      if attributes[:'periodo']
	        @periodo = attributes[:'periodo']
	      end
	      
	      if attributes[:'dataNascimento']
	        @data_nascimento = attributes[:'dataNascimento']
	      end
	      
	      if attributes[:'quantidadeRealizada']
	        @quantidade_realizada = attributes[:'quantidadeRealizada']
	      end
	      
	    end
	  end
	
	
  end
end
