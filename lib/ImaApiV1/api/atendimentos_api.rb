require "uri"

module ImaApiV1
  module Api
	
	  class AtendimentosApi
	    basePath = "http://api.ima.sp.gov.br/v1"
	    # apiInvoker = APIInvoker
	
	
	    # Dados sobre atendimentos
	    # O recurso 156 foi projetado para retornar todas as informaÃ§Ãµes sobre solicitaÃ§Ãµes e atendimentos realizados pela prefeitura de Campinas. Ã recomendado o uso de filtros passados na query param para retornar conjuntos de informaÃ§Ãµes especificas.\n
	    # @param access_token Access Token com as permissÃµes de acesso.
	    # @param client_id Token disponibilizado na criaÃ§Ã£o da APP.
	    # @param offset ParÃ¢metro utilizado para indicar a posiÃ§Ã£o do registro inicial que serÃ¡ trazido. A primeira posiÃ§Ã£o Ã© sempre zero (0).
	    # @param limit ParÃ¢metro utilizado para indicar a quantidade de registros que deve ser trazido na consulta.
	    # @param [Hash] opts the optional parameters
	    # @option opts [string] :nome_regiao Filtra os resultados por Ã¡rea regional. (Exemplo &gt; &#39;LESTE&#39;)
	    # @option opts [int] :ano_solicitacao Filtra os resultados por ano em que a solicitaÃ§Ã£o foi feita.
	    # @option opts [string] :codigo_cep Filtra os resultados pelo CEP em que a solicitacao estÃ¡ cadastrada.
	    # @option opts [string] :descricao_status Filtra os resultados por status, passado o tipo de status referente. (Exemplo &gt; &#39;EXECUTADO&#39;)
	    # @return [array[SolicitacaoResponse]]
	    def self.156_get(access_token, client_id, offset, limit, opts = {})
	      
	      # verify the required parameter 'access_token' is set
	      raise "Missing the required parameter 'access_token' when calling 156_get" if access_token.nil?
	      
	      # verify the required parameter 'client_id' is set
	      raise "Missing the required parameter 'client_id' when calling 156_get" if client_id.nil?
	      
	      # verify the required parameter 'offset' is set
	      raise "Missing the required parameter 'offset' when calling 156_get" if offset.nil?
	      
	      # verify the required parameter 'limit' is set
	      raise "Missing the required parameter 'limit' when calling 156_get" if limit.nil?
	      
	
	      # resource path
	      path = "/156".sub('{format}','json')
	
	      # query parameters
	      query_params = {}
	      query_params[:'offset'] = offset
	      query_params[:'limit'] = limit
	      query_params[:'nomeRegiao'] = opts[:'nome_regiao'] if opts[:'nome_regiao']
	      query_params[:'anoSolicitacao'] = opts[:'ano_solicitacao'] if opts[:'ano_solicitacao']
	      query_params[:'codigoCEP'] = opts[:'codigo_cep'] if opts[:'codigo_cep']
	      query_params[:'descricaoStatus'] = opts[:'descricao_status'] if opts[:'descricao_status']
	
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
	     	response.map {|response| obj = Model::SolicitacaoResponse.new() and obj.build_from_hash(response) }
	      else
		    obj = response;
	      end
	      
	    end
	
	
	    # Dado de um atendimento especifico.
	    # 
	    # @param access_token Access Token com as permissÃµes de acesso.
	    # @param client_id Token disponibilizado na criaÃ§Ã£o da APP.
	    # @param id Identificador da solicitaÃ§Ã£o
	    # @param [Hash] opts the optional parameters
	    # @return [SolicitacaoResponse]
	    def self.156_id_get(access_token, client_id, id, opts = {})
	      
	      # verify the required parameter 'access_token' is set
	      raise "Missing the required parameter 'access_token' when calling 156_id_get" if access_token.nil?
	      
	      # verify the required parameter 'client_id' is set
	      raise "Missing the required parameter 'client_id' when calling 156_id_get" if client_id.nil?
	      
	      # verify the required parameter 'id' is set
	      raise "Missing the required parameter 'id' when calling 156_id_get" if id.nil?
	      
	
	      # resource path
	      path = "/156/{id}".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)
	
	      # query parameters
	      query_params = {}
	
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
	     	obj = Model::SolicitacaoResponse.new() and obj.build_from_hash(response)
	      else
		    obj = response;
	      end
	      
	    end
	
	  end
	
  end
end
