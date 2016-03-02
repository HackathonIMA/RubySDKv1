module ImaApiV1
  module Model
	  # 
	  class DespesasResponse < BaseObject
	    attr_accessor :links, :id, :ano_mes_emissao, :dia_lancamento, :dia_vencimento, :nota_empenho, :processo_descricao, :valor_empenho, :valor_liquidado, :valor_a_liquidar, :valor_pago, :valor_a_pagar, :valor_acrescimo_empenho, :valor_acrescimo_liquidado, :valor_acrescimo_a_liquidar, :valor_acrescimo_pago, :valor_acrescimo_a_pagar
	    # attribute mapping from ruby-style variable name to JSON key
	    def self.attribute_map
	      {
	        
	        # 
	        :'links' => :'links',
	        
	        # Identificador do registro.
	        :'id' => :'ID',
	        
	        # Ano e MÃªs da EmissÃ£o da Nota de Empenho
	        :'ano_mes_emissao' => :'anoMesEmissao',
	        
	        # Ano , Mes e Dia do LanÃ§amento da Nota de Empenho
	        :'dia_lancamento' => :'diaLancamento',
	        
	        # Ano , Mes e Dia do Vencimento da Nota de Empenho
	        :'dia_vencimento' => :'diaVencimento',
	        
	        # Numero da Nota de Empenho
	        :'nota_empenho' => :'notaEmpenho',
	        
	        # Numero do Processo de Compra
	        :'processo_descricao' => :'processoDescricao',
	        
	        # Valor Empenhado
	        :'valor_empenho' => :'valorEmpenho',
	        
	        # Valor Liquidado
	        :'valor_liquidado' => :'valorLiquidado',
	        
	        # Valor a Liquidar
	        :'valor_a_liquidar' => :'valorALiquidar',
	        
	        # Valor Pago
	        :'valor_pago' => :'valorPago',
	        
	        # Valor a Pagar
	        :'valor_a_pagar' => :'valorAPagar',
	        
	        # Valor de AcrÃ©scimo do Empenho
	        :'valor_acrescimo_empenho' => :'valorAcrescimoEmpenho',
	        
	        # Valor de AcrÃ©scimo Liquidado
	        :'valor_acrescimo_liquidado' => :'valorAcrescimoLiquidado',
	        
	        # Valor de AcrÃ©scimo a Liquidar
	        :'valor_acrescimo_a_liquidar' => :'valorAcrescimoALiquidar',
	        
	        # Valor de AcrÃ©cimo Pago
	        :'valor_acrescimo_pago' => :'valorAcrescimoPago',
	        
	        # Valor de AcrÃ©scimo a Pagar
	        :'valor_acrescimo_a_pagar' => :'valorAcrescimoAPagar'
	        
	      }
	    end
	
	    # attribute type
	    def self.swagger_types
	      {
	        :'links' => :'array[LinksModel]',
	        :'id' => :'string',
	        :'ano_mes_emissao' => :'int',
	        :'dia_lancamento' => :'int',
	        :'dia_vencimento' => :'int',
	        :'nota_empenho' => :'string',
	        :'processo_descricao' => :'string',
	        :'valor_empenho' => :'int',
	        :'valor_liquidado' => :'int',
	        :'valor_a_liquidar' => :'int',
	        :'valor_pago' => :'int',
	        :'valor_a_pagar' => :'int',
	        :'valor_acrescimo_empenho' => :'int',
	        :'valor_acrescimo_liquidado' => :'int',
	        :'valor_acrescimo_a_liquidar' => :'int',
	        :'valor_acrescimo_pago' => :'int',
	        :'valor_acrescimo_a_pagar' => :'int'
	        
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
	      
	      if attributes[:'diaLancamento']
	        @dia_lancamento = attributes[:'diaLancamento']
	      end
	      
	      if attributes[:'diaVencimento']
	        @dia_vencimento = attributes[:'diaVencimento']
	      end
	      
	      if attributes[:'notaEmpenho']
	        @nota_empenho = attributes[:'notaEmpenho']
	      end
	      
	      if attributes[:'processoDescricao']
	        @processo_descricao = attributes[:'processoDescricao']
	      end
	      
	      if attributes[:'valorEmpenho']
	        @valor_empenho = attributes[:'valorEmpenho']
	      end
	      
	      if attributes[:'valorLiquidado']
	        @valor_liquidado = attributes[:'valorLiquidado']
	      end
	      
	      if attributes[:'valorALiquidar']
	        @valor_a_liquidar = attributes[:'valorALiquidar']
	      end
	      
	      if attributes[:'valorPago']
	        @valor_pago = attributes[:'valorPago']
	      end
	      
	      if attributes[:'valorAPagar']
	        @valor_a_pagar = attributes[:'valorAPagar']
	      end
	      
	      if attributes[:'valorAcrescimoEmpenho']
	        @valor_acrescimo_empenho = attributes[:'valorAcrescimoEmpenho']
	      end
	      
	      if attributes[:'valorAcrescimoLiquidado']
	        @valor_acrescimo_liquidado = attributes[:'valorAcrescimoLiquidado']
	      end
	      
	      if attributes[:'valorAcrescimoALiquidar']
	        @valor_acrescimo_a_liquidar = attributes[:'valorAcrescimoALiquidar']
	      end
	      
	      if attributes[:'valorAcrescimoPago']
	        @valor_acrescimo_pago = attributes[:'valorAcrescimoPago']
	      end
	      
	      if attributes[:'valorAcrescimoAPagar']
	        @valor_acrescimo_a_pagar = attributes[:'valorAcrescimoAPagar']
	      end
	      
	    end
	  end
	
	
  end
end
