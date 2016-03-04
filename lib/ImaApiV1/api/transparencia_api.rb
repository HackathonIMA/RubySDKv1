require "uri"

module ImaApiV1
  module Api
	
	  class TransparenciaApi
	    basePath = "http://api.ima.sp.gov.br/v1"
	    # apiInvoker = APIInvoker
	
	
	    # Consulta das aÃ§Ãµes da preifeitura.
	    # 
	    # @param client_id Token disponibilizado na criaÃ§Ã£o da APP.
	    # @param offset ParÃ¢metro utilizado para indicar a posiÃ§Ã£o do registro inicial que serÃ¡ trazido. A primeira posiÃ§Ã£o Ã© sempre zero (0).
	    # @param limit ParÃ¢metro utilizado para indicar a quantidade de registros que deve ser trazido na consulta.
	    # @param [Hash] opts the optional parameters
	    # @option opts [array[string]] :fields ParÃ¢metro utilizado para pesquisar campos especÃ­ficos
	    # @option opts [array[string]] :filters ParÃ¢metro utilizado para pesquisar valores de campos especÃ­ficos, por exemplo, para pesquisar um id de valor 123, passar o valor id:123
	    # @return [array[AcoesResponse]]
	    def self.queryfiltro_acao(client_id, offset, limit, opts = {})
	      
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
	      query_params[:'fields'] = opts[:'fields'] if opts[:'fields']
	      query_params[:'filters'] = opts[:'filters'] if opts[:'filters']
	
	      # header parameters
	      header_params = {}
	
	      # HTTP header 'Accept' (if needed)
	      _header_accept = []
	      _header_accept_result = Client::Request.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result
	
	      # HTTP header 'Content-Type'
	      _header_content_type = []
	      header_params['Content-Type'] = Client::Request.select_header_content_type(_header_content_type)
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
	    # @param client_id Token disponibilizado na criaÃ§Ã£o da APP.
	    # @param [Hash] opts the optional parameters
	    # @option opts [array[string]] :fields ParÃ¢metro utilizado para pesquisar campos especÃ­ficos
	    # @return [AcoesResponse]
	    def self.queryfiltro_acao2(id, client_id, opts = {})
	      
	      # verify the required parameter 'id' is set
	      raise "Missing the required parameter 'id' when calling queryfiltro_acao2" if id.nil?
	      
	      # verify the required parameter 'client_id' is set
	      raise "Missing the required parameter 'client_id' when calling queryfiltro_acao2" if client_id.nil?
	      
	
	      # resource path
	      path = "/transparencia/acoes/{id}".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)
	
	      # query parameters
	      query_params = {}
	      query_params[:'fields'] = opts[:'fields'] if opts[:'fields']
	
	      # header parameters
	      header_params = {}
	
	      # HTTP header 'Accept' (if needed)
	      _header_accept = []
	      _header_accept_result = Client::Request.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result
	
	      # HTTP header 'Content-Type'
	      _header_content_type = []
	      header_params['Content-Type'] = Client::Request.select_header_content_type(_header_content_type)
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
	    # @param client_id Token disponibilizado na criaÃ§Ã£o da APP.
	    # @param offset ParÃ¢metro utilizado para indicar a posiÃ§Ã£o do registro inicial que serÃ¡ trazido. A primeira posiÃ§Ã£o Ã© sempre zero (0).
	    # @param limit ParÃ¢metro utilizado para indicar a quantidade de registros que deve ser trazido na consulta.
	    # @param [Hash] opts the optional parameters
	    # @option opts [array[string]] :fields ParÃ¢metro utilizado para pesquisar campos especÃ­ficos
	    # @option opts [array[string]] :filters ParÃ¢metro utilizado para pesquisar valores de campos especÃ­ficos, por exemplo, para pesquisar um id de valor 123, passar o valor id:123
	    # @return [array[CredorResponse]]
	    def self.ptr_lkp_credor(client_id, offset, limit, opts = {})
	      
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
	      query_params[:'fields'] = opts[:'fields'] if opts[:'fields']
	      query_params[:'filters'] = opts[:'filters'] if opts[:'filters']
	
	      # header parameters
	      header_params = {}
	
	      # HTTP header 'Accept' (if needed)
	      _header_accept = []
	      _header_accept_result = Client::Request.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result
	
	      # HTTP header 'Content-Type'
	      _header_content_type = []
	      header_params['Content-Type'] = Client::Request.select_header_content_type(_header_content_type)
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
	    # @param client_id Token disponibilizado na criaÃ§Ã£o da APP.
	    # @param [Hash] opts the optional parameters
	    # @option opts [array[string]] :fields ParÃ¢metro utilizado para pesquisar campos especÃ­ficos
	    # @return [CredorResponse]
	    def self.ptr_lkp_credor2(id, client_id, opts = {})
	      
	      # verify the required parameter 'id' is set
	      raise "Missing the required parameter 'id' when calling ptr_lkp_credor2" if id.nil?
	      
	      # verify the required parameter 'client_id' is set
	      raise "Missing the required parameter 'client_id' when calling ptr_lkp_credor2" if client_id.nil?
	      
	
	      # resource path
	      path = "/transparencia/credores/{id}".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)
	
	      # query parameters
	      query_params = {}
	      query_params[:'fields'] = opts[:'fields'] if opts[:'fields']
	
	      # header parameters
	      header_params = {}
	
	      # HTTP header 'Accept' (if needed)
	      _header_accept = []
	      _header_accept_result = Client::Request.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result
	
	      # HTTP header 'Content-Type'
	      _header_content_type = []
	      header_params['Content-Type'] = Client::Request.select_header_content_type(_header_content_type)
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
	    # @param client_id Token disponibilizado na criaÃ§Ã£o da APP.
	    # @param offset ParÃ¢metro utilizado para indicar a posiÃ§Ã£o do registro inicial que serÃ¡ trazido. A primeira posiÃ§Ã£o Ã© sempre zero (0).
	    # @param limit ParÃ¢metro utilizado para indicar a quantidade de registros que deve ser trazido na consulta.
	    # @param [Hash] opts the optional parameters
	    # @option opts [array[string]] :fields ParÃ¢metro utilizado para pesquisar campos especÃ­ficos
	    # @option opts [array[string]] :filters ParÃ¢metro utilizado para pesquisar valores de campos especÃ­ficos, por exemplo, para pesquisar um id de valor 123, passar o valor id:123
	    # @return [array[despesasResponse]]
	    def self.ptr_ft_despesa(client_id, offset, limit, opts = {})
	      
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
	      query_params[:'fields'] = opts[:'fields'] if opts[:'fields']
	      query_params[:'filters'] = opts[:'filters'] if opts[:'filters']
	
	      # header parameters
	      header_params = {}
	
	      # HTTP header 'Accept' (if needed)
	      _header_accept = []
	      _header_accept_result = Client::Request.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result
	
	      # HTTP header 'Content-Type'
	      _header_content_type = []
	      header_params['Content-Type'] = Client::Request.select_header_content_type(_header_content_type)
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
	    # @param client_id Token disponibilizado na criaÃ§Ã£o da APP.
	    # @param [Hash] opts the optional parameters
	    # @option opts [array[string]] :fields ParÃ¢metro utilizado para pesquisar campos especÃ­ficos
	    # @return [despesasResponse]
	    def self.ptr_ft_despesa2(id, client_id, opts = {})
	      
	      # verify the required parameter 'id' is set
	      raise "Missing the required parameter 'id' when calling ptr_ft_despesa2" if id.nil?
	      
	      # verify the required parameter 'client_id' is set
	      raise "Missing the required parameter 'client_id' when calling ptr_ft_despesa2" if client_id.nil?
	      
	
	      # resource path
	      path = "/transparencia/despesas/{id}".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)
	
	      # query parameters
	      query_params = {}
	      query_params[:'fields'] = opts[:'fields'] if opts[:'fields']
	
	      # header parameters
	      header_params = {}
	
	      # HTTP header 'Accept' (if needed)
	      _header_accept = []
	      _header_accept_result = Client::Request.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result
	
	      # HTTP header 'Content-Type'
	      _header_content_type = []
	      header_params['Content-Type'] = Client::Request.select_header_content_type(_header_content_type)
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
	    # @param client_id Token disponibilizado na criaÃ§Ã£o da APP.
	    # @param offset ParÃ¢metro utilizado para indicar a posiÃ§Ã£o do registro inicial que serÃ¡ trazido. A primeira posiÃ§Ã£o Ã© sempre zero (0).
	    # @param limit ParÃ¢metro utilizado para indicar a quantidade de registros que deve ser trazido na consulta.
	    # @param [Hash] opts the optional parameters
	    # @option opts [array[string]] :fields ParÃ¢metro utilizado para pesquisar campos especÃ­ficos
	    # @option opts [array[string]] :filters ParÃ¢metro utilizado para pesquisar valores de campos especÃ­ficos, por exemplo, para pesquisar um id de valor 123, passar o valor id:123
	    # @return [array[ElementoDespesaResponse]]
	    def self.ptr_lkp_elemento_despesa(client_id, offset, limit, opts = {})
	      
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
	      query_params[:'fields'] = opts[:'fields'] if opts[:'fields']
	      query_params[:'filters'] = opts[:'filters'] if opts[:'filters']
	
	      # header parameters
	      header_params = {}
	
	      # HTTP header 'Accept' (if needed)
	      _header_accept = []
	      _header_accept_result = Client::Request.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result
	
	      # HTTP header 'Content-Type'
	      _header_content_type = []
	      header_params['Content-Type'] = Client::Request.select_header_content_type(_header_content_type)
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
	    # @param client_id Token disponibilizado na criaÃ§Ã£o da APP.
	    # @param [Hash] opts the optional parameters
	    # @option opts [array[string]] :fields ParÃ¢metro utilizado para pesquisar campos especÃ­ficos
	    # @return [ElementoDespesaResponse]
	    def self.ptr_lkp_elemento_despesa2(id, client_id, opts = {})
	      
	      # verify the required parameter 'id' is set
	      raise "Missing the required parameter 'id' when calling ptr_lkp_elemento_despesa2" if id.nil?
	      
	      # verify the required parameter 'client_id' is set
	      raise "Missing the required parameter 'client_id' when calling ptr_lkp_elemento_despesa2" if client_id.nil?
	      
	
	      # resource path
	      path = "/transparencia/elementos/{id}".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)
	
	      # query parameters
	      query_params = {}
	      query_params[:'fields'] = opts[:'fields'] if opts[:'fields']
	
	      # header parameters
	      header_params = {}
	
	      # HTTP header 'Accept' (if needed)
	      _header_accept = []
	      _header_accept_result = Client::Request.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result
	
	      # HTTP header 'Content-Type'
	      _header_content_type = []
	      header_params['Content-Type'] = Client::Request.select_header_content_type(_header_content_type)
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
	
	
	    # Consulta de empenhos da preifeitura.
	    # 
	    # @param client_id Token disponibilizado na criaÃ§Ã£o da APP.
	    # @param offset ParÃ¢metro utilizado para indicar a posiÃ§Ã£o do registro inicial que serÃ¡ trazido. A primeira posiÃ§Ã£o Ã© sempre zero (0).
	    # @param limit ParÃ¢metro utilizado para indicar a quantidade de registros que deve ser trazido na consulta.
	    # @param [Hash] opts the optional parameters
	    # @option opts [array[string]] :fields ParÃ¢metro utilizado para pesquisar campos especÃ­ficos
	    # @option opts [array[string]] :filters ParÃ¢metro utilizado para pesquisar valores de campos especÃ­ficos, por exemplo, para pesquisar um id de valor 123, passar o valor id:123
	    # @return [array[EmpenhoResponse]]
	    def self.ptr_lkp_ne(client_id, offset, limit, opts = {})
	      
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
	      query_params[:'fields'] = opts[:'fields'] if opts[:'fields']
	      query_params[:'filters'] = opts[:'filters'] if opts[:'filters']
	
	      # header parameters
	      header_params = {}
	
	      # HTTP header 'Accept' (if needed)
	      _header_accept = []
	      _header_accept_result = Client::Request.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result
	
	      # HTTP header 'Content-Type'
	      _header_content_type = []
	      header_params['Content-Type'] = Client::Request.select_header_content_type(_header_content_type)
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
	
	
	    # Consulta de empenho da preifeitura.
	    # 
	    # @param id Identificador do registro.
	    # @param client_id Token disponibilizado na criaÃ§Ã£o da APP.
	    # @param [Hash] opts the optional parameters
	    # @option opts [array[string]] :fields ParÃ¢metro utilizado para pesquisar campos especÃ­ficos
	    # @return [EmpenhoResponse]
	    def self.ptr_lkp_ne2(id, client_id, opts = {})
	      
	      # verify the required parameter 'id' is set
	      raise "Missing the required parameter 'id' when calling ptr_lkp_ne2" if id.nil?
	      
	      # verify the required parameter 'client_id' is set
	      raise "Missing the required parameter 'client_id' when calling ptr_lkp_ne2" if client_id.nil?
	      
	
	      # resource path
	      path = "/transparencia/empenhos/{id}".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)
	
	      # query parameters
	      query_params = {}
	      query_params[:'fields'] = opts[:'fields'] if opts[:'fields']
	
	      # header parameters
	      header_params = {}
	
	      # HTTP header 'Accept' (if needed)
	      _header_accept = []
	      _header_accept_result = Client::Request.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result
	
	      # HTTP header 'Content-Type'
	      _header_content_type = []
	      header_params['Content-Type'] = Client::Request.select_header_content_type(_header_content_type)
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
	    # @param client_id Token disponibilizado na criaÃ§Ã£o da APP.
	    # @param offset ParÃ¢metro utilizado para indicar a posiÃ§Ã£o do registro inicial que serÃ¡ trazido. A primeira posiÃ§Ã£o Ã© sempre zero (0).
	    # @param limit ParÃ¢metro utilizado para indicar a quantidade de registros que deve ser trazido na consulta.
	    # @param [Hash] opts the optional parameters
	    # @option opts [array[string]] :fields ParÃ¢metro utilizado para pesquisar campos especÃ­ficos
	    # @option opts [array[string]] :filters ParÃ¢metro utilizado para pesquisar valores de campos especÃ­ficos, por exemplo, para pesquisar um id de valor 123, passar o valor id:123
	    # @return [array[FontesResponse]]
	    def self.ptr_lkp_fonte_detalhada(client_id, offset, limit, opts = {})
	      
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
	      query_params[:'fields'] = opts[:'fields'] if opts[:'fields']
	      query_params[:'filters'] = opts[:'filters'] if opts[:'filters']
	
	      # header parameters
	      header_params = {}
	
	      # HTTP header 'Accept' (if needed)
	      _header_accept = []
	      _header_accept_result = Client::Request.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result
	
	      # HTTP header 'Content-Type'
	      _header_content_type = []
	      header_params['Content-Type'] = Client::Request.select_header_content_type(_header_content_type)
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
	    # @param client_id Token disponibilizado na criaÃ§Ã£o da APP.
	    # @param [Hash] opts the optional parameters
	    # @option opts [array[string]] :fields ParÃ¢metro utilizado para pesquisar campos especÃ­ficos
	    # @return [FontesResponse]
	    def self.ptr_lkp_fonte_detalhada2(id, client_id, opts = {})
	      
	      # verify the required parameter 'id' is set
	      raise "Missing the required parameter 'id' when calling ptr_lkp_fonte_detalhada2" if id.nil?
	      
	      # verify the required parameter 'client_id' is set
	      raise "Missing the required parameter 'client_id' when calling ptr_lkp_fonte_detalhada2" if client_id.nil?
	      
	
	      # resource path
	      path = "/transparencia/fontes/{id}".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)
	
	      # query parameters
	      query_params = {}
	      query_params[:'fields'] = opts[:'fields'] if opts[:'fields']
	
	      # header parameters
	      header_params = {}
	
	      # HTTP header 'Accept' (if needed)
	      _header_accept = []
	      _header_accept_result = Client::Request.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result
	
	      # HTTP header 'Content-Type'
	      _header_content_type = []
	      header_params['Content-Type'] = Client::Request.select_header_content_type(_header_content_type)
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
	    # @param client_id Token disponibilizado na criaÃ§Ã£o da APP.
	    # @param offset ParÃ¢metro utilizado para indicar a posiÃ§Ã£o do registro inicial que serÃ¡ trazido. A primeira posiÃ§Ã£o Ã© sempre zero (0).
	    # @param limit ParÃ¢metro utilizado para indicar a quantidade de registros que deve ser trazido na consulta.
	    # @param [Hash] opts the optional parameters
	    # @option opts [array[string]] :fields ParÃ¢metro utilizado para pesquisar campos especÃ­ficos
	    # @option opts [array[string]] :filters ParÃ¢metro utilizado para pesquisar valores de campos especÃ­ficos, por exemplo, para pesquisar um id de valor 123, passar o valor id:123
	    # @return [array[FonteDetalhadaResponse]]
	    def self.ptr_lkp_fonte(client_id, offset, limit, opts = {})
	      
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
	      query_params[:'fields'] = opts[:'fields'] if opts[:'fields']
	      query_params[:'filters'] = opts[:'filters'] if opts[:'filters']
	
	      # header parameters
	      header_params = {}
	
	      # HTTP header 'Accept' (if needed)
	      _header_accept = []
	      _header_accept_result = Client::Request.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result
	
	      # HTTP header 'Content-Type'
	      _header_content_type = []
	      header_params['Content-Type'] = Client::Request.select_header_content_type(_header_content_type)
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
	    # @param client_id Token disponibilizado na criaÃ§Ã£o da APP.
	    # @param [Hash] opts the optional parameters
	    # @option opts [array[string]] :fields ParÃ¢metro utilizado para pesquisar campos especÃ­ficos
	    # @return [FonteDetalhadaResponse]
	    def self.ptr_lkp_fonte2(id, client_id, opts = {})
	      
	      # verify the required parameter 'id' is set
	      raise "Missing the required parameter 'id' when calling ptr_lkp_fonte2" if id.nil?
	      
	      # verify the required parameter 'client_id' is set
	      raise "Missing the required parameter 'client_id' when calling ptr_lkp_fonte2" if client_id.nil?
	      
	
	      # resource path
	      path = "/transparencia/fontesDetalhadas/{id}".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)
	
	      # query parameters
	      query_params = {}
	      query_params[:'fields'] = opts[:'fields'] if opts[:'fields']
	
	      # header parameters
	      header_params = {}
	
	      # HTTP header 'Accept' (if needed)
	      _header_accept = []
	      _header_accept_result = Client::Request.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result
	
	      # HTTP header 'Content-Type'
	      _header_content_type = []
	      header_params['Content-Type'] = Client::Request.select_header_content_type(_header_content_type)
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
	    # @param client_id Token disponibilizado na criaÃ§Ã£o da APP.
	    # @param offset ParÃ¢metro utilizado para indicar a posiÃ§Ã£o do registro inicial que serÃ¡ trazido. A primeira posiÃ§Ã£o Ã© sempre zero (0).
	    # @param limit ParÃ¢metro utilizado para indicar a quantidade de registros que deve ser trazido na consulta.
	    # @param [Hash] opts the optional parameters
	    # @option opts [array[string]] :fields ParÃ¢metro utilizado para pesquisar campos especÃ­ficos
	    # @option opts [array[string]] :filters ParÃ¢metro utilizado para pesquisar valores de campos especÃ­ficos, por exemplo, para pesquisar um id de valor 123, passar o valor id:123
	    # @return [array[FuncoesResponse]]
	    def self.ptr_lkp_funcao(client_id, offset, limit, opts = {})
	      
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
	      query_params[:'fields'] = opts[:'fields'] if opts[:'fields']
	      query_params[:'filters'] = opts[:'filters'] if opts[:'filters']
	
	      # header parameters
	      header_params = {}
	
	      # HTTP header 'Accept' (if needed)
	      _header_accept = []
	      _header_accept_result = Client::Request.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result
	
	      # HTTP header 'Content-Type'
	      _header_content_type = []
	      header_params['Content-Type'] = Client::Request.select_header_content_type(_header_content_type)
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
	    # @param client_id Token disponibilizado na criaÃ§Ã£o da APP.
	    # @param [Hash] opts the optional parameters
	    # @option opts [array[string]] :fields ParÃ¢metro utilizado para pesquisar campos especÃ­ficos
	    # @return [FuncoesResponse]
	    def self.ptr_lkp_funcao2(id, client_id, opts = {})
	      
	      # verify the required parameter 'id' is set
	      raise "Missing the required parameter 'id' when calling ptr_lkp_funcao2" if id.nil?
	      
	      # verify the required parameter 'client_id' is set
	      raise "Missing the required parameter 'client_id' when calling ptr_lkp_funcao2" if client_id.nil?
	      
	
	      # resource path
	      path = "/transparencia/funcoes/{id}".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)
	
	      # query parameters
	      query_params = {}
	      query_params[:'fields'] = opts[:'fields'] if opts[:'fields']
	
	      # header parameters
	      header_params = {}
	
	      # HTTP header 'Accept' (if needed)
	      _header_accept = []
	      _header_accept_result = Client::Request.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result
	
	      # HTTP header 'Content-Type'
	      _header_content_type = []
	      header_params['Content-Type'] = Client::Request.select_header_content_type(_header_content_type)
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
	    # @param client_id Token disponibilizado na criaÃ§Ã£o da APP.
	    # @param offset ParÃ¢metro utilizado para indicar a posiÃ§Ã£o do registro inicial que serÃ¡ trazido. A primeira posiÃ§Ã£o Ã© sempre zero (0).
	    # @param limit ParÃ¢metro utilizado para indicar a quantidade de registros que deve ser trazido na consulta.
	    # @param [Hash] opts the optional parameters
	    # @option opts [array[string]] :fields ParÃ¢metro utilizado para pesquisar campos especÃ­ficos
	    # @option opts [array[string]] :filters ParÃ¢metro utilizado para pesquisar valores de campos especÃ­ficos, por exemplo, para pesquisar um id de valor 123, passar o valor id:123
	    # @return [array[naturezasResponse]]
	    def self.ptr_lkp_subalinea_receita(client_id, offset, limit, opts = {})
	      
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
	      query_params[:'fields'] = opts[:'fields'] if opts[:'fields']
	      query_params[:'filters'] = opts[:'filters'] if opts[:'filters']
	
	      # header parameters
	      header_params = {}
	
	      # HTTP header 'Accept' (if needed)
	      _header_accept = []
	      _header_accept_result = Client::Request.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result
	
	      # HTTP header 'Content-Type'
	      _header_content_type = []
	      header_params['Content-Type'] = Client::Request.select_header_content_type(_header_content_type)
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
	    # @param client_id Token disponibilizado na criaÃ§Ã£o da APP.
	    # @param [Hash] opts the optional parameters
	    # @option opts [array[string]] :fields ParÃ¢metro utilizado para pesquisar campos especÃ­ficos
	    # @return [naturezasResponse]
	    def self.ptr_lkp_subalinea_receita2(id, client_id, opts = {})
	      
	      # verify the required parameter 'id' is set
	      raise "Missing the required parameter 'id' when calling ptr_lkp_subalinea_receita2" if id.nil?
	      
	      # verify the required parameter 'client_id' is set
	      raise "Missing the required parameter 'client_id' when calling ptr_lkp_subalinea_receita2" if client_id.nil?
	      
	
	      # resource path
	      path = "/transparencia/naturezas/{id}".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)
	
	      # query parameters
	      query_params = {}
	      query_params[:'fields'] = opts[:'fields'] if opts[:'fields']
	
	      # header parameters
	      header_params = {}
	
	      # HTTP header 'Accept' (if needed)
	      _header_accept = []
	      _header_accept_result = Client::Request.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result
	
	      # HTTP header 'Content-Type'
	      _header_content_type = []
	      header_params['Content-Type'] = Client::Request.select_header_content_type(_header_content_type)
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
	    # @param client_id Token disponibilizado na criaÃ§Ã£o da APP.
	    # @param offset ParÃ¢metro utilizado para indicar a posiÃ§Ã£o do registro inicial que serÃ¡ trazido. A primeira posiÃ§Ã£o Ã© sempre zero (0).
	    # @param limit ParÃ¢metro utilizado para indicar a quantidade de registros que deve ser trazido na consulta.
	    # @param [Hash] opts the optional parameters
	    # @option opts [array[string]] :fields ParÃ¢metro utilizado para pesquisar campos especÃ­ficos
	    # @option opts [array[string]] :filters ParÃ¢metro utilizado para pesquisar valores de campos especÃ­ficos, por exemplo, para pesquisar um id de valor 123, passar o valor id:123
	    # @return [array[ProgramaResponse]]
	    def self.ptr_lkp_programa(client_id, offset, limit, opts = {})
	      
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
	      query_params[:'fields'] = opts[:'fields'] if opts[:'fields']
	      query_params[:'filters'] = opts[:'filters'] if opts[:'filters']
	
	      # header parameters
	      header_params = {}
	
	      # HTTP header 'Accept' (if needed)
	      _header_accept = []
	      _header_accept_result = Client::Request.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result
	
	      # HTTP header 'Content-Type'
	      _header_content_type = []
	      header_params['Content-Type'] = Client::Request.select_header_content_type(_header_content_type)
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
	    # @param client_id Token disponibilizado na criaÃ§Ã£o da APP.
	    # @param [Hash] opts the optional parameters
	    # @option opts [array[string]] :fields ParÃ¢metro utilizado para pesquisar campos especÃ­ficos
	    # @return [ProgramaResponse]
	    def self.ptr_lkp_programa2(id, client_id, opts = {})
	      
	      # verify the required parameter 'id' is set
	      raise "Missing the required parameter 'id' when calling ptr_lkp_programa2" if id.nil?
	      
	      # verify the required parameter 'client_id' is set
	      raise "Missing the required parameter 'client_id' when calling ptr_lkp_programa2" if client_id.nil?
	      
	
	      # resource path
	      path = "/transparencia/programas/{id}".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)
	
	      # query parameters
	      query_params = {}
	      query_params[:'fields'] = opts[:'fields'] if opts[:'fields']
	
	      # header parameters
	      header_params = {}
	
	      # HTTP header 'Accept' (if needed)
	      _header_accept = []
	      _header_accept_result = Client::Request.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result
	
	      # HTTP header 'Content-Type'
	      _header_content_type = []
	      header_params['Content-Type'] = Client::Request.select_header_content_type(_header_content_type)
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
	    # @param client_id Token disponibilizado na criaÃ§Ã£o da APP.
	    # @param offset ParÃ¢metro utilizado para indicar a posiÃ§Ã£o do registro inicial que serÃ¡ trazido. A primeira posiÃ§Ã£o Ã© sempre zero (0).
	    # @param limit ParÃ¢metro utilizado para indicar a quantidade de registros que deve ser trazido na consulta.
	    # @param [Hash] opts the optional parameters
	    # @option opts [array[string]] :fields ParÃ¢metro utilizado para pesquisar campos especÃ­ficos
	    # @option opts [array[string]] :filters ParÃ¢metro utilizado para pesquisar valores de campos especÃ­ficos, por exemplo, para pesquisar um id de valor 123, passar o valor id:123
	    # @return [array[ProjetoAtividadeResponse]]
	    def self.ptr_lkp_projeto_atividade(client_id, offset, limit, opts = {})
	      
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
	      query_params[:'fields'] = opts[:'fields'] if opts[:'fields']
	      query_params[:'filters'] = opts[:'filters'] if opts[:'filters']
	
	      # header parameters
	      header_params = {}
	
	      # HTTP header 'Accept' (if needed)
	      _header_accept = []
	      _header_accept_result = Client::Request.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result
	
	      # HTTP header 'Content-Type'
	      _header_content_type = []
	      header_params['Content-Type'] = Client::Request.select_header_content_type(_header_content_type)
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
	    # @param client_id Token disponibilizado na criaÃ§Ã£o da APP.
	    # @param [Hash] opts the optional parameters
	    # @option opts [array[string]] :fields ParÃ¢metro utilizado para pesquisar campos especÃ­ficos
	    # @return [ProjetoAtividadeResponse]
	    def self.ptr_lkp_projeto_atividade2(id, client_id, opts = {})
	      
	      # verify the required parameter 'id' is set
	      raise "Missing the required parameter 'id' when calling ptr_lkp_projeto_atividade2" if id.nil?
	      
	      # verify the required parameter 'client_id' is set
	      raise "Missing the required parameter 'client_id' when calling ptr_lkp_projeto_atividade2" if client_id.nil?
	      
	
	      # resource path
	      path = "/transparencia/projetosAtividades/{id}".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)
	
	      # query parameters
	      query_params = {}
	      query_params[:'fields'] = opts[:'fields'] if opts[:'fields']
	
	      # header parameters
	      header_params = {}
	
	      # HTTP header 'Accept' (if needed)
	      _header_accept = []
	      _header_accept_result = Client::Request.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result
	
	      # HTTP header 'Content-Type'
	      _header_content_type = []
	      header_params['Content-Type'] = Client::Request.select_header_content_type(_header_content_type)
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
	    # @param client_id Token disponibilizado na criaÃ§Ã£o da APP.
	    # @param offset ParÃ¢metro utilizado para indicar a posiÃ§Ã£o do registro inicial que serÃ¡ trazido. A primeira posiÃ§Ã£o Ã© sempre zero (0).
	    # @param limit ParÃ¢metro utilizado para indicar a quantidade de registros que deve ser trazido na consulta.
	    # @param [Hash] opts the optional parameters
	    # @option opts [array[string]] :fields ParÃ¢metro utilizado para pesquisar campos especÃ­ficos
	    # @option opts [array[string]] :filters ParÃ¢metro utilizado para pesquisar valores de campos especÃ­ficos, por exemplo, para pesquisar um id de valor 123, passar o valor id:123
	    # @return [array[ReceitaResponse]]
	    def self.ptr_ft_receita(client_id, offset, limit, opts = {})
	      
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
	      query_params[:'fields'] = opts[:'fields'] if opts[:'fields']
	      query_params[:'filters'] = opts[:'filters'] if opts[:'filters']
	
	      # header parameters
	      header_params = {}
	
	      # HTTP header 'Accept' (if needed)
	      _header_accept = []
	      _header_accept_result = Client::Request.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result
	
	      # HTTP header 'Content-Type'
	      _header_content_type = []
	      header_params['Content-Type'] = Client::Request.select_header_content_type(_header_content_type)
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
	    # @param client_id Token disponibilizado na criaÃ§Ã£o da APP.
	    # @param [Hash] opts the optional parameters
	    # @option opts [array[string]] :fields ParÃ¢metro utilizado para pesquisar campos especÃ­ficos
	    # @return [ReceitaResponse]
	    def self.ptr_ft_receita2(id, client_id, opts = {})
	      
	      # verify the required parameter 'id' is set
	      raise "Missing the required parameter 'id' when calling ptr_ft_receita2" if id.nil?
	      
	      # verify the required parameter 'client_id' is set
	      raise "Missing the required parameter 'client_id' when calling ptr_ft_receita2" if client_id.nil?
	      
	
	      # resource path
	      path = "/transparencia/receitas/{id}".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)
	
	      # query parameters
	      query_params = {}
	      query_params[:'fields'] = opts[:'fields'] if opts[:'fields']
	
	      # header parameters
	      header_params = {}
	
	      # HTTP header 'Accept' (if needed)
	      _header_accept = []
	      _header_accept_result = Client::Request.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result
	
	      # HTTP header 'Content-Type'
	      _header_content_type = []
	      header_params['Content-Type'] = Client::Request.select_header_content_type(_header_content_type)
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
	    # @param client_id Token disponibilizado na criaÃ§Ã£o da APP.
	    # @param offset ParÃ¢metro utilizado para indicar a posiÃ§Ã£o do registro inicial que serÃ¡ trazido. A primeira posiÃ§Ã£o Ã© sempre zero (0).
	    # @param limit ParÃ¢metro utilizado para indicar a quantidade de registros que deve ser trazido na consulta.
	    # @param [Hash] opts the optional parameters
	    # @option opts [array[string]] :fields ParÃ¢metro utilizado para pesquisar campos especÃ­ficos
	    # @option opts [array[string]] :filters ParÃ¢metro utilizado para pesquisar valores de campos especÃ­ficos, por exemplo, para pesquisar um id de valor 123, passar o valor id:123
	    # @return [array[subItensContasResponse]]
	    def self.ptr_lkp_subitem_conta(client_id, offset, limit, opts = {})
	      
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
	      query_params[:'fields'] = opts[:'fields'] if opts[:'fields']
	      query_params[:'filters'] = opts[:'filters'] if opts[:'filters']
	
	      # header parameters
	      header_params = {}
	
	      # HTTP header 'Accept' (if needed)
	      _header_accept = []
	      _header_accept_result = Client::Request.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result
	
	      # HTTP header 'Content-Type'
	      _header_content_type = []
	      header_params['Content-Type'] = Client::Request.select_header_content_type(_header_content_type)
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
	    # @param client_id Token disponibilizado na criaÃ§Ã£o da APP.
	    # @param [Hash] opts the optional parameters
	    # @option opts [array[string]] :fields ParÃ¢metro utilizado para pesquisar campos especÃ­ficos
	    # @return [subItensContasResponse]
	    def self.ptr_lkp_subitem_conta2(id, client_id, opts = {})
	      
	      # verify the required parameter 'id' is set
	      raise "Missing the required parameter 'id' when calling ptr_lkp_subitem_conta2" if id.nil?
	      
	      # verify the required parameter 'client_id' is set
	      raise "Missing the required parameter 'client_id' when calling ptr_lkp_subitem_conta2" if client_id.nil?
	      
	
	      # resource path
	      path = "/transparencia/subItensContas/{id}".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)
	
	      # query parameters
	      query_params = {}
	      query_params[:'fields'] = opts[:'fields'] if opts[:'fields']
	
	      # header parameters
	      header_params = {}
	
	      # HTTP header 'Accept' (if needed)
	      _header_accept = []
	      _header_accept_result = Client::Request.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result
	
	      # HTTP header 'Content-Type'
	      _header_content_type = []
	      header_params['Content-Type'] = Client::Request.select_header_content_type(_header_content_type)
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
	    # @param client_id Token disponibilizado na criaÃ§Ã£o da APP.
	    # @param offset ParÃ¢metro utilizado para indicar a posiÃ§Ã£o do registro inicial que serÃ¡ trazido. A primeira posiÃ§Ã£o Ã© sempre zero (0).
	    # @param limit ParÃ¢metro utilizado para indicar a quantidade de registros que deve ser trazido na consulta.
	    # @param [Hash] opts the optional parameters
	    # @option opts [array[string]] :fields ParÃ¢metro utilizado para pesquisar campos especÃ­ficos
	    # @option opts [array[string]] :filters ParÃ¢metro utilizado para pesquisar valores de campos especÃ­ficos, por exemplo, para pesquisar um id de valor 123, passar o valor id:123
	    # @return [array[SubfuncoesResponse]]
	    def self.ptr_lkp_subfuncao(client_id, offset, limit, opts = {})
	      
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
	      query_params[:'fields'] = opts[:'fields'] if opts[:'fields']
	      query_params[:'filters'] = opts[:'filters'] if opts[:'filters']
	
	      # header parameters
	      header_params = {}
	
	      # HTTP header 'Accept' (if needed)
	      _header_accept = []
	      _header_accept_result = Client::Request.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result
	
	      # HTTP header 'Content-Type'
	      _header_content_type = []
	      header_params['Content-Type'] = Client::Request.select_header_content_type(_header_content_type)
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
	    # @param client_id Token disponibilizado na criaÃ§Ã£o da APP.
	    # @param [Hash] opts the optional parameters
	    # @option opts [array[string]] :fields ParÃ¢metro utilizado para pesquisar campos especÃ­ficos
	    # @return [SubfuncoesResponse]
	    def self.ptr_lkp_subfuncao2(id, client_id, opts = {})
	      
	      # verify the required parameter 'id' is set
	      raise "Missing the required parameter 'id' when calling ptr_lkp_subfuncao2" if id.nil?
	      
	      # verify the required parameter 'client_id' is set
	      raise "Missing the required parameter 'client_id' when calling ptr_lkp_subfuncao2" if client_id.nil?
	      
	
	      # resource path
	      path = "/transparencia/subfuncoes/{id}".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)
	
	      # query parameters
	      query_params = {}
	      query_params[:'fields'] = opts[:'fields'] if opts[:'fields']
	
	      # header parameters
	      header_params = {}
	
	      # HTTP header 'Accept' (if needed)
	      _header_accept = []
	      _header_accept_result = Client::Request.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result
	
	      # HTTP header 'Content-Type'
	      _header_content_type = []
	      header_params['Content-Type'] = Client::Request.select_header_content_type(_header_content_type)
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
	    # @param client_id Token disponibilizado na criaÃ§Ã£o da APP.
	    # @param offset ParÃ¢metro utilizado para indicar a posiÃ§Ã£o do registro inicial que serÃ¡ trazido. A primeira posiÃ§Ã£o Ã© sempre zero (0).
	    # @param limit ParÃ¢metro utilizado para indicar a quantidade de registros que deve ser trazido na consulta.
	    # @param [Hash] opts the optional parameters
	    # @option opts [array[string]] :fields ParÃ¢metro utilizado para pesquisar campos especÃ­ficos
	    # @option opts [array[string]] :filters ParÃ¢metro utilizado para pesquisar valores de campos especÃ­ficos, por exemplo, para pesquisar um id de valor 123, passar o valor id:123
	    # @return [array[tipoLicitacoesResponse]]
	    def self.ptr_lkp_tipo_licitacao(client_id, offset, limit, opts = {})
	      
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
	      query_params[:'fields'] = opts[:'fields'] if opts[:'fields']
	      query_params[:'filters'] = opts[:'filters'] if opts[:'filters']
	
	      # header parameters
	      header_params = {}
	
	      # HTTP header 'Accept' (if needed)
	      _header_accept = []
	      _header_accept_result = Client::Request.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result
	
	      # HTTP header 'Content-Type'
	      _header_content_type = []
	      header_params['Content-Type'] = Client::Request.select_header_content_type(_header_content_type)
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
	    # @param client_id Token disponibilizado na criaÃ§Ã£o da APP.
	    # @param [Hash] opts the optional parameters
	    # @option opts [array[string]] :fields ParÃ¢metro utilizado para pesquisar campos especÃ­ficos
	    # @return [tipoLicitacoesResponse]
	    def self.ptr_lkp_tipo_licitacao2(id, client_id, opts = {})
	      
	      # verify the required parameter 'id' is set
	      raise "Missing the required parameter 'id' when calling ptr_lkp_tipo_licitacao2" if id.nil?
	      
	      # verify the required parameter 'client_id' is set
	      raise "Missing the required parameter 'client_id' when calling ptr_lkp_tipo_licitacao2" if client_id.nil?
	      
	
	      # resource path
	      path = "/transparencia/tipoLicitacoes/{id}".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)
	
	      # query parameters
	      query_params = {}
	      query_params[:'fields'] = opts[:'fields'] if opts[:'fields']
	
	      # header parameters
	      header_params = {}
	
	      # HTTP header 'Accept' (if needed)
	      _header_accept = []
	      _header_accept_result = Client::Request.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result
	
	      # HTTP header 'Content-Type'
	      _header_content_type = []
	      header_params['Content-Type'] = Client::Request.select_header_content_type(_header_content_type)
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
	    # @param client_id Token disponibilizado na criaÃ§Ã£o da APP.
	    # @param offset ParÃ¢metro utilizado para indicar a posiÃ§Ã£o do registro inicial que serÃ¡ trazido. A primeira posiÃ§Ã£o Ã© sempre zero (0).
	    # @param limit ParÃ¢metro utilizado para indicar a quantidade de registros que deve ser trazido na consulta.
	    # @param [Hash] opts the optional parameters
	    # @option opts [array[string]] :fields ParÃ¢metro utilizado para pesquisar campos especÃ­ficos
	    # @option opts [array[string]] :filters ParÃ¢metro utilizado para pesquisar valores de campos especÃ­ficos, por exemplo, para pesquisar um id de valor 123, passar o valor id:123
	    # @return [array[UnidadesResponse]]
	    def self.ptr_lkp_unidade_orcamentaria(client_id, offset, limit, opts = {})
	      
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
	      query_params[:'fields'] = opts[:'fields'] if opts[:'fields']
	      query_params[:'filters'] = opts[:'filters'] if opts[:'filters']
	
	      # header parameters
	      header_params = {}
	
	      # HTTP header 'Accept' (if needed)
	      _header_accept = []
	      _header_accept_result = Client::Request.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result
	
	      # HTTP header 'Content-Type'
	      _header_content_type = []
	      header_params['Content-Type'] = Client::Request.select_header_content_type(_header_content_type)
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
	    # @param client_id Token disponibilizado na criaÃ§Ã£o da APP.
	    # @param [Hash] opts the optional parameters
	    # @option opts [array[string]] :fields ParÃ¢metro utilizado para pesquisar campos especÃ­ficos
	    # @return [UnidadesResponse]
	    def self.ptr_lkp_unidade_orcamentaria2(id, client_id, opts = {})
	      
	      # verify the required parameter 'id' is set
	      raise "Missing the required parameter 'id' when calling ptr_lkp_unidade_orcamentaria2" if id.nil?
	      
	      # verify the required parameter 'client_id' is set
	      raise "Missing the required parameter 'client_id' when calling ptr_lkp_unidade_orcamentaria2" if client_id.nil?
	      
	
	      # resource path
	      path = "/transparencia/unidades/{id}".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)
	
	      # query parameters
	      query_params = {}
	      query_params[:'fields'] = opts[:'fields'] if opts[:'fields']
	
	      # header parameters
	      header_params = {}
	
	      # HTTP header 'Accept' (if needed)
	      _header_accept = []
	      _header_accept_result = Client::Request.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result
	
	      # HTTP header 'Content-Type'
	      _header_content_type = []
	      header_params['Content-Type'] = Client::Request.select_header_content_type(_header_content_type)
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
	    # @param client_id Token disponibilizado na criaÃ§Ã£o da APP.
	    # @param offset ParÃ¢metro utilizado para indicar a posiÃ§Ã£o do registro inicial que serÃ¡ trazido. A primeira posiÃ§Ã£o Ã© sempre zero (0).
	    # @param limit ParÃ¢metro utilizado para indicar a quantidade de registros que deve ser trazido na consulta.
	    # @param [Hash] opts the optional parameters
	    # @option opts [array[string]] :fields ParÃ¢metro utilizado para pesquisar campos especÃ­ficos
	    # @option opts [array[string]] :filters ParÃ¢metro utilizado para pesquisar valores de campos especÃ­ficos, por exemplo, para pesquisar um id de valor 123, passar o valor id:123
	    # @return [array[UnidadeGestoraResponse]]
	    def self.ptr_lkp_unidade_gestora(client_id, offset, limit, opts = {})
	      
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
	      query_params[:'fields'] = opts[:'fields'] if opts[:'fields']
	      query_params[:'filters'] = opts[:'filters'] if opts[:'filters']
	
	      # header parameters
	      header_params = {}
	
	      # HTTP header 'Accept' (if needed)
	      _header_accept = []
	      _header_accept_result = Client::Request.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result
	
	      # HTTP header 'Content-Type'
	      _header_content_type = []
	      header_params['Content-Type'] = Client::Request.select_header_content_type(_header_content_type)
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
	    # @param client_id Token disponibilizado na criaÃ§Ã£o da APP.
	    # @param offset ParÃ¢metro utilizado para indicar a posiÃ§Ã£o do registro inicial que serÃ¡ trazido. A primeira posiÃ§Ã£o Ã© sempre zero (0).
	    # @param limit ParÃ¢metro utilizado para indicar a quantidade de registros que deve ser trazido na consulta.
	    # @param [Hash] opts the optional parameters
	    # @option opts [array[string]] :fields ParÃ¢metro utilizado para pesquisar campos especÃ­ficos
	    # @return [UnidadeGestoraResponse]
	    def self.ptr_lkp_unidade_gestora2(id, client_id, offset, limit, opts = {})
	      
	      # verify the required parameter 'id' is set
	      raise "Missing the required parameter 'id' when calling ptr_lkp_unidade_gestora2" if id.nil?
	      
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
	      query_params[:'fields'] = opts[:'fields'] if opts[:'fields']
	
	      # header parameters
	      header_params = {}
	
	      # HTTP header 'Accept' (if needed)
	      _header_accept = []
	      _header_accept_result = Client::Request.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result
	
	      # HTTP header 'Content-Type'
	      _header_content_type = []
	      header_params['Content-Type'] = Client::Request.select_header_content_type(_header_content_type)
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
