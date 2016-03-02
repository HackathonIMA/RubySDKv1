# Client common files
require 'ImaApiV1/monkey'
require 'ImaApiV1/client'
require 'ImaApiV1/client/configuration'
require 'ImaApiV1/client/request'
require 'ImaApiV1/client/response'
require 'ImaApiV1/client/version'

# Models
require 'ImaApiV1/model/base_object'
require 'ImaApiV1/model/despesas_response'
require 'ImaApiV1/model/links_model'
require 'ImaApiV1/model/credor_response'
require 'ImaApiV1/model/tipo_licitacoes_response'
require 'ImaApiV1/model/sub_itens_contas_response'
require 'ImaApiV1/model/unidade_gestora_response'
require 'ImaApiV1/model/receita_response'
require 'ImaApiV1/model/empenho_response'
require 'ImaApiV1/model/naturezas_response'
require 'ImaApiV1/model/fontes_response'
require 'ImaApiV1/model/fonte_detalhada_response'
require 'ImaApiV1/model/elemento_despesa_response'
require 'ImaApiV1/model/projeto_atividade_response'
require 'ImaApiV1/model/funcoes_response'
require 'ImaApiV1/model/subfuncoes_response'
require 'ImaApiV1/model/programa_response'
require 'ImaApiV1/model/acoes_response'
require 'ImaApiV1/model/unidades_response'
require 'ImaApiV1/model/educacao_response'
require 'ImaApiV1/model/saude_response'
require 'ImaApiV1/model/protocolo_response'
require 'ImaApiV1/model/solicitacao_response'

# APIs
require 'ImaApiV1/api/educao_api'
require 'ImaApiV1/api/atendimentos_api'
require 'ImaApiV1/api/sade_api'
require 'ImaApiV1/api/transparencia_api'
require 'ImaApiV1/api/protocolo_api'

module ImaApiV1
  # Initialize the default configuration
  Client.configuration ||= Client::Configuration.new
end
