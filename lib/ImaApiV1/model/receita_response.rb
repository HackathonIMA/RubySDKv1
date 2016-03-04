module ImaApiV1
  module Model
	  # 
	  class ReceitaResponse < BaseObject
	    attr_accessor :links, :id, :ano_mes_emissao, :codigo_origem_recurso, :valor_previsao, :valor_previsao_inicial, :valor_previsao_adicional, :valor_previsao_deducao, :valor_previsao_anulacao, :valor_realizado, :valor_realizado_deduzido, :valor_a_realizar, :valor_a_realizar_deduzido, :valor_previsao_acrescimo, :valor_previsao_inicial_acrescimo, :valor_previsao_adicional_acrescimo, :valor_previsao_deducao_acrescimo, :valor_previsao_anulacao_acrescimo, :valor_realizado_acrescimo, :valor_realizado_deduzido_acrescimo, :valor_a_realizar_acrescimo, :valor_a_realizar_deduzido_acrescimo
	    # attribute mapping from ruby-style variable name to JSON key
	    def self.attribute_map
	      {
	        
	        # 
	        :'links' => :'links',
	        
	        # Identificador do registro.
	        :'id' => :'ID',
	        
	        # Ano e MÃªs da EmissÃ£o de Receita
	        :'ano_mes_emissao' => :'anoMesEmissao',
	        
	        # CÃ³digo da Origem do Recurso
	        :'codigo_origem_recurso' => :'codigoOrigemRecurso',
	        
	        # Valor Prevista da receita
	        :'valor_previsao' => :'valorPrevisao',
	        
	        # Valor de previsÃ£o inicial da Receita
	        :'valor_previsao_inicial' => :'valorPrevisaoInicial',
	        
	        # Valor de previsÃ£o adicicional da receita
	        :'valor_previsao_adicional' => :'valorPrevisaoAdicional',
	        
	        # Valor de DeduÃ§Ã£o previsto da receita
	        :'valor_previsao_deducao' => :'valorPrevisaoDeducao',
	        
	        # valor de AnulaÃ§Ã£o previsto da receita
	        :'valor_previsao_anulacao' => :'valorPrevisaoAnulacao',
	        
	        # Valor Realizado da receita
	        :'valor_realizado' => :'valorRealizado',
	        
	        # Valor Realizado Deduzido da Receita
	        :'valor_realizado_deduzido' => :'valorRealizadoDeduzido',
	        
	        # Valor a Realizar da Receita
	        :'valor_a_realizar' => :'valorARealizar',
	        
	        # Valor a Realizar deduzido da Receita
	        :'valor_a_realizar_deduzido' => :'valorARealizarDeduzido',
	        
	        # Valor de AcrÃ©scimo previsto da receita
	        :'valor_previsao_acrescimo' => :'valorPrevisaoAcrescimo',
	        
	        # Valor de acrÃ©scimo previsto inicialmente da receita
	        :'valor_previsao_inicial_acrescimo' => :'valorPrevisaoInicialAcrescimo',
	        
	        # Valor de AcrÃ©cimo Adicional previsto da receita
	        :'valor_previsao_adicional_acrescimo' => :'valorPrevisaoAdicionalAcrescimo',
	        
	        # Valor de AcrÃ©scimo deduzido previsto da receita
	        :'valor_previsao_deducao_acrescimo' => :'valorPrevisaoDeducaoAcrescimo',
	        
	        # Valor de Acrescimo anulado previsto da receita
	        :'valor_previsao_anulacao_acrescimo' => :'valorPrevisaoAnulacaoAcrescimo',
	        
	        # Valor de Acrescimo realizado da receita
	        :'valor_realizado_acrescimo' => :'valorRealizadoAcrescimo',
	        
	        # Valor de Acrescimo deduzido realizado da receita
	        :'valor_realizado_deduzido_acrescimo' => :'valorRealizadoDeduzidoAcrescimo',
	        
	        # Valor de Acrescimo a realizar da receita
	        :'valor_a_realizar_acrescimo' => :'valorARealizarAcrescimo',
	        
	        # Valor de Acrescimo deduzido a realizar da receita
	        :'valor_a_realizar_deduzido_acrescimo' => :'valorARealizarDeduzidoAcrescimo'
	        
	      }
	    end
	
	    # attribute type
	    def self.swagger_types
	      {
	        :'links' => :'array[LinksModel]',
	        :'id' => :'string',
	        :'ano_mes_emissao' => :'int',
	        :'codigo_origem_recurso' => :'string',
	        :'valor_previsao' => :'string',
	        :'valor_previsao_inicial' => :'string',
	        :'valor_previsao_adicional' => :'string',
	        :'valor_previsao_deducao' => :'string',
	        :'valor_previsao_anulacao' => :'string',
	        :'valor_realizado' => :'string',
	        :'valor_realizado_deduzido' => :'string',
	        :'valor_a_realizar' => :'string',
	        :'valor_a_realizar_deduzido' => :'string',
	        :'valor_previsao_acrescimo' => :'string',
	        :'valor_previsao_inicial_acrescimo' => :'string',
	        :'valor_previsao_adicional_acrescimo' => :'string',
	        :'valor_previsao_deducao_acrescimo' => :'string',
	        :'valor_previsao_anulacao_acrescimo' => :'string',
	        :'valor_realizado_acrescimo' => :'string',
	        :'valor_realizado_deduzido_acrescimo' => :'string',
	        :'valor_a_realizar_acrescimo' => :'string',
	        :'valor_a_realizar_deduzido_acrescimo' => :'string'
	        
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
	      
	      if attributes[:'anoMesEmissao']
	        @ano_mes_emissao = attributes[:'anoMesEmissao']
	      end
	      
	      if attributes[:'codigoOrigemRecurso']
	        @codigo_origem_recurso = attributes[:'codigoOrigemRecurso']
	      end
	      
	      if attributes[:'valorPrevisao']
	        @valor_previsao = attributes[:'valorPrevisao']
	      end
	      
	      if attributes[:'valorPrevisaoInicial']
	        @valor_previsao_inicial = attributes[:'valorPrevisaoInicial']
	      end
	      
	      if attributes[:'valorPrevisaoAdicional']
	        @valor_previsao_adicional = attributes[:'valorPrevisaoAdicional']
	      end
	      
	      if attributes[:'valorPrevisaoDeducao']
	        @valor_previsao_deducao = attributes[:'valorPrevisaoDeducao']
	      end
	      
	      if attributes[:'valorPrevisaoAnulacao']
	        @valor_previsao_anulacao = attributes[:'valorPrevisaoAnulacao']
	      end
	      
	      if attributes[:'valorRealizado']
	        @valor_realizado = attributes[:'valorRealizado']
	      end
	      
	      if attributes[:'valorRealizadoDeduzido']
	        @valor_realizado_deduzido = attributes[:'valorRealizadoDeduzido']
	      end
	      
	      if attributes[:'valorARealizar']
	        @valor_a_realizar = attributes[:'valorARealizar']
	      end
	      
	      if attributes[:'valorARealizarDeduzido']
	        @valor_a_realizar_deduzido = attributes[:'valorARealizarDeduzido']
	      end
	      
	      if attributes[:'valorPrevisaoAcrescimo']
	        @valor_previsao_acrescimo = attributes[:'valorPrevisaoAcrescimo']
	      end
	      
	      if attributes[:'valorPrevisaoInicialAcrescimo']
	        @valor_previsao_inicial_acrescimo = attributes[:'valorPrevisaoInicialAcrescimo']
	      end
	      
	      if attributes[:'valorPrevisaoAdicionalAcrescimo']
	        @valor_previsao_adicional_acrescimo = attributes[:'valorPrevisaoAdicionalAcrescimo']
	      end
	      
	      if attributes[:'valorPrevisaoDeducaoAcrescimo']
	        @valor_previsao_deducao_acrescimo = attributes[:'valorPrevisaoDeducaoAcrescimo']
	      end
	      
	      if attributes[:'valorPrevisaoAnulacaoAcrescimo']
	        @valor_previsao_anulacao_acrescimo = attributes[:'valorPrevisaoAnulacaoAcrescimo']
	      end
	      
	      if attributes[:'valorRealizadoAcrescimo']
	        @valor_realizado_acrescimo = attributes[:'valorRealizadoAcrescimo']
	      end
	      
	      if attributes[:'valorRealizadoDeduzidoAcrescimo']
	        @valor_realizado_deduzido_acrescimo = attributes[:'valorRealizadoDeduzidoAcrescimo']
	      end
	      
	      if attributes[:'valorARealizarAcrescimo']
	        @valor_a_realizar_acrescimo = attributes[:'valorARealizarAcrescimo']
	      end
	      
	      if attributes[:'valorARealizarDeduzidoAcrescimo']
	        @valor_a_realizar_deduzido_acrescimo = attributes[:'valorARealizarDeduzidoAcrescimo']
	      end
	      
	    end
	  end
	
	
  end
end
