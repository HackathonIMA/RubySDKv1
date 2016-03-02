require "uri"

module ImaApiV1
  module Api
	
	  class TransparenciaApi
	    basePath = "http://api.ima.sp.gov.br/v1"
	    # apiInvoker = APIInvoker
	
	
	    # Consulta das aÃ§Ãµes da preifeitura.
	    # 
	    # @param access_token Access Token com as permissÃµes de acesso.
	    # @param client_id Token disponibilizado na criaÃ§Ã£o da APP.
	    # @param offset ParÃ¢metro utilizado para indicar a posiÃ§Ã£o do registro inicial que serÃ¡ trazido. A primeira posiÃ§Ã£o Ã© sempre zero (0).
	    # @param limit ParÃ¢metro utilizado para indicar a quantidade de registros que deve ser trazido na consulta.
	    # @param [Hash] opts the optional parameters
	    # @return [array[AcoesResponse]]
	    def self.queryfiltro_acao(access_token, client_id, offset, limit, opts = {})
	      
	      # verify the required parameter 'access_token' is set
	      raise "Missing the required parameter 'access_token' when calling queryfiltro_acao" if access_token.nil?
	      
	      # verify the required parameter 'client_id' is set
	      raise "Missing the required parameter 'client_id' when calling queryfiltro_acao" if client_id.nil?
	      
	      # verify the required parameter 'offset' is set
	      raise "Missing the required parameter 'offset' when calling queryfiltro_acao" if offset.nil?
	      
	      # verify the required parameter 'limit' is set
	      raise "Missing the required parameter 'limit' when calling queryfiltro_acao" if limit.nil?
	      
	
	      # resource path
	      path = "/transparencia/acoes".sub('{format}','json')
	
	      # query parameters
	      query_params = {}
	      query_params[:'offset'] = offset
	      query_params[:'limit'] = limit
	
	      # header parameters
	      header_params = {}
	
	      # HTTP header 'Accept' (if needed)
	      _header_accept = []
	      _header_accept_result = Client::Request.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result
	
	      # HTTP header 'Content-Type'
	      _header_content_type = []
	      header_params['Content-Type'] = Client::Request.select_header_content_type(_header_content_type)
	      header_params[:'access-token'] = access_token
	      header_params[:'client_id'] = client_id
	
	      # form parameters
	      form_params = {}
	
	      # http body (model)
	      post_body = nil
	      
	
	      auth_names = []
	      response = Client::Request.new(:GET, path, {:params => query_params, :headers => header_params, :form_params => form_params, :body => post_body, :auth_names => auth_names}).make.body
	      if response.is_a?(Hash)
	     	response.map {|response| obj = Model::AcoesResponse.new() and obj.build_from_hash(response) }
	      else
		    obj = response;
	      end
	      
	    end
	
	
	    # Consulta da aÃ§Ã£o da preifeitura.
	    # 
	    # @param id Identificador do registro.
	    # @param access_token Access Token com as permissÃµes de acesso.
	    # @param client_id Token disponibilizado na criaÃ§Ã£o da APP.
	    # @param offset ParÃ¢metro utilizado para indicar a posiÃ§Ã£o do registro inicial que serÃ¡ trazido. A primeira posiÃ§Ã£o Ã© sempre zero (0).
	    # @param limit ParÃ¢metro utilizado para indicar a quantidade de registros que deve ser trazido na consulta.
	    # @param [Hash] opts the optional parameters
	    # @return [AcoesResponse]
	    def self.queryfiltro_acao2(id, access_token, client_id, offset, limit, opts = {})
	      
	      # verify the required parameter 'id' is set
	      raise "Missing the required parameter 'id' when calling queryfiltro_acao2" if id.nil?
	      
	      # verify the required parameter 'access_token' is set
	      raise "Missing the required parameter 'access_token' when calling queryfiltro_acao2" if access_token.nil?
	      
	      # verify the required parameter 'client_id' is set
	      raise "Missing the required parameter 'client_id' when calling queryfiltro_acao2" if client_id.nil?
	      
	      # verify the required parameter 'offset' is set
	      raise "Missing the required parameter 'offset' when calling queryfiltro_acao2" if offset.nil?
	      
	      # verify the required parameter 'limit' is set
	      raise "Missing the required parameter 'limit' when calling queryfiltro_acao2" if limit.nil?
	      
	
	      # resource path
	      path = "/transparencia/acoes/{id}".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)
	
	      # query parameters
	      query_params = {}
	      query_params[:'offset'] = offset
	      query_params[:'limit'] = limit
	
	      # header parameters
	      header_params = {}
	
	      # HTTP header 'Accept' (if needed)
	      _header_accept = []
	      _header_accept_result = Client::Request.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result
	
	      # HTTP header 'Content-Type'
	      _header_content_type = []
	      header_params['Content-Type'] = Client::Request.select_header_content_type(_header_content_type)
	      header_params[:'access-token'] = access_token
	      header_params[:'client_id'] = client_id
	
	      # form parameters
	      form_params = {}
	
	      # http body (model)
	      post_body = nil
	      
	
	      auth_names = []
	      response = Client::Request.new(:GET, path, {:params => query_params, :headers => header_params, :form_params => form_params, :body => post_body, :auth_names => auth_names}).make.body
	      if response.is_a?(Hash)
	     	obj = Model::AcoesResponse.new() and obj.build_from_hash(response)
	      else
		    obj = response;
	      end
	      
	    end
	
	
	    # Consulta de credores.
	    # 
	    # @param access_token Access Token com as permissÃµes de acesso.
	    # @param client_id Token disponibilizado na criaÃ§Ã£o da APP.
	    # @param offset ParÃ¢metro utilizado para indicar a posiÃ§Ã£o do registro inicial que serÃ¡ trazido. A primeira posiÃ§Ã£o Ã© sempre zero (0).
	    # @param limit ParÃ¢metro utilizado para indicar a quantidade de registros que deve ser trazido na consulta.
	    # @param [Hash] opts the optional parameters
	    # @return [array[CredorResponse]]
	    def self.ptr_lkp_credor(access_token, client_id, offset, limit, opts = {})
	      
	      # verify the required parameter 'access_token' is set
	      raise "Missing the required parameter 'access_token' when calling ptr_lkp_credor" if access_token.nil?
	      
	      # verify the required parameter 'client_id' is set
	      raise "Missing the required parameter 'client_id' when calling ptr_lkp_credor" if client_id.nil?
	      
	      # verify the required parameter 'offset' is set
	      raise "Missing the required parameter 'offset' when calling ptr_lkp_credor" if offset.nil?
	      
	      # verify the required parameter 'limit' is set
	      raise "Missing the required parameter 'limit' when calling ptr_lkp_credor" if limit.nil?
	      
	
	      # resource path
	      path = "/transparencia/credores".sub('{format}','json')
	
	      # query parameters
	      query_params = {}
	      query_params[:'offset'] = offset
	      query_params[:'limit'] = limit
	
	      # header parameters
	      header_params = {}
	
	      # HTTP header 'Accept' (if needed)
	      _header_accept = []
	      _header_accept_result = Client::Request.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result
	
	      # HTTP header 'Content-Type'
	      _header_content_type = []
	      header_params['Content-Type'] = Client::Request.select_header_content_type(_header_content_type)
	      header_params[:'access-token'] = access_token
	      header_params[:'client_id'] = client_id
	
	      # form parameters
	      form_params = {}
	
	      # http body (model)
	      post_body = nil
	      
	
	      auth_names = []
	      response = Client::Request.new(:GET, path, {:params => query_params, :headers => header_params, :form_params => form_params, :body => post_body, :auth_names => auth_names}).make.body
	      if response.is_a?(Hash)
	     	response.map {|response| obj = Model::CredorResponse.new() and obj.build_from_hash(response) }
	      else
		    obj = response;
	      end
	      
	    end
	
	
	    # Consulta de credor.
	    # 
	    # @param id Identificador do registro.
	    # @param access_token Access Token com as permissÃµes de acesso.
	    # @param client_id Token disponibilizado na criaÃ§Ã£o da APP.
	    # @param offset ParÃ¢metro utilizado para indicar a posiÃ§Ã£o do registro inicial que serÃ¡ trazido. A primeira posiÃ§Ã£o Ã© sempre zero (0).
	    # @param limit ParÃ¢metro utilizado para indicar a quantidade de registros que deve ser trazido na consulta.
	    # @param [Hash] opts the optional parameters
	    # @return [CredorResponse]
	    def self.ptr_lkp_credor2(id, access_token, client_id, offset, limit, opts = {})
	      
	      # verify the required parameter 'id' is set
	      raise "Missing the required parameter 'id' when calling ptr_lkp_credor2" if id.nil?
	      
	      # verify the required parameter 'access_token' is set
	      raise "Missing the required parameter 'access_token' when calling ptr_lkp_credor2" if access_token.nil?
	      
	      # verify the required parameter 'client_id' is set
	      raise "Missing the required parameter 'client_id' when calling ptr_lkp_credor2" if client_id.nil?
	      
	      # verify the required parameter 'offset' is set
	      raise "Missing the required parameter 'offset' when calling ptr_lkp_credor2" if offset.nil?
	      
	      # verify the required parameter 'limit' is set
	      raise "Missing the required parameter 'limit' when calling ptr_lkp_credor2" if limit.nil?
	      
	
	      # resource path
	      path = "/transparencia/credores/{id}".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)
	
	      # query parameters
	      query_params = {}
	      query_params[:'offset'] = offset
	      query_params[:'limit'] = limit
	
	      # header parameters
	      header_params = {}
	
	      # HTTP header 'Accept' (if needed)
	      _header_accept = []
	      _header_accept_result = Client::Request.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result
	
	      # HTTP header 'Content-Type'
	      _header_content_type = []
	      header_params['Content-Type'] = Client::Request.select_header_content_type(_header_content_type)
	      header_params[:'access-token'] = access_token
	      header_params[:'client_id'] = client_id
	
	      # form parameters
	      form_params = {}
	
	      # http body (model)
	      post_body = nil
	      
	
	      auth_names = []
	      response = Client::Request.new(:GET, path, {:params => query_params, :headers => header_params, :form_params => form_params, :body => post_body, :auth_names => auth_names}).make.body
	      if response.is_a?(Hash)
	     	obj = Model::CredorResponse.new() and obj.build_from_hash(response)
	      else
		    obj = response;
	      end
	      
	    end
	
	
	    # Consulta de despesas da prefeitura.
	    # 
	    # @param access_token Access Token com as permissÃµes de acesso.
	    # @param client_id Token disponibilizado na criaÃ§Ã£o da APP.
	    # @param offset ParÃ¢metro utilizado para indicar a posiÃ§Ã£o do registro inicial que serÃ¡ trazido. A primeira posiÃ§Ã£o Ã© sempre zero (0).
	    # @param limit ParÃ¢metro utilizado para indicar a quantidade de registros que deve ser trazido na consulta.
	    # @param [Hash] opts the optional parameters
	    # @option opts [string] :ano_exercicio Ano de exercÃ­cio
	    # @option opts [string] :acao AÃ§Ã£o, lista disponÃ­vel em GET /transparencia/acoes
	    # @option opts [string] :mes MÃªs desejado
	    # @option opts [string] :orgao OrgÃ£os, lista disponÃ­vel em GET /transparencia/unidadesGestoras
	    # @option opts [string] :funcao FunÃ§Ã£o, lista disponÃ­vel em GET /transparencia/funcoes
	    # @option opts [string] :subfuncao Sub-funÃ§Ã£o, lista disponÃ­vel em GET /transparencia/subfuncoes
	    # @option opts [string] :programa Programa, lista disponÃ­vel em GET /transparencia/programas
	    # @option opts [string] :origem_fonte Origem das fontes, lista disponÃ­vel em GET /transparencia/fontesDetalhadas
	    # @option opts [string] :fonte Fontes, lista disponÃ­vel em GET /transparencia/fontes
	    # @option opts [string] :natureza_despesa Natureza da despesa, lista disponÃ­vel em GET /transparencia/subItensContas
	    # @option opts [string] :expand ParÃ¢metro utilizado para obter maiores detalhes sobre algum dos atributos do recurso. Podendo ser passados mÃºltiplos campos separados por vÃ­rgula
	    # @return [array[despesasResponse]]
	    def self.ptr_ft_despesa(access_token, client_id, offset, limit, opts = {})
	      
	      # verify the required parameter 'access_token' is set
	      raise "Missing the required parameter 'access_token' when calling ptr_ft_despesa" if access_token.nil?
	      
	      # verify the required parameter 'client_id' is set
	      raise "Missing the required parameter 'client_id' when calling ptr_ft_despesa" if client_id.nil?
	      
	      # verify the required parameter 'offset' is set
	      raise "Missing the required parameter 'offset' when calling ptr_ft_despesa" if offset.nil?
	      
	      # verify the required parameter 'limit' is set
	      raise "Missing the required parameter 'limit' when calling ptr_ft_despesa" if limit.nil?
	      
	
	      # resource path
	      path = "/transparencia/despesas".sub('{format}','json')
	
	      # query parameters
	      query_params = {}
	      query_params[:'offset'] = offset
	      query_params[:'limit'] = limit
	      query_params[:'anoExercicio'] = opts[:'ano_exercicio'] if opts[:'ano_exercicio']
	      query_params[:'acao'] = opts[:'acao'] if opts[:'acao']
	      query_params[:'mes'] = opts[:'mes'] if opts[:'mes']
	      query_params[:'orgao'] = opts[:'orgao'] if opts[:'orgao']
	      query_params[:'funcao'] = opts[:'funcao'] if opts[:'funcao']
	      query_params[:'subfuncao'] = opts[:'subfuncao'] if opts[:'subfuncao']
	      query_params[:'programa'] = opts[:'programa'] if opts[:'programa']
	      query_params[:'origemFonte'] = opts[:'origem_fonte'] if opts[:'origem_fonte']
	      query_params[:'fonte'] = opts[:'fonte'] if opts[:'fonte']
	      query_params[:'naturezaDespesa'] = opts[:'natureza_despesa'] if opts[:'natureza_despesa']
	      query_params[:'expand'] = opts[:'expand'] if opts[:'expand']
	
	      # header parameters
	      header_params = {}
	
	      # HTTP header 'Accept' (if needed)
	      _header_accept = []
	      _header_accept_result = Client::Request.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result
	
	      # HTTP header 'Content-Type'
	      _header_content_type = []
	      header_params['Content-Type'] = Client::Request.select_header_content_type(_header_content_type)
	      header_params[:'access-token'] = access_token
	      header_params[:'client_id'] = client_id
	
	      # form parameters
	      form_params = {}
	
	      # http body (model)
	      post_body = nil
	      
	
	      auth_names = []
	      response = Client::Request.new(:GET, path, {:params => query_params, :headers => header_params, :form_params => form_params, :body => post_body, :auth_names => auth_names}).make.body
	      if response.is_a?(Hash)
	     	response.map {|response| obj = Model::despesasResponse.new() and obj.build_from_hash(response) }
	      else
		    obj = response;
	      end
	      
	    end
	
	
	    # Consulta de uma despesa da prefeitura.
	    # 
	    # @param id Identificador do registro.
	    # @param access_token Access Token com as permissÃµes de acesso.
	    # @param client_id Token disponibilizado na criaÃ§Ã£o da APP.
	    # @param [Hash] opts the optional parameters
	    # @option opts [string] :expand ParÃ¢metro utilizado para obter maiores detalhes sobre algum dos atributos do recurso. Podendo ser passados mÃºltiplos campos separados por vÃ­rgula
	    # @return [despesasResponse]
	    def self.ptr_ft_despesa2(id, access_token, client_id, opts = {})
	      
	      # verify the required parameter 'id' is set
	      raise "Missing the required parameter 'id' when calling ptr_ft_despesa2" if id.nil?
	      
	      # verify the required parameter 'access_token' is set
	      raise "Missing the required parameter 'access_token' when calling ptr_ft_despesa2" if access_token.nil?
	      
	      # verify the required parameter 'client_id' is set
	      raise "Missing the required parameter 'client_id' when calling ptr_ft_despesa2" if client_id.nil?
	      
	
	      # resource path
	      path = "/transparencia/despesas/{id}".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)
	
	      # query parameters
	      query_params = {}
	      query_params[:'expand'] = opts[:'expand'] if opts[:'expand']
	
	      # header parameters
	      header_params = {}
	
	      # HTTP header 'Accept' (if needed)
	      _header_accept = []
	      _header_accept_result = Client::Request.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result
	
	      # HTTP header 'Content-Type'
	      _header_content_type = []
	      header_params['Content-Type'] = Client::Request.select_header_content_type(_header_content_type)
	      header_params[:'access-token'] = access_token
	      header_params[:'client_id'] = client_id
	
	      # form parameters
	      form_params = {}
	
	      # http body (model)
	      post_body = nil
	      
	
	      auth_names = []
	      response = Client::Request.new(:GET, path, {:params => query_params, :headers => header_params, :form_params => form_params, :body => post_body, :auth_names => auth_names}).make.body
	      if response.is_a?(Hash)
	     	obj = Model::despesasResponse.new() and obj.build_from_hash(response)
	      else
		    obj = response;
	      end
	      
	    end
	
	
	    # Consulta das despesas dos elementos da preifeitura.
	    # 
	    # @param access_token Access Token com as permissÃµes de acesso.
	    # @param client_id Token disponibilizado na criaÃ§Ã£o da APP.
	    # @param offset ParÃ¢metro utilizado para indicar a posiÃ§Ã£o do registro inicial que serÃ¡ trazido. A primeira posiÃ§Ã£o Ã© sempre zero (0).
	    # @param limit ParÃ¢metro utilizado para indicar a quantidade de registros que deve ser trazido na consulta.
	    # @param [Hash] opts the optional parameters
	    # @return [array[ElementoDespesaResponse]]
	    def self.ptr_lkp_elemento_despesa(access_token, client_id, offset, limit, opts = {})
	      
	      # verify the required parameter 'access_token' is set
	      raise "Missing the required parameter 'access_token' when calling ptr_lkp_elemento_despesa" if access_token.nil?
	      
	      # verify the required parameter 'client_id' is set
	      raise "Missing the required parameter 'client_id' when calling ptr_lkp_elemento_despesa" if client_id.nil?
	      
	      # verify the required parameter 'offset' is set
	      raise "Missing the required parameter 'offset' when calling ptr_lkp_elemento_despesa" if offset.nil?
	      
	      # verify the required parameter 'limit' is set
	      raise "Missing the required parameter 'limit' when calling ptr_lkp_elemento_despesa" if limit.nil?
	      
	
	      # resource path
	      path = "/transparencia/elementos".sub('{format}','json')
	
	      # query parameters
	      query_params = {}
	      query_params[:'offset'] = offset
	      query_params[:'limit'] = limit
	
	      # header parameters
	      header_params = {}
	
	      # HTTP header 'Accept' (if needed)
	      _header_accept = []
	      _header_accept_result = Client::Request.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result
	
	      # HTTP header 'Content-Type'
	      _header_content_type = []
	      header_params['Content-Type'] = Client::Request.select_header_content_type(_header_content_type)
	      header_params[:'access-token'] = access_token
	      header_params[:'client_id'] = client_id
	
	      # form parameters
	      form_params = {}
	
	      # http body (model)
	      post_body = nil
	      
	
	      auth_names = []
	      response = Client::Request.new(:GET, path, {:params => query_params, :headers => header_params, :form_params => form_params, :body => post_body, :auth_names => auth_names}).make.body
	      if response.is_a?(Hash)
	     	response.map {|response| obj = Model::ElementoDespesaResponse.new() and obj.build_from_hash(response) }
	      else
		    obj = response;
	      end
	      
	    end
	
	
	    # Consulta da despesa do elemento da preifeitura.
	    # 
	    # @param id Identificador do registro.
	    # @param access_token Access Token com as permissÃµes de acesso.
	    # @param client_id Token disponibilizado na criaÃ§Ã£o da APP.
	    # @param offset ParÃ¢metro utilizado para indicar a posiÃ§Ã£o do registro inicial que serÃ¡ trazido. A primeira posiÃ§Ã£o Ã© sempre zero (0).
	    # @param limit ParÃ¢metro utilizado para indicar a quantidade de registros que deve ser trazido na consulta.
	    # @param [Hash] opts the optional parameters
	    # @return [ElementoDespesaResponse]
	    def self.ptr_lkp_elemento_despesa2(id, access_token, client_id, offset, limit, opts = {})
	      
	      # verify the required parameter 'id' is set
	      raise "Missing the required parameter 'id' when calling ptr_lkp_elemento_despesa2" if id.nil?
	      
	      # verify the required parameter 'access_token' is set
	      raise "Missing the required parameter 'access_token' when calling ptr_lkp_elemento_despesa2" if access_token.nil?
	      
	      # verify the required parameter 'client_id' is set
	      raise "Missing the required parameter 'client_id' when calling ptr_lkp_elemento_despesa2" if client_id.nil?
	      
	      # verify the required parameter 'offset' is set
	      raise "Missing the required parameter 'offset' when calling ptr_lkp_elemento_despesa2" if offset.nil?
	      
	      # verify the required parameter 'limit' is set
	      raise "Missing the required parameter 'limit' when calling ptr_lkp_elemento_despesa2" if limit.nil?
	      
	
	      # resource path
	      path = "/transparencia/elementos/{id}".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)
	
	      # query parameters
	      query_params = {}
	      query_params[:'offset'] = offset
	      query_params[:'limit'] = limit
	
	      # header parameters
	      header_params = {}
	
	      # HTTP header 'Accept' (if needed)
	      _header_accept = []
	      _header_accept_result = Client::Request.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result
	
	      # HTTP header 'Content-Type'
	      _header_content_type = []
	      header_params['Content-Type'] = Client::Request.select_header_content_type(_header_content_type)
	      header_params[:'access-token'] = access_token
	      header_params[:'client_id'] = client_id
	
	      # form parameters
	      form_params = {}
	
	      # http body (model)
	      post_body = nil
	      
	
	      auth_names = []
	      response = Client::Request.new(:GET, path, {:params => query_params, :headers => header_params, :form_params => form_params, :body => post_body, :auth_names => auth_names}).make.body
	      if response.is_a?(Hash)
	     	obj = Model::ElementoDespesaResponse.new() and obj.build_from_hash(response)
	      else
		    obj = response;
	      end
	      
	    end
	
	
	    # Consulta das despesas dos elementos da preifeitura.
	    # 
	    # @param access_token Access Token com as permissÃµes de acesso.
	    # @param client_id Token disponibilizado na criaÃ§Ã£o da APP.
	    # @param offset ParÃ¢metro utilizado para indicar a posiÃ§Ã£o do registro inicial que serÃ¡ trazido. A primeira posiÃ§Ã£o Ã© sempre zero (0).
	    # @param limit ParÃ¢metro utilizado para indicar a quantidade de registros que deve ser trazido na consulta.
	    # @param [Hash] opts the optional parameters
	    # @return [array[EmpenhoResponse]]
	    def self.ptr_lkp_ne(access_token, client_id, offset, limit, opts = {})
	      
	      # verify the required parameter 'access_token' is set
	      raise "Missing the required parameter 'access_token' when calling ptr_lkp_ne" if access_token.nil?
	      
	      # verify the required parameter 'client_id' is set
	      raise "Missing the required parameter 'client_id' when calling ptr_lkp_ne" if client_id.nil?
	      
	      # verify the required parameter 'offset' is set
	      raise "Missing the required parameter 'offset' when calling ptr_lkp_ne" if offset.nil?
	      
	      # verify the required parameter 'limit' is set
	      raise "Missing the required parameter 'limit' when calling ptr_lkp_ne" if limit.nil?
	      
	
	      # resource path
	      path = "/transparencia/empenhos".sub('{format}','json')
	
	      # query parameters
	      query_params = {}
	      query_params[:'offset'] = offset
	      query_params[:'limit'] = limit
	
	      # header parameters
	      header_params = {}
	
	      # HTTP header 'Accept' (if needed)
	      _header_accept = []
	      _header_accept_result = Client::Request.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result
	
	      # HTTP header 'Content-Type'
	      _header_content_type = []
	      header_params['Content-Type'] = Client::Request.select_header_content_type(_header_content_type)
	      header_params[:'access-token'] = access_token
	      header_params[:'client_id'] = client_id
	
	      # form parameters
	      form_params = {}
	
	      # http body (model)
	      post_body = nil
	      
	
	      auth_names = []
	      response = Client::Request.new(:GET, path, {:params => query_params, :headers => header_params, :form_params => form_params, :body => post_body, :auth_names => auth_names}).make.body
	      if response.is_a?(Hash)
	     	response.map {|response| obj = Model::EmpenhoResponse.new() and obj.build_from_hash(response) }
	      else
		    obj = response;
	      end
	      
	    end
	
	
	    # Consulta da despesa do elemento da preifeitura.
	    # 
	    # @param id Identificador do registro.
	    # @param access_token Access Token com as permissÃµes de acesso.
	    # @param client_id Token disponibilizado na criaÃ§Ã£o da APP.
	    # @param offset ParÃ¢metro utilizado para indicar a posiÃ§Ã£o do registro inicial que serÃ¡ trazido. A primeira posiÃ§Ã£o Ã© sempre zero (0).
	    # @param limit ParÃ¢metro utilizado para indicar a quantidade de registros que deve ser trazido na consulta.
	    # @param [Hash] opts the optional parameters
	    # @return [EmpenhoResponse]
	    def self.ptr_lkp_ne2(id, access_token, client_id, offset, limit, opts = {})
	      
	      # verify the required parameter 'id' is set
	      raise "Missing the required parameter 'id' when calling ptr_lkp_ne2" if id.nil?
	      
	      # verify the required parameter 'access_token' is set
	      raise "Missing the required parameter 'access_token' when calling ptr_lkp_ne2" if access_token.nil?
	      
	      # verify the required parameter 'client_id' is set
	      raise "Missing the required parameter 'client_id' when calling ptr_lkp_ne2" if client_id.nil?
	      
	      # verify the required parameter 'offset' is set
	      raise "Missing the required parameter 'offset' when calling ptr_lkp_ne2" if offset.nil?
	      
	      # verify the required parameter 'limit' is set
	      raise "Missing the required parameter 'limit' when calling ptr_lkp_ne2" if limit.nil?
	      
	
	      # resource path
	      path = "/transparencia/empenhos/{id}".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)
	
	      # query parameters
	      query_params = {}
	      query_params[:'offset'] = offset
	      query_params[:'limit'] = limit
	
	      # header parameters
	      header_params = {}
	
	      # HTTP header 'Accept' (if needed)
	      _header_accept = []
	      _header_accept_result = Client::Request.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result
	
	      # HTTP header 'Content-Type'
	      _header_content_type = []
	      header_params['Content-Type'] = Client::Request.select_header_content_type(_header_content_type)
	      header_params[:'access-token'] = access_token
	      header_params[:'client_id'] = client_id
	
	      # form parameters
	      form_params = {}
	
	      # http body (model)
	      post_body = nil
	      
	
	      auth_names = []
	      response = Client::Request.new(:GET, path, {:params => query_params, :headers => header_params, :form_params => form_params, :body => post_body, :auth_names => auth_names}).make.body
	      if response.is_a?(Hash)
	     	obj = Model::EmpenhoResponse.new() and obj.build_from_hash(response)
	      else
		    obj = response;
	      end
	      
	    end
	
	
	    # Consulta de contas das fontes da prefeitura.
	    # 
	    # @param access_token Access Token com as permissÃµes de acesso.
	    # @param client_id Token disponibilizado na criaÃ§Ã£o da APP.
	    # @param offset ParÃ¢metro utilizado para indicar a posiÃ§Ã£o do registro inicial que serÃ¡ trazido. A primeira posiÃ§Ã£o Ã© sempre zero (0).
	    # @param limit ParÃ¢metro utilizado para indicar a quantidade de registros que deve ser trazido na consulta.
	    # @param [Hash] opts the optional parameters
	    # @option opts [string] :expand ParÃ¢metro utilizado para obter maiores detalhes sobre algum dos atributos do recurso. Podendo ser passados mÃºltiplos campos separados por vÃ­rgula
	    # @return [array[FontesResponse]]
	    def self.ptr_lkp_fonte_detalhada(access_token, client_id, offset, limit, opts = {})
	      
	      # verify the required parameter 'access_token' is set
	      raise "Missing the required parameter 'access_token' when calling ptr_lkp_fonte_detalhada" if access_token.nil?
	      
	      # verify the required parameter 'client_id' is set
	      raise "Missing the required parameter 'client_id' when calling ptr_lkp_fonte_detalhada" if client_id.nil?
	      
	      # verify the required parameter 'offset' is set
	      raise "Missing the required parameter 'offset' when calling ptr_lkp_fonte_detalhada" if offset.nil?
	      
	      # verify the required parameter 'limit' is set
	      raise "Missing the required parameter 'limit' when calling ptr_lkp_fonte_detalhada" if limit.nil?
	      
	
	      # resource path
	      path = "/transparencia/fontes".sub('{format}','json')
	
	      # query parameters
	      query_params = {}
	      query_params[:'offset'] = offset
	      query_params[:'limit'] = limit
	      query_params[:'expand'] = opts[:'expand'] if opts[:'expand']
	
	      # header parameters
	      header_params = {}
	
	      # HTTP header 'Accept' (if needed)
	      _header_accept = []
	      _header_accept_result = Client::Request.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result
	
	      # HTTP header 'Content-Type'
	      _header_content_type = []
	      header_params['Content-Type'] = Client::Request.select_header_content_type(_header_content_type)
	      header_params[:'access-token'] = access_token
	      header_params[:'client_id'] = client_id
	
	      # form parameters
	      form_params = {}
	
	      # http body (model)
	      post_body = nil
	      
	
	      auth_names = []
	      response = Client::Request.new(:GET, path, {:params => query_params, :headers => header_params, :form_params => form_params, :body => post_body, :auth_names => auth_names}).make.body
	      if response.is_a?(Hash)
	     	response.map {|response| obj = Model::FontesResponse.new() and obj.build_from_hash(response) }
	      else
		    obj = response;
	      end
	      
	    end
	
	
	    # Consulta de conta da fonte da prefeitura.
	    # 
	    # @param id Identificador do registro.
	    # @param access_token Access Token com as permissÃµes de acesso.
	    # @param client_id Token disponibilizado na criaÃ§Ã£o da APP.
	    # @param offset ParÃ¢metro utilizado para indicar a posiÃ§Ã£o do registro inicial que serÃ¡ trazido. A primeira posiÃ§Ã£o Ã© sempre zero (0).
	    # @param limit ParÃ¢metro utilizado para indicar a quantidade de registros que deve ser trazido na consulta.
	    # @param [Hash] opts the optional parameters
	    # @option opts [string] :expand ParÃ¢metro utilizado para obter maiores detalhes sobre algum dos atributos do recurso. Podendo ser passados mÃºltiplos campos separados por vÃ­rgula
	    # @return [FontesResponse]
	    def self.ptr_lkp_fonte_detalhada2(id, access_token, client_id, offset, limit, opts = {})
	      
	      # verify the required parameter 'id' is set
	      raise "Missing the required parameter 'id' when calling ptr_lkp_fonte_detalhada2" if id.nil?
	      
	      # verify the required parameter 'access_token' is set
	      raise "Missing the required parameter 'access_token' when calling ptr_lkp_fonte_detalhada2" if access_token.nil?
	      
	      # verify the required parameter 'client_id' is set
	      raise "Missing the required parameter 'client_id' when calling ptr_lkp_fonte_detalhada2" if client_id.nil?
	      
	      # verify the required parameter 'offset' is set
	      raise "Missing the required parameter 'offset' when calling ptr_lkp_fonte_detalhada2" if offset.nil?
	      
	      # verify the required parameter 'limit' is set
	      raise "Missing the required parameter 'limit' when calling ptr_lkp_fonte_detalhada2" if limit.nil?
	      
	
	      # resource path
	      path = "/transparencia/fontes/{id}".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)
	
	      # query parameters
	      query_params = {}
	      query_params[:'offset'] = offset
	      query_params[:'limit'] = limit
	      query_params[:'expand'] = opts[:'expand'] if opts[:'expand']
	
	      # header parameters
	      header_params = {}
	
	      # HTTP header 'Accept' (if needed)
	      _header_accept = []
	      _header_accept_result = Client::Request.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result
	
	      # HTTP header 'Content-Type'
	      _header_content_type = []
	      header_params['Content-Type'] = Client::Request.select_header_content_type(_header_content_type)
	      header_params[:'access-token'] = access_token
	      header_params[:'client_id'] = client_id
	
	      # form parameters
	      form_params = {}
	
	      # http body (model)
	      post_body = nil
	      
	
	      auth_names = []
	      response = Client::Request.new(:GET, path, {:params => query_params, :headers => header_params, :form_params => form_params, :body => post_body, :auth_names => auth_names}).make.body
	      if response.is_a?(Hash)
	     	obj = Model::FontesResponse.new() and obj.build_from_hash(response)
	      else
		    obj = response;
	      end
	      
	    end
	
	
	    # Consulta das receitas das fontes detalhadas da prefeitura.
	    # 
	    # @param access_token Access Token com as permissÃµes de acesso.
	    # @param client_id Token disponibilizado na criaÃ§Ã£o da APP.
	    # @param offset ParÃ¢metro utilizado para indicar a posiÃ§Ã£o do registro inicial que serÃ¡ trazido. A primeira posiÃ§Ã£o Ã© sempre zero (0).
	    # @param limit ParÃ¢metro utilizado para indicar a quantidade de registros que deve ser trazido na consulta.
	    # @param [Hash] opts the optional parameters
	    # @return [array[FonteDetalhadaResponse]]
	    def self.ptr_lkp_fonte(access_token, client_id, offset, limit, opts = {})
	      
	      # verify the required parameter 'access_token' is set
	      raise "Missing the required parameter 'access_token' when calling ptr_lkp_fonte" if access_token.nil?
	      
	      # verify the required parameter 'client_id' is set
	      raise "Missing the required parameter 'client_id' when calling ptr_lkp_fonte" if client_id.nil?
	      
	      # verify the required parameter 'offset' is set
	      raise "Missing the required parameter 'offset' when calling ptr_lkp_fonte" if offset.nil?
	      
	      # verify the required parameter 'limit' is set
	      raise "Missing the required parameter 'limit' when calling ptr_lkp_fonte" if limit.nil?
	      
	
	      # resource path
	      path = "/transparencia/fontesDetalhadas".sub('{format}','json')
	
	      # query parameters
	      query_params = {}
	      query_params[:'offset'] = offset
	      query_params[:'limit'] = limit
	
	      # header parameters
	      header_params = {}
	
	      # HTTP header 'Accept' (if needed)
	      _header_accept = []
	      _header_accept_result = Client::Request.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result
	
	      # HTTP header 'Content-Type'
	      _header_content_type = []
	      header_params['Content-Type'] = Client::Request.select_header_content_type(_header_content_type)
	      header_params[:'access-token'] = access_token
	      header_params[:'client_id'] = client_id
	
	      # form parameters
	      form_params = {}
	
	      # http body (model)
	      post_body = nil
	      
	
	      auth_names = []
	      response = Client::Request.new(:GET, path, {:params => query_params, :headers => header_params, :form_params => form_params, :body => post_body, :auth_names => auth_names}).make.body
	      if response.is_a?(Hash)
	     	response.map {|response| obj = Model::FonteDetalhadaResponse.new() and obj.build_from_hash(response) }
	      else
		    obj = response;
	      end
	      
	    end
	
	
	    # Consulta da receita da fonte detalhada da prefeitura.
	    # 
	    # @param id Identificador do registro.
	    # @param access_token Access Token com as permissÃµes de acesso.
	    # @param client_id Token disponibilizado na criaÃ§Ã£o da APP.
	    # @param offset ParÃ¢metro utilizado para indicar a posiÃ§Ã£o do registro inicial que serÃ¡ trazido. A primeira posiÃ§Ã£o Ã© sempre zero (0).
	    # @param limit ParÃ¢metro utilizado para indicar a quantidade de registros que deve ser trazido na consulta.
	    # @param [Hash] opts the optional parameters
	    # @return [FonteDetalhadaResponse]
	    def self.ptr_lkp_fonte2(id, access_token, client_id, offset, limit, opts = {})
	      
	      # verify the required parameter 'id' is set
	      raise "Missing the required parameter 'id' when calling ptr_lkp_fonte2" if id.nil?
	      
	      # verify the required parameter 'access_token' is set
	      raise "Missing the required parameter 'access_token' when calling ptr_lkp_fonte2" if access_token.nil?
	      
	      # verify the required parameter 'client_id' is set
	      raise "Missing the required parameter 'client_id' when calling ptr_lkp_fonte2" if client_id.nil?
	      
	      # verify the required parameter 'offset' is set
	      raise "Missing the required parameter 'offset' when calling ptr_lkp_fonte2" if offset.nil?
	      
	      # verify the required parameter 'limit' is set
	      raise "Missing the required parameter 'limit' when calling ptr_lkp_fonte2" if limit.nil?
	      
	
	      # resource path
	      path = "/transparencia/fontesDetalhadas/{id}".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)
	
	      # query parameters
	      query_params = {}
	      query_params[:'offset'] = offset
	      query_params[:'limit'] = limit
	
	      # header parameters
	      header_params = {}
	
	      # HTTP header 'Accept' (if needed)
	      _header_accept = []
	      _header_accept_result = Client::Request.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result
	
	      # HTTP header 'Content-Type'
	      _header_content_type = []
	      header_params['Content-Type'] = Client::Request.select_header_content_type(_header_content_type)
	      header_params[:'access-token'] = access_token
	      header_params[:'client_id'] = client_id
	
	      # form parameters
	      form_params = {}
	
	      # http body (model)
	      post_body = nil
	      
	
	      auth_names = []
	      response = Client::Request.new(:GET, path, {:params => query_params, :headers => header_params, :form_params => form_params, :body => post_body, :auth_names => auth_names}).make.body
	      if response.is_a?(Hash)
	     	obj = Model::FonteDetalhadaResponse.new() and obj.build_from_hash(response)
	      else
		    obj = response;
	      end
	      
	    end
	
	
	    # Consulta das funÃ§Ãµes da preifeitura.
	    # 
	    # @param access_token Access Token com as permissÃµes de acesso.
	    # @param client_id Token disponibilizado na criaÃ§Ã£o da APP.
	    # @param offset ParÃ¢metro utilizado para indicar a posiÃ§Ã£o do registro inicial que serÃ¡ trazido. A primeira posiÃ§Ã£o Ã© sempre zero (0).
	    # @param limit ParÃ¢metro utilizado para indicar a quantidade de registros que deve ser trazido na consulta.
	    # @param [Hash] opts the optional parameters
	    # @return [array[FuncoesResponse]]
	    def self.ptr_lkp_funcao(access_token, client_id, offset, limit, opts = {})
	      
	      # verify the required parameter 'access_token' is set
	      raise "Missing the required parameter 'access_token' when calling ptr_lkp_funcao" if access_token.nil?
	      
	      # verify the required parameter 'client_id' is set
	      raise "Missing the required parameter 'client_id' when calling ptr_lkp_funcao" if client_id.nil?
	      
	      # verify the required parameter 'offset' is set
	      raise "Missing the required parameter 'offset' when calling ptr_lkp_funcao" if offset.nil?
	      
	      # verify the required parameter 'limit' is set
	      raise "Missing the required parameter 'limit' when calling ptr_lkp_funcao" if limit.nil?
	      
	
	      # resource path
	      path = "/transparencia/funcoes".sub('{format}','json')
	
	      # query parameters
	      query_params = {}
	      query_params[:'offset'] = offset
	      query_params[:'limit'] = limit
	
	      # header parameters
	      header_params = {}
	
	      # HTTP header 'Accept' (if needed)
	      _header_accept = []
	      _header_accept_result = Client::Request.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result
	
	      # HTTP header 'Content-Type'
	      _header_content_type = []
	      header_params['Content-Type'] = Client::Request.select_header_content_type(_header_content_type)
	      header_params[:'access-token'] = access_token
	      header_params[:'client_id'] = client_id
	
	      # form parameters
	      form_params = {}
	
	      # http body (model)
	      post_body = nil
	      
	
	      auth_names = []
	      response = Client::Request.new(:GET, path, {:params => query_params, :headers => header_params, :form_params => form_params, :body => post_body, :auth_names => auth_names}).make.body
	      if response.is_a?(Hash)
	     	response.map {|response| obj = Model::FuncoesResponse.new() and obj.build_from_hash(response) }
	      else
		    obj = response;
	      end
	      
	    end
	
	
	    # Consulta da funÃ§Ã£o da preifeitura.
	    # 
	    # @param id Identificador do registro.
	    # @param access_token Access Token com as permissÃµes de acesso.
	    # @param client_id Token disponibilizado na criaÃ§Ã£o da APP.
	    # @param offset ParÃ¢metro utilizado para indicar a posiÃ§Ã£o do registro inicial que serÃ¡ trazido. A primeira posiÃ§Ã£o Ã© sempre zero (0).
	    # @param limit ParÃ¢metro utilizado para indicar a quantidade de registros que deve ser trazido na consulta.
	    # @param [Hash] opts the optional parameters
	    # @return [FuncoesResponse]
	    def self.ptr_lkp_funcao2(id, access_token, client_id, offset, limit, opts = {})
	      
	      # verify the required parameter 'id' is set
	      raise "Missing the required parameter 'id' when calling ptr_lkp_funcao2" if id.nil?
	      
	      # verify the required parameter 'access_token' is set
	      raise "Missing the required parameter 'access_token' when calling ptr_lkp_funcao2" if access_token.nil?
	      
	      # verify the required parameter 'client_id' is set
	      raise "Missing the required parameter 'client_id' when calling ptr_lkp_funcao2" if client_id.nil?
	      
	      # verify the required parameter 'offset' is set
	      raise "Missing the required parameter 'offset' when calling ptr_lkp_funcao2" if offset.nil?
	      
	      # verify the required parameter 'limit' is set
	      raise "Missing the required parameter 'limit' when calling ptr_lkp_funcao2" if limit.nil?
	      
	
	      # resource path
	      path = "/transparencia/funcoes/{id}".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)
	
	      # query parameters
	      query_params = {}
	      query_params[:'offset'] = offset
	      query_params[:'limit'] = limit
	
	      # header parameters
	      header_params = {}
	
	      # HTTP header 'Accept' (if needed)
	      _header_accept = []
	      _header_accept_result = Client::Request.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result
	
	      # HTTP header 'Content-Type'
	      _header_content_type = []
	      header_params['Content-Type'] = Client::Request.select_header_content_type(_header_content_type)
	      header_params[:'access-token'] = access_token
	      header_params[:'client_id'] = client_id
	
	      # form parameters
	      form_params = {}
	
	      # http body (model)
	      post_body = nil
	      
	
	      auth_names = []
	      response = Client::Request.new(:GET, path, {:params => query_params, :headers => header_params, :form_params => form_params, :body => post_body, :auth_names => auth_names}).make.body
	      if response.is_a?(Hash)
	     	obj = Model::FuncoesResponse.new() and obj.build_from_hash(response)
	      else
		    obj = response;
	      end
	      
	    end
	
	
	    # Consulta de contas das naturezas das receitas da prefeitura.
	    # 
	    # @param access_token Access Token com as permissÃµes de acesso.
	    # @param client_id Token disponibilizado na criaÃ§Ã£o da APP.
	    # @param offset ParÃ¢metro utilizado para indicar a posiÃ§Ã£o do registro inicial que serÃ¡ trazido. A primeira posiÃ§Ã£o Ã© sempre zero (0).
	    # @param limit ParÃ¢metro utilizado para indicar a quantidade de registros que deve ser trazido na consulta.
	    # @param [Hash] opts the optional parameters
	    # @option opts [string] :expand ParÃ¢metro utilizado para obter maiores detalhes sobre algum dos atributos do recurso. Podendo ser passados mÃºltiplos campos separados por vÃ­rgula
	    # @return [array[naturezasResponse]]
	    def self.ptr_lkp_subalinea_receita(access_token, client_id, offset, limit, opts = {})
	      
	      # verify the required parameter 'access_token' is set
	      raise "Missing the required parameter 'access_token' when calling ptr_lkp_subalinea_receita" if access_token.nil?
	      
	      # verify the required parameter 'client_id' is set
	      raise "Missing the required parameter 'client_id' when calling ptr_lkp_subalinea_receita" if client_id.nil?
	      
	      # verify the required parameter 'offset' is set
	      raise "Missing the required parameter 'offset' when calling ptr_lkp_subalinea_receita" if offset.nil?
	      
	      # verify the required parameter 'limit' is set
	      raise "Missing the required parameter 'limit' when calling ptr_lkp_subalinea_receita" if limit.nil?
	      
	
	      # resource path
	      path = "/transparencia/naturezas".sub('{format}','json')
	
	      # query parameters
	      query_params = {}
	      query_params[:'offset'] = offset
	      query_params[:'limit'] = limit
	      query_params[:'expand'] = opts[:'expand'] if opts[:'expand']
	
	      # header parameters
	      header_params = {}
	
	      # HTTP header 'Accept' (if needed)
	      _header_accept = []
	      _header_accept_result = Client::Request.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result
	
	      # HTTP header 'Content-Type'
	      _header_content_type = []
	      header_params['Content-Type'] = Client::Request.select_header_content_type(_header_content_type)
	      header_params[:'access-token'] = access_token
	      header_params[:'client_id'] = client_id
	
	      # form parameters
	      form_params = {}
	
	      # http body (model)
	      post_body = nil
	      
	
	      auth_names = []
	      response = Client::Request.new(:GET, path, {:params => query_params, :headers => header_params, :form_params => form_params, :body => post_body, :auth_names => auth_names}).make.body
	      if response.is_a?(Hash)
	     	response.map {|response| obj = Model::naturezasResponse.new() and obj.build_from_hash(response) }
	      else
		    obj = response;
	      end
	      
	    end
	
	
	    # Consulta de conta da natureza da receita da prefeitura.
	    # 
	    # @param id Identificador do registro.
	    # @param access_token Access Token com as permissÃµes de acesso.
	    # @param client_id Token disponibilizado na criaÃ§Ã£o da APP.
	    # @param offset ParÃ¢metro utilizado para indicar a posiÃ§Ã£o do registro inicial que serÃ¡ trazido. A primeira posiÃ§Ã£o Ã© sempre zero (0).
	    # @param limit ParÃ¢metro utilizado para indicar a quantidade de registros que deve ser trazido na consulta.
	    # @param [Hash] opts the optional parameters
	    # @option opts [string] :expand ParÃ¢metro utilizado para obter maiores detalhes sobre algum dos atributos do recurso. Podendo ser passados mÃºltiplos campos separados por vÃ­rgula
	    # @return [naturezasResponse]
	    def self.ptr_lkp_subalinea_receita2(id, access_token, client_id, offset, limit, opts = {})
	      
	      # verify the required parameter 'id' is set
	      raise "Missing the required parameter 'id' when calling ptr_lkp_subalinea_receita2" if id.nil?
	      
	      # verify the required parameter 'access_token' is set
	      raise "Missing the required parameter 'access_token' when calling ptr_lkp_subalinea_receita2" if access_token.nil?
	      
	      # verify the required parameter 'client_id' is set
	      raise "Missing the required parameter 'client_id' when calling ptr_lkp_subalinea_receita2" if client_id.nil?
	      
	      # verify the required parameter 'offset' is set
	      raise "Missing the required parameter 'offset' when calling ptr_lkp_subalinea_receita2" if offset.nil?
	      
	      # verify the required parameter 'limit' is set
	      raise "Missing the required parameter 'limit' when calling ptr_lkp_subalinea_receita2" if limit.nil?
	      
	
	      # resource path
	      path = "/transparencia/naturezas/{id}".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)
	
	      # query parameters
	      query_params = {}
	      query_params[:'offset'] = offset
	      query_params[:'limit'] = limit
	      query_params[:'expand'] = opts[:'expand'] if opts[:'expand']
	
	      # header parameters
	      header_params = {}
	
	      # HTTP header 'Accept' (if needed)
	      _header_accept = []
	      _header_accept_result = Client::Request.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result
	
	      # HTTP header 'Content-Type'
	      _header_content_type = []
	      header_params['Content-Type'] = Client::Request.select_header_content_type(_header_content_type)
	      header_params[:'access-token'] = access_token
	      header_params[:'client_id'] = client_id
	
	      # form parameters
	      form_params = {}
	
	      # http body (model)
	      post_body = nil
	      
	
	      auth_names = []
	      response = Client::Request.new(:GET, path, {:params => query_params, :headers => header_params, :form_params => form_params, :body => post_body, :auth_names => auth_names}).make.body
	      if response.is_a?(Hash)
	     	obj = Model::naturezasResponse.new() and obj.build_from_hash(response)
	      else
		    obj = response;
	      end
	      
	    end
	
	
	    # Consulta dos programas da preifeitura.
	    # 
	    # @param access_token Access Token com as permissÃµes de acesso.
	    # @param client_id Token disponibilizado na criaÃ§Ã£o da APP.
	    # @param offset ParÃ¢metro utilizado para indicar a posiÃ§Ã£o do registro inicial que serÃ¡ trazido. A primeira posiÃ§Ã£o Ã© sempre zero (0).
	    # @param limit ParÃ¢metro utilizado para indicar a quantidade de registros que deve ser trazido na consulta.
	    # @param [Hash] opts the optional parameters
	    # @return [array[ProgramaResponse]]
	    def self.ptr_lkp_programa(access_token, client_id, offset, limit, opts = {})
	      
	      # verify the required parameter 'access_token' is set
	      raise "Missing the required parameter 'access_token' when calling ptr_lkp_programa" if access_token.nil?
	      
	      # verify the required parameter 'client_id' is set
	      raise "Missing the required parameter 'client_id' when calling ptr_lkp_programa" if client_id.nil?
	      
	      # verify the required parameter 'offset' is set
	      raise "Missing the required parameter 'offset' when calling ptr_lkp_programa" if offset.nil?
	      
	      # verify the required parameter 'limit' is set
	      raise "Missing the required parameter 'limit' when calling ptr_lkp_programa" if limit.nil?
	      
	
	      # resource path
	      path = "/transparencia/programas".sub('{format}','json')
	
	      # query parameters
	      query_params = {}
	      query_params[:'offset'] = offset
	      query_params[:'limit'] = limit
	
	      # header parameters
	      header_params = {}
	
	      # HTTP header 'Accept' (if needed)
	      _header_accept = []
	      _header_accept_result = Client::Request.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result
	
	      # HTTP header 'Content-Type'
	      _header_content_type = []
	      header_params['Content-Type'] = Client::Request.select_header_content_type(_header_content_type)
	      header_params[:'access-token'] = access_token
	      header_params[:'client_id'] = client_id
	
	      # form parameters
	      form_params = {}
	
	      # http body (model)
	      post_body = nil
	      
	
	      auth_names = []
	      response = Client::Request.new(:GET, path, {:params => query_params, :headers => header_params, :form_params => form_params, :body => post_body, :auth_names => auth_names}).make.body
	      if response.is_a?(Hash)
	     	response.map {|response| obj = Model::ProgramaResponse.new() and obj.build_from_hash(response) }
	      else
		    obj = response;
	      end
	      
	    end
	
	
	    # Consulta do programa da preifeitura.
	    # 
	    # @param id Identificador do registro.
	    # @param access_token Access Token com as permissÃµes de acesso.
	    # @param client_id Token disponibilizado na criaÃ§Ã£o da APP.
	    # @param offset ParÃ¢metro utilizado para indicar a posiÃ§Ã£o do registro inicial que serÃ¡ trazido. A primeira posiÃ§Ã£o Ã© sempre zero (0).
	    # @param limit ParÃ¢metro utilizado para indicar a quantidade de registros que deve ser trazido na consulta.
	    # @param [Hash] opts the optional parameters
	    # @return [ProgramaResponse]
	    def self.ptr_lkp_programa2(id, access_token, client_id, offset, limit, opts = {})
	      
	      # verify the required parameter 'id' is set
	      raise "Missing the required parameter 'id' when calling ptr_lkp_programa2" if id.nil?
	      
	      # verify the required parameter 'access_token' is set
	      raise "Missing the required parameter 'access_token' when calling ptr_lkp_programa2" if access_token.nil?
	      
	      # verify the required parameter 'client_id' is set
	      raise "Missing the required parameter 'client_id' when calling ptr_lkp_programa2" if client_id.nil?
	      
	      # verify the required parameter 'offset' is set
	      raise "Missing the required parameter 'offset' when calling ptr_lkp_programa2" if offset.nil?
	      
	      # verify the required parameter 'limit' is set
	      raise "Missing the required parameter 'limit' when calling ptr_lkp_programa2" if limit.nil?
	      
	
	      # resource path
	      path = "/transparencia/programas/{id}".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)
	
	      # query parameters
	      query_params = {}
	      query_params[:'offset'] = offset
	      query_params[:'limit'] = limit
	
	      # header parameters
	      header_params = {}
	
	      # HTTP header 'Accept' (if needed)
	      _header_accept = []
	      _header_accept_result = Client::Request.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result
	
	      # HTTP header 'Content-Type'
	      _header_content_type = []
	      header_params['Content-Type'] = Client::Request.select_header_content_type(_header_content_type)
	      header_params[:'access-token'] = access_token
	      header_params[:'client_id'] = client_id
	
	      # form parameters
	      form_params = {}
	
	      # http body (model)
	      post_body = nil
	      
	
	      auth_names = []
	      response = Client::Request.new(:GET, path, {:params => query_params, :headers => header_params, :form_params => form_params, :body => post_body, :auth_names => auth_names}).make.body
	      if response.is_a?(Hash)
	     	obj = Model::ProgramaResponse.new() and obj.build_from_hash(response)
	      else
		    obj = response;
	      end
	      
	    end
	
	
	    # Consulta dos projetos e atividades da preifeitura.
	    # 
	    # @param access_token Access Token com as permissÃµes de acesso.
	    # @param client_id Token disponibilizado na criaÃ§Ã£o da APP.
	    # @param offset ParÃ¢metro utilizado para indicar a posiÃ§Ã£o do registro inicial que serÃ¡ trazido. A primeira posiÃ§Ã£o Ã© sempre zero (0).
	    # @param limit ParÃ¢metro utilizado para indicar a quantidade de registros que deve ser trazido na consulta.
	    # @param [Hash] opts the optional parameters
	    # @option opts [string] :expand ParÃ¢metro utilizado para obter maiores detalhes sobre algum dos atributos do recurso. Podendo ser passados mÃºltiplos campos separados por vÃ­rgula
	    # @return [array[ProjetoAtividadeResponse]]
	    def self.ptr_lkp_projeto_atividade(access_token, client_id, offset, limit, opts = {})
	      
	      # verify the required parameter 'access_token' is set
	      raise "Missing the required parameter 'access_token' when calling ptr_lkp_projeto_atividade" if access_token.nil?
	      
	      # verify the required parameter 'client_id' is set
	      raise "Missing the required parameter 'client_id' when calling ptr_lkp_projeto_atividade" if client_id.nil?
	      
	      # verify the required parameter 'offset' is set
	      raise "Missing the required parameter 'offset' when calling ptr_lkp_projeto_atividade" if offset.nil?
	      
	      # verify the required parameter 'limit' is set
	      raise "Missing the required parameter 'limit' when calling ptr_lkp_projeto_atividade" if limit.nil?
	      
	
	      # resource path
	      path = "/transparencia/projetosAtividades".sub('{format}','json')
	
	      # query parameters
	      query_params = {}
	      query_params[:'offset'] = offset
	      query_params[:'limit'] = limit
	      query_params[:'expand'] = opts[:'expand'] if opts[:'expand']
	
	      # header parameters
	      header_params = {}
	
	      # HTTP header 'Accept' (if needed)
	      _header_accept = []
	      _header_accept_result = Client::Request.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result
	
	      # HTTP header 'Content-Type'
	      _header_content_type = []
	      header_params['Content-Type'] = Client::Request.select_header_content_type(_header_content_type)
	      header_params[:'access-token'] = access_token
	      header_params[:'client_id'] = client_id
	
	      # form parameters
	      form_params = {}
	
	      # http body (model)
	      post_body = nil
	      
	
	      auth_names = []
	      response = Client::Request.new(:GET, path, {:params => query_params, :headers => header_params, :form_params => form_params, :body => post_body, :auth_names => auth_names}).make.body
	      if response.is_a?(Hash)
	     	response.map {|response| obj = Model::ProjetoAtividadeResponse.new() and obj.build_from_hash(response) }
	      else
		    obj = response;
	      end
	      
	    end
	
	
	    # Consulta do projeto e atividade da preifeitura.
	    # 
	    # @param id Identificador do registro.
	    # @param access_token Access Token com as permissÃµes de acesso.
	    # @param client_id Token disponibilizado na criaÃ§Ã£o da APP.
	    # @param offset ParÃ¢metro utilizado para indicar a posiÃ§Ã£o do registro inicial que serÃ¡ trazido. A primeira posiÃ§Ã£o Ã© sempre zero (0).
	    # @param limit ParÃ¢metro utilizado para indicar a quantidade de registros que deve ser trazido na consulta.
	    # @param [Hash] opts the optional parameters
	    # @option opts [string] :expand ParÃ¢metro utilizado para obter maiores detalhes sobre algum dos atributos do recurso. Podendo ser passados mÃºltiplos campos separados por vÃ­rgula
	    # @return [ProjetoAtividadeResponse]
	    def self.ptr_lkp_projeto_atividade2(id, access_token, client_id, offset, limit, opts = {})
	      
	      # verify the required parameter 'id' is set
	      raise "Missing the required parameter 'id' when calling ptr_lkp_projeto_atividade2" if id.nil?
	      
	      # verify the required parameter 'access_token' is set
	      raise "Missing the required parameter 'access_token' when calling ptr_lkp_projeto_atividade2" if access_token.nil?
	      
	      # verify the required parameter 'client_id' is set
	      raise "Missing the required parameter 'client_id' when calling ptr_lkp_projeto_atividade2" if client_id.nil?
	      
	      # verify the required parameter 'offset' is set
	      raise "Missing the required parameter 'offset' when calling ptr_lkp_projeto_atividade2" if offset.nil?
	      
	      # verify the required parameter 'limit' is set
	      raise "Missing the required parameter 'limit' when calling ptr_lkp_projeto_atividade2" if limit.nil?
	      
	
	      # resource path
	      path = "/transparencia/projetosAtividades/{id}".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)
	
	      # query parameters
	      query_params = {}
	      query_params[:'offset'] = offset
	      query_params[:'limit'] = limit
	      query_params[:'expand'] = opts[:'expand'] if opts[:'expand']
	
	      # header parameters
	      header_params = {}
	
	      # HTTP header 'Accept' (if needed)
	      _header_accept = []
	      _header_accept_result = Client::Request.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result
	
	      # HTTP header 'Content-Type'
	      _header_content_type = []
	      header_params['Content-Type'] = Client::Request.select_header_content_type(_header_content_type)
	      header_params[:'access-token'] = access_token
	      header_params[:'client_id'] = client_id
	
	      # form parameters
	      form_params = {}
	
	      # http body (model)
	      post_body = nil
	      
	
	      auth_names = []
	      response = Client::Request.new(:GET, path, {:params => query_params, :headers => header_params, :form_params => form_params, :body => post_body, :auth_names => auth_names}).make.body
	      if response.is_a?(Hash)
	     	obj = Model::ProjetoAtividadeResponse.new() and obj.build_from_hash(response)
	      else
		    obj = response;
	      end
	      
	    end
	
	
	    # Consulta das receitas da prefeitura.
	    # 
	    # @param access_token Access Token com as permissÃµes de acesso.
	    # @param client_id Token disponibilizado na criaÃ§Ã£o da APP.
	    # @param offset ParÃ¢metro utilizado para indicar a posiÃ§Ã£o do registro inicial que serÃ¡ trazido. A primeira posiÃ§Ã£o Ã© sempre zero (0).
	    # @param limit ParÃ¢metro utilizado para indicar a quantidade de registros que deve ser trazido na consulta.
	    # @param [Hash] opts the optional parameters
	    # @option opts [string] :ano Ano de exercÃ­cio
	    # @option opts [string] :mes MÃªs desejado
	    # @option opts [string] :unidade Unidades, lista disponÃ­vel em GET /transparencia/unidades
	    # @option opts [string] :natureza Natureza das receitas, lista disponÃ­vel em GET /transparencia/naturezas
	    # @return [array[ReceitaResponse]]
	    def self.ptr_ft_receita(access_token, client_id, offset, limit, opts = {})
	      
	      # verify the required parameter 'access_token' is set
	      raise "Missing the required parameter 'access_token' when calling ptr_ft_receita" if access_token.nil?
	      
	      # verify the required parameter 'client_id' is set
	      raise "Missing the required parameter 'client_id' when calling ptr_ft_receita" if client_id.nil?
	      
	      # verify the required parameter 'offset' is set
	      raise "Missing the required parameter 'offset' when calling ptr_ft_receita" if offset.nil?
	      
	      # verify the required parameter 'limit' is set
	      raise "Missing the required parameter 'limit' when calling ptr_ft_receita" if limit.nil?
	      
	
	      # resource path
	      path = "/transparencia/receitas".sub('{format}','json')
	
	      # query parameters
	      query_params = {}
	      query_params[:'offset'] = offset
	      query_params[:'limit'] = limit
	      query_params[:'ano'] = opts[:'ano'] if opts[:'ano']
	      query_params[:'mes'] = opts[:'mes'] if opts[:'mes']
	      query_params[:'unidade'] = opts[:'unidade'] if opts[:'unidade']
	      query_params[:'natureza'] = opts[:'natureza'] if opts[:'natureza']
	
	      # header parameters
	      header_params = {}
	
	      # HTTP header 'Accept' (if needed)
	      _header_accept = []
	      _header_accept_result = Client::Request.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result
	
	      # HTTP header 'Content-Type'
	      _header_content_type = []
	      header_params['Content-Type'] = Client::Request.select_header_content_type(_header_content_type)
	      header_params[:'access-token'] = access_token
	      header_params[:'client_id'] = client_id
	
	      # form parameters
	      form_params = {}
	
	      # http body (model)
	      post_body = nil
	      
	
	      auth_names = []
	      response = Client::Request.new(:GET, path, {:params => query_params, :headers => header_params, :form_params => form_params, :body => post_body, :auth_names => auth_names}).make.body
	      if response.is_a?(Hash)
	     	response.map {|response| obj = Model::ReceitaResponse.new() and obj.build_from_hash(response) }
	      else
		    obj = response;
	      end
	      
	    end
	
	
	    # Consulta da receita da prefeitura.
	    # 
	    # @param id Identificador do registro.
	    # @param access_token Access Token com as permissÃµes de acesso.
	    # @param client_id Token disponibilizado na criaÃ§Ã£o da APP.
	    # @param offset ParÃ¢metro utilizado para indicar a posiÃ§Ã£o do registro inicial que serÃ¡ trazido. A primeira posiÃ§Ã£o Ã© sempre zero (0).
	    # @param limit ParÃ¢metro utilizado para indicar a quantidade de registros que deve ser trazido na consulta.
	    # @param [Hash] opts the optional parameters
	    # @option opts [string] :ano Ano de exercÃ­cio, lista disponÃ­vel em GET /transparencia/anosExercicioReceita
	    # @option opts [string] :mes MÃªs desejado
	    # @option opts [string] :unidade Unidades, lista disponÃ­vel em GET /transparencia/unidades
	    # @option opts [string] :natureza Natureza das receitas, lista disponÃ­vel em GET /transparencia/naturezas
	    # @return [ReceitaResponse]
	    def self.ptr_ft_receita2(id, access_token, client_id, offset, limit, opts = {})
	      
	      # verify the required parameter 'id' is set
	      raise "Missing the required parameter 'id' when calling ptr_ft_receita2" if id.nil?
	      
	      # verify the required parameter 'access_token' is set
	      raise "Missing the required parameter 'access_token' when calling ptr_ft_receita2" if access_token.nil?
	      
	      # verify the required parameter 'client_id' is set
	      raise "Missing the required parameter 'client_id' when calling ptr_ft_receita2" if client_id.nil?
	      
	      # verify the required parameter 'offset' is set
	      raise "Missing the required parameter 'offset' when calling ptr_ft_receita2" if offset.nil?
	      
	      # verify the required parameter 'limit' is set
	      raise "Missing the required parameter 'limit' when calling ptr_ft_receita2" if limit.nil?
	      
	
	      # resource path
	      path = "/transparencia/receitas/{id}".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)
	
	      # query parameters
	      query_params = {}
	      query_params[:'offset'] = offset
	      query_params[:'limit'] = limit
	      query_params[:'ano'] = opts[:'ano'] if opts[:'ano']
	      query_params[:'mes'] = opts[:'mes'] if opts[:'mes']
	      query_params[:'unidade'] = opts[:'unidade'] if opts[:'unidade']
	      query_params[:'natureza'] = opts[:'natureza'] if opts[:'natureza']
	
	      # header parameters
	      header_params = {}
	
	      # HTTP header 'Accept' (if needed)
	      _header_accept = []
	      _header_accept_result = Client::Request.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result
	
	      # HTTP header 'Content-Type'
	      _header_content_type = []
	      header_params['Content-Type'] = Client::Request.select_header_content_type(_header_content_type)
	      header_params[:'access-token'] = access_token
	      header_params[:'client_id'] = client_id
	
	      # form parameters
	      form_params = {}
	
	      # http body (model)
	      post_body = nil
	      
	
	      auth_names = []
	      response = Client::Request.new(:GET, path, {:params => query_params, :headers => header_params, :form_params => form_params, :body => post_body, :auth_names => auth_names}).make.body
	      if response.is_a?(Hash)
	     	obj = Model::ReceitaResponse.new() and obj.build_from_hash(response)
	      else
		    obj = response;
	      end
	      
	    end
	
	
	    # Consulta dos sub-itens das contas.
	    # 
	    # @param access_token Access Token com as permissÃµes de acesso.
	    # @param client_id Token disponibilizado na criaÃ§Ã£o da APP.
	    # @param offset ParÃ¢metro utilizado para indicar a posiÃ§Ã£o do registro inicial que serÃ¡ trazido. A primeira posiÃ§Ã£o Ã© sempre zero (0).
	    # @param limit ParÃ¢metro utilizado para indicar a quantidade de registros que deve ser trazido na consulta.
	    # @param [Hash] opts the optional parameters
	    # @return [array[subItensContasResponse]]
	    def self.ptr_lkp_subitem_conta(access_token, client_id, offset, limit, opts = {})
	      
	      # verify the required parameter 'access_token' is set
	      raise "Missing the required parameter 'access_token' when calling ptr_lkp_subitem_conta" if access_token.nil?
	      
	      # verify the required parameter 'client_id' is set
	      raise "Missing the required parameter 'client_id' when calling ptr_lkp_subitem_conta" if client_id.nil?
	      
	      # verify the required parameter 'offset' is set
	      raise "Missing the required parameter 'offset' when calling ptr_lkp_subitem_conta" if offset.nil?
	      
	      # verify the required parameter 'limit' is set
	      raise "Missing the required parameter 'limit' when calling ptr_lkp_subitem_conta" if limit.nil?
	      
	
	      # resource path
	      path = "/transparencia/subItensContas".sub('{format}','json')
	
	      # query parameters
	      query_params = {}
	      query_params[:'offset'] = offset
	      query_params[:'limit'] = limit
	
	      # header parameters
	      header_params = {}
	
	      # HTTP header 'Accept' (if needed)
	      _header_accept = []
	      _header_accept_result = Client::Request.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result
	
	      # HTTP header 'Content-Type'
	      _header_content_type = []
	      header_params['Content-Type'] = Client::Request.select_header_content_type(_header_content_type)
	      header_params[:'access-token'] = access_token
	      header_params[:'client_id'] = client_id
	
	      # form parameters
	      form_params = {}
	
	      # http body (model)
	      post_body = nil
	      
	
	      auth_names = []
	      response = Client::Request.new(:GET, path, {:params => query_params, :headers => header_params, :form_params => form_params, :body => post_body, :auth_names => auth_names}).make.body
	      if response.is_a?(Hash)
	     	response.map {|response| obj = Model::subItensContasResponse.new() and obj.build_from_hash(response) }
	      else
		    obj = response;
	      end
	      
	    end
	
	
	    # Consulta do sub-item das contas.
	    # 
	    # @param id Identificador do registro.
	    # @param access_token Access Token com as permissÃµes de acesso.
	    # @param client_id Token disponibilizado na criaÃ§Ã£o da APP.
	    # @param offset ParÃ¢metro utilizado para indicar a posiÃ§Ã£o do registro inicial que serÃ¡ trazido. A primeira posiÃ§Ã£o Ã© sempre zero (0).
	    # @param limit ParÃ¢metro utilizado para indicar a quantidade de registros que deve ser trazido na consulta.
	    # @param [Hash] opts the optional parameters
	    # @return [subItensContasResponse]
	    def self.ptr_lkp_subitem_conta2(id, access_token, client_id, offset, limit, opts = {})
	      
	      # verify the required parameter 'id' is set
	      raise "Missing the required parameter 'id' when calling ptr_lkp_subitem_conta2" if id.nil?
	      
	      # verify the required parameter 'access_token' is set
	      raise "Missing the required parameter 'access_token' when calling ptr_lkp_subitem_conta2" if access_token.nil?
	      
	      # verify the required parameter 'client_id' is set
	      raise "Missing the required parameter 'client_id' when calling ptr_lkp_subitem_conta2" if client_id.nil?
	      
	      # verify the required parameter 'offset' is set
	      raise "Missing the required parameter 'offset' when calling ptr_lkp_subitem_conta2" if offset.nil?
	      
	      # verify the required parameter 'limit' is set
	      raise "Missing the required parameter 'limit' when calling ptr_lkp_subitem_conta2" if limit.nil?
	      
	
	      # resource path
	      path = "/transparencia/subItensContas/{id}".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)
	
	      # query parameters
	      query_params = {}
	      query_params[:'offset'] = offset
	      query_params[:'limit'] = limit
	
	      # header parameters
	      header_params = {}
	
	      # HTTP header 'Accept' (if needed)
	      _header_accept = []
	      _header_accept_result = Client::Request.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result
	
	      # HTTP header 'Content-Type'
	      _header_content_type = []
	      header_params['Content-Type'] = Client::Request.select_header_content_type(_header_content_type)
	      header_params[:'access-token'] = access_token
	      header_params[:'client_id'] = client_id
	
	      # form parameters
	      form_params = {}
	
	      # http body (model)
	      post_body = nil
	      
	
	      auth_names = []
	      response = Client::Request.new(:GET, path, {:params => query_params, :headers => header_params, :form_params => form_params, :body => post_body, :auth_names => auth_names}).make.body
	      if response.is_a?(Hash)
	     	obj = Model::subItensContasResponse.new() and obj.build_from_hash(response)
	      else
		    obj = response;
	      end
	      
	    end
	
	
	    # Consulta das sub-funÃ§Ãµes da preifeitura.
	    # 
	    # @param access_token Access Token com as permissÃµes de acesso.
	    # @param client_id Token disponibilizado na criaÃ§Ã£o da APP.
	    # @param offset ParÃ¢metro utilizado para indicar a posiÃ§Ã£o do registro inicial que serÃ¡ trazido. A primeira posiÃ§Ã£o Ã© sempre zero (0).
	    # @param limit ParÃ¢metro utilizado para indicar a quantidade de registros que deve ser trazido na consulta.
	    # @param [Hash] opts the optional parameters
	    # @return [array[SubfuncoesResponse]]
	    def self.ptr_lkp_subfuncao(access_token, client_id, offset, limit, opts = {})
	      
	      # verify the required parameter 'access_token' is set
	      raise "Missing the required parameter 'access_token' when calling ptr_lkp_subfuncao" if access_token.nil?
	      
	      # verify the required parameter 'client_id' is set
	      raise "Missing the required parameter 'client_id' when calling ptr_lkp_subfuncao" if client_id.nil?
	      
	      # verify the required parameter 'offset' is set
	      raise "Missing the required parameter 'offset' when calling ptr_lkp_subfuncao" if offset.nil?
	      
	      # verify the required parameter 'limit' is set
	      raise "Missing the required parameter 'limit' when calling ptr_lkp_subfuncao" if limit.nil?
	      
	
	      # resource path
	      path = "/transparencia/subfuncoes".sub('{format}','json')
	
	      # query parameters
	      query_params = {}
	      query_params[:'offset'] = offset
	      query_params[:'limit'] = limit
	
	      # header parameters
	      header_params = {}
	
	      # HTTP header 'Accept' (if needed)
	      _header_accept = []
	      _header_accept_result = Client::Request.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result
	
	      # HTTP header 'Content-Type'
	      _header_content_type = []
	      header_params['Content-Type'] = Client::Request.select_header_content_type(_header_content_type)
	      header_params[:'access-token'] = access_token
	      header_params[:'client_id'] = client_id
	
	      # form parameters
	      form_params = {}
	
	      # http body (model)
	      post_body = nil
	      
	
	      auth_names = []
	      response = Client::Request.new(:GET, path, {:params => query_params, :headers => header_params, :form_params => form_params, :body => post_body, :auth_names => auth_names}).make.body
	      if response.is_a?(Hash)
	     	response.map {|response| obj = Model::SubfuncoesResponse.new() and obj.build_from_hash(response) }
	      else
		    obj = response;
	      end
	      
	    end
	
	
	    # Consulta da sub-funÃ§Ã£o da preifeitura.
	    # 
	    # @param id Identificador do registro.
	    # @param access_token Access Token com as permissÃµes de acesso.
	    # @param client_id Token disponibilizado na criaÃ§Ã£o da APP.
	    # @param offset ParÃ¢metro utilizado para indicar a posiÃ§Ã£o do registro inicial que serÃ¡ trazido. A primeira posiÃ§Ã£o Ã© sempre zero (0).
	    # @param limit ParÃ¢metro utilizado para indicar a quantidade de registros que deve ser trazido na consulta.
	    # @param [Hash] opts the optional parameters
	    # @return [SubfuncoesResponse]
	    def self.ptr_lkp_subfuncao2(id, access_token, client_id, offset, limit, opts = {})
	      
	      # verify the required parameter 'id' is set
	      raise "Missing the required parameter 'id' when calling ptr_lkp_subfuncao2" if id.nil?
	      
	      # verify the required parameter 'access_token' is set
	      raise "Missing the required parameter 'access_token' when calling ptr_lkp_subfuncao2" if access_token.nil?
	      
	      # verify the required parameter 'client_id' is set
	      raise "Missing the required parameter 'client_id' when calling ptr_lkp_subfuncao2" if client_id.nil?
	      
	      # verify the required parameter 'offset' is set
	      raise "Missing the required parameter 'offset' when calling ptr_lkp_subfuncao2" if offset.nil?
	      
	      # verify the required parameter 'limit' is set
	      raise "Missing the required parameter 'limit' when calling ptr_lkp_subfuncao2" if limit.nil?
	      
	
	      # resource path
	      path = "/transparencia/subfuncoes/{id}".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)
	
	      # query parameters
	      query_params = {}
	      query_params[:'offset'] = offset
	      query_params[:'limit'] = limit
	
	      # header parameters
	      header_params = {}
	
	      # HTTP header 'Accept' (if needed)
	      _header_accept = []
	      _header_accept_result = Client::Request.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result
	
	      # HTTP header 'Content-Type'
	      _header_content_type = []
	      header_params['Content-Type'] = Client::Request.select_header_content_type(_header_content_type)
	      header_params[:'access-token'] = access_token
	      header_params[:'client_id'] = client_id
	
	      # form parameters
	      form_params = {}
	
	      # http body (model)
	      post_body = nil
	      
	
	      auth_names = []
	      response = Client::Request.new(:GET, path, {:params => query_params, :headers => header_params, :form_params => form_params, :body => post_body, :auth_names => auth_names}).make.body
	      if response.is_a?(Hash)
	     	obj = Model::SubfuncoesResponse.new() and obj.build_from_hash(response)
	      else
		    obj = response;
	      end
	      
	    end
	
	
	    # Consulta dos tipos de licitaÃ§Ãµes.
	    # 
	    # @param access_token Access Token com as permissÃµes de acesso.
	    # @param client_id Token disponibilizado na criaÃ§Ã£o da APP.
	    # @param offset ParÃ¢metro utilizado para indicar a posiÃ§Ã£o do registro inicial que serÃ¡ trazido. A primeira posiÃ§Ã£o Ã© sempre zero (0).
	    # @param limit ParÃ¢metro utilizado para indicar a quantidade de registros que deve ser trazido na consulta.
	    # @param [Hash] opts the optional parameters
	    # @return [array[tipoLicitacoesResponse]]
	    def self.ptr_lkp_tipo_licitacao(access_token, client_id, offset, limit, opts = {})
	      
	      # verify the required parameter 'access_token' is set
	      raise "Missing the required parameter 'access_token' when calling ptr_lkp_tipo_licitacao" if access_token.nil?
	      
	      # verify the required parameter 'client_id' is set
	      raise "Missing the required parameter 'client_id' when calling ptr_lkp_tipo_licitacao" if client_id.nil?
	      
	      # verify the required parameter 'offset' is set
	      raise "Missing the required parameter 'offset' when calling ptr_lkp_tipo_licitacao" if offset.nil?
	      
	      # verify the required parameter 'limit' is set
	      raise "Missing the required parameter 'limit' when calling ptr_lkp_tipo_licitacao" if limit.nil?
	      
	
	      # resource path
	      path = "/transparencia/tipoLicitacoes".sub('{format}','json')
	
	      # query parameters
	      query_params = {}
	      query_params[:'offset'] = offset
	      query_params[:'limit'] = limit
	
	      # header parameters
	      header_params = {}
	
	      # HTTP header 'Accept' (if needed)
	      _header_accept = []
	      _header_accept_result = Client::Request.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result
	
	      # HTTP header 'Content-Type'
	      _header_content_type = []
	      header_params['Content-Type'] = Client::Request.select_header_content_type(_header_content_type)
	      header_params[:'access-token'] = access_token
	      header_params[:'client_id'] = client_id
	
	      # form parameters
	      form_params = {}
	
	      # http body (model)
	      post_body = nil
	      
	
	      auth_names = []
	      response = Client::Request.new(:GET, path, {:params => query_params, :headers => header_params, :form_params => form_params, :body => post_body, :auth_names => auth_names}).make.body
	      if response.is_a?(Hash)
	     	response.map {|response| obj = Model::tipoLicitacoesResponse.new() and obj.build_from_hash(response) }
	      else
		    obj = response;
	      end
	      
	    end
	
	
	    # Consulta do tipo de licitaÃ§Ã£o.
	    # 
	    # @param id Identificador do registro.
	    # @param access_token Access Token com as permissÃµes de acesso.
	    # @param client_id Token disponibilizado na criaÃ§Ã£o da APP.
	    # @param offset ParÃ¢metro utilizado para indicar a posiÃ§Ã£o do registro inicial que serÃ¡ trazido. A primeira posiÃ§Ã£o Ã© sempre zero (0).
	    # @param limit ParÃ¢metro utilizado para indicar a quantidade de registros que deve ser trazido na consulta.
	    # @param [Hash] opts the optional parameters
	    # @return [tipoLicitacoesResponse]
	    def self.ptr_lkp_tipo_licitacao2(id, access_token, client_id, offset, limit, opts = {})
	      
	      # verify the required parameter 'id' is set
	      raise "Missing the required parameter 'id' when calling ptr_lkp_tipo_licitacao2" if id.nil?
	      
	      # verify the required parameter 'access_token' is set
	      raise "Missing the required parameter 'access_token' when calling ptr_lkp_tipo_licitacao2" if access_token.nil?
	      
	      # verify the required parameter 'client_id' is set
	      raise "Missing the required parameter 'client_id' when calling ptr_lkp_tipo_licitacao2" if client_id.nil?
	      
	      # verify the required parameter 'offset' is set
	      raise "Missing the required parameter 'offset' when calling ptr_lkp_tipo_licitacao2" if offset.nil?
	      
	      # verify the required parameter 'limit' is set
	      raise "Missing the required parameter 'limit' when calling ptr_lkp_tipo_licitacao2" if limit.nil?
	      
	
	      # resource path
	      path = "/transparencia/tipoLicitacoes/{id}".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)
	
	      # query parameters
	      query_params = {}
	      query_params[:'offset'] = offset
	      query_params[:'limit'] = limit
	
	      # header parameters
	      header_params = {}
	
	      # HTTP header 'Accept' (if needed)
	      _header_accept = []
	      _header_accept_result = Client::Request.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result
	
	      # HTTP header 'Content-Type'
	      _header_content_type = []
	      header_params['Content-Type'] = Client::Request.select_header_content_type(_header_content_type)
	      header_params[:'access-token'] = access_token
	      header_params[:'client_id'] = client_id
	
	      # form parameters
	      form_params = {}
	
	      # http body (model)
	      post_body = nil
	      
	
	      auth_names = []
	      response = Client::Request.new(:GET, path, {:params => query_params, :headers => header_params, :form_params => form_params, :body => post_body, :auth_names => auth_names}).make.body
	      if response.is_a?(Hash)
	     	obj = Model::tipoLicitacoesResponse.new() and obj.build_from_hash(response)
	      else
		    obj = response;
	      end
	      
	    end
	
	
	    # Consulta das unidades da preifeitura.
	    # 
	    # @param access_token Access Token com as permissÃµes de acesso.
	    # @param client_id Token disponibilizado na criaÃ§Ã£o da APP.
	    # @param offset ParÃ¢metro utilizado para indicar a posiÃ§Ã£o do registro inicial que serÃ¡ trazido. A primeira posiÃ§Ã£o Ã© sempre zero (0).
	    # @param limit ParÃ¢metro utilizado para indicar a quantidade de registros que deve ser trazido na consulta.
	    # @param [Hash] opts the optional parameters
	    # @return [array[UnidadesResponse]]
	    def self.ptr_lkp_unidade_orcamentaria(access_token, client_id, offset, limit, opts = {})
	      
	      # verify the required parameter 'access_token' is set
	      raise "Missing the required parameter 'access_token' when calling ptr_lkp_unidade_orcamentaria" if access_token.nil?
	      
	      # verify the required parameter 'client_id' is set
	      raise "Missing the required parameter 'client_id' when calling ptr_lkp_unidade_orcamentaria" if client_id.nil?
	      
	      # verify the required parameter 'offset' is set
	      raise "Missing the required parameter 'offset' when calling ptr_lkp_unidade_orcamentaria" if offset.nil?
	      
	      # verify the required parameter 'limit' is set
	      raise "Missing the required parameter 'limit' when calling ptr_lkp_unidade_orcamentaria" if limit.nil?
	      
	
	      # resource path
	      path = "/transparencia/unidades".sub('{format}','json')
	
	      # query parameters
	      query_params = {}
	      query_params[:'offset'] = offset
	      query_params[:'limit'] = limit
	
	      # header parameters
	      header_params = {}
	
	      # HTTP header 'Accept' (if needed)
	      _header_accept = []
	      _header_accept_result = Client::Request.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result
	
	      # HTTP header 'Content-Type'
	      _header_content_type = []
	      header_params['Content-Type'] = Client::Request.select_header_content_type(_header_content_type)
	      header_params[:'access-token'] = access_token
	      header_params[:'client_id'] = client_id
	
	      # form parameters
	      form_params = {}
	
	      # http body (model)
	      post_body = nil
	      
	
	      auth_names = []
	      response = Client::Request.new(:GET, path, {:params => query_params, :headers => header_params, :form_params => form_params, :body => post_body, :auth_names => auth_names}).make.body
	      if response.is_a?(Hash)
	     	response.map {|response| obj = Model::UnidadesResponse.new() and obj.build_from_hash(response) }
	      else
		    obj = response;
	      end
	      
	    end
	
	
	    # Consulta da unidade da preifeitura.
	    # 
	    # @param id Identificador do registro.
	    # @param access_token Access Token com as permissÃµes de acesso.
	    # @param client_id Token disponibilizado na criaÃ§Ã£o da APP.
	    # @param offset ParÃ¢metro utilizado para indicar a posiÃ§Ã£o do registro inicial que serÃ¡ trazido. A primeira posiÃ§Ã£o Ã© sempre zero (0).
	    # @param limit ParÃ¢metro utilizado para indicar a quantidade de registros que deve ser trazido na consulta.
	    # @param [Hash] opts the optional parameters
	    # @return [UnidadesResponse]
	    def self.ptr_lkp_unidade_orcamentaria2(id, access_token, client_id, offset, limit, opts = {})
	      
	      # verify the required parameter 'id' is set
	      raise "Missing the required parameter 'id' when calling ptr_lkp_unidade_orcamentaria2" if id.nil?
	      
	      # verify the required parameter 'access_token' is set
	      raise "Missing the required parameter 'access_token' when calling ptr_lkp_unidade_orcamentaria2" if access_token.nil?
	      
	      # verify the required parameter 'client_id' is set
	      raise "Missing the required parameter 'client_id' when calling ptr_lkp_unidade_orcamentaria2" if client_id.nil?
	      
	      # verify the required parameter 'offset' is set
	      raise "Missing the required parameter 'offset' when calling ptr_lkp_unidade_orcamentaria2" if offset.nil?
	      
	      # verify the required parameter 'limit' is set
	      raise "Missing the required parameter 'limit' when calling ptr_lkp_unidade_orcamentaria2" if limit.nil?
	      
	
	      # resource path
	      path = "/transparencia/unidades/{id}".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)
	
	      # query parameters
	      query_params = {}
	      query_params[:'offset'] = offset
	      query_params[:'limit'] = limit
	
	      # header parameters
	      header_params = {}
	
	      # HTTP header 'Accept' (if needed)
	      _header_accept = []
	      _header_accept_result = Client::Request.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result
	
	      # HTTP header 'Content-Type'
	      _header_content_type = []
	      header_params['Content-Type'] = Client::Request.select_header_content_type(_header_content_type)
	      header_params[:'access-token'] = access_token
	      header_params[:'client_id'] = client_id
	
	      # form parameters
	      form_params = {}
	
	      # http body (model)
	      post_body = nil
	      
	
	      auth_names = []
	      response = Client::Request.new(:GET, path, {:params => query_params, :headers => header_params, :form_params => form_params, :body => post_body, :auth_names => auth_names}).make.body
	      if response.is_a?(Hash)
	     	obj = Model::UnidadesResponse.new() and obj.build_from_hash(response)
	      else
		    obj = response;
	      end
	      
	    end
	
	
	    # Consulta de contas das unidades gestoras da prefeitura.
	    # 
	    # @param access_token Access Token com as permissÃµes de acesso.
	    # @param client_id Token disponibilizado na criaÃ§Ã£o da APP.
	    # @param offset ParÃ¢metro utilizado para indicar a posiÃ§Ã£o do registro inicial que serÃ¡ trazido. A primeira posiÃ§Ã£o Ã© sempre zero (0).
	    # @param limit ParÃ¢metro utilizado para indicar a quantidade de registros que deve ser trazido na consulta.
	    # @param [Hash] opts the optional parameters
	    # @option opts [string] :expand ParÃ¢metro utilizado para obter maiores detalhes sobre algum dos atributos do recurso. Podendo ser passados mÃºltiplos campos separados por vÃ­rgula
	    # @return [array[UnidadeGestoraResponse]]
	    def self.ptr_lkp_unidade_gestora(access_token, client_id, offset, limit, opts = {})
	      
	      # verify the required parameter 'access_token' is set
	      raise "Missing the required parameter 'access_token' when calling ptr_lkp_unidade_gestora" if access_token.nil?
	      
	      # verify the required parameter 'client_id' is set
	      raise "Missing the required parameter 'client_id' when calling ptr_lkp_unidade_gestora" if client_id.nil?
	      
	      # verify the required parameter 'offset' is set
	      raise "Missing the required parameter 'offset' when calling ptr_lkp_unidade_gestora" if offset.nil?
	      
	      # verify the required parameter 'limit' is set
	      raise "Missing the required parameter 'limit' when calling ptr_lkp_unidade_gestora" if limit.nil?
	      
	
	      # resource path
	      path = "/transparencia/unidadesGestoras".sub('{format}','json')
	
	      # query parameters
	      query_params = {}
	      query_params[:'offset'] = offset
	      query_params[:'limit'] = limit
	      query_params[:'expand'] = opts[:'expand'] if opts[:'expand']
	
	      # header parameters
	      header_params = {}
	
	      # HTTP header 'Accept' (if needed)
	      _header_accept = []
	      _header_accept_result = Client::Request.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result
	
	      # HTTP header 'Content-Type'
	      _header_content_type = []
	      header_params['Content-Type'] = Client::Request.select_header_content_type(_header_content_type)
	      header_params[:'access-token'] = access_token
	      header_params[:'client_id'] = client_id
	
	      # form parameters
	      form_params = {}
	
	      # http body (model)
	      post_body = nil
	      
	
	      auth_names = []
	      response = Client::Request.new(:GET, path, {:params => query_params, :headers => header_params, :form_params => form_params, :body => post_body, :auth_names => auth_names}).make.body
	      if response.is_a?(Hash)
	     	response.map {|response| obj = Model::UnidadeGestoraResponse.new() and obj.build_from_hash(response) }
	      else
		    obj = response;
	      end
	      
	    end
	
	
	    # Consulta de conta da unidade gestora da prefeitura.
	    # 
	    # @param id Identificador do registro.
	    # @param access_token Access Token com as permissÃµes de acesso.
	    # @param client_id Token disponibilizado na criaÃ§Ã£o da APP.
	    # @param offset ParÃ¢metro utilizado para indicar a posiÃ§Ã£o do registro inicial que serÃ¡ trazido. A primeira posiÃ§Ã£o Ã© sempre zero (0).
	    # @param limit ParÃ¢metro utilizado para indicar a quantidade de registros que deve ser trazido na consulta.
	    # @param [Hash] opts the optional parameters
	    # @option opts [string] :expand ParÃ¢metro utilizado para obter maiores detalhes sobre algum dos atributos do recurso. Podendo ser passados mÃºltiplos campos separados por vÃ­rgula
	    # @return [UnidadeGestoraResponse]
	    def self.ptr_lkp_unidade_gestora2(id, access_token, client_id, offset, limit, opts = {})
	      
	      # verify the required parameter 'id' is set
	      raise "Missing the required parameter 'id' when calling ptr_lkp_unidade_gestora2" if id.nil?
	      
	      # verify the required parameter 'access_token' is set
	      raise "Missing the required parameter 'access_token' when calling ptr_lkp_unidade_gestora2" if access_token.nil?
	      
	      # verify the required parameter 'client_id' is set
	      raise "Missing the required parameter 'client_id' when calling ptr_lkp_unidade_gestora2" if client_id.nil?
	      
	      # verify the required parameter 'offset' is set
	      raise "Missing the required parameter 'offset' when calling ptr_lkp_unidade_gestora2" if offset.nil?
	      
	      # verify the required parameter 'limit' is set
	      raise "Missing the required parameter 'limit' when calling ptr_lkp_unidade_gestora2" if limit.nil?
	      
	
	      # resource path
	      path = "/transparencia/unidadesGestoras/{id}".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)
	
	      # query parameters
	      query_params = {}
	      query_params[:'offset'] = offset
	      query_params[:'limit'] = limit
	      query_params[:'expand'] = opts[:'expand'] if opts[:'expand']
	
	      # header parameters
	      header_params = {}
	
	      # HTTP header 'Accept' (if needed)
	      _header_accept = []
	      _header_accept_result = Client::Request.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result
	
	      # HTTP header 'Content-Type'
	      _header_content_type = []
	      header_params['Content-Type'] = Client::Request.select_header_content_type(_header_content_type)
	      header_params[:'access-token'] = access_token
	      header_params[:'client_id'] = client_id
	
	      # form parameters
	      form_params = {}
	
	      # http body (model)
	      post_body = nil
	      
	
	      auth_names = []
	      response = Client::Request.new(:GET, path, {:params => query_params, :headers => header_params, :form_params => form_params, :body => post_body, :auth_names => auth_names}).make.body
	      if response.is_a?(Hash)
	     	obj = Model::UnidadeGestoraResponse.new() and obj.build_from_hash(response)
	      else
		    obj = response;
	      end
	      
	    end
	
	  end
	
  end
end
