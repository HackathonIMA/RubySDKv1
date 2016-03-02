require "uri"

module ImaApiV1
  module Api
	
	  class ProtocoloApi
	    basePath = "http://api.ima.sp.gov.br/v1"
	    # apiInvoker = APIInvoker
	
	
	    # Dados sobre protocolo
	    # O recurso de protocolo existe para fornecer informaÃ§Ãµes sobre protocolos gerados pela prefeitura.\n
	    # @param access_token Access Token com as permissÃµes de acesso.
	    # @param client_id Token disponibilizado na criaÃ§Ã£o da APP.
	    # @param offset ParÃ¢metro utilizado para indicar a posiÃ§Ã£o do registro inicial que serÃ¡ trazido. A primeira posiÃ§Ã£o Ã© sempre zero (0).
	    # @param limit ParÃ¢metro utilizado para indicar a quantidade de registros que deve ser trazido na consulta.
	    # @param [Hash] opts the optional parameters
	    # @option opts [string] :nome_regiao Filtra resultados por Ã¡rea regional. (Exemplo &gt; &#39;NORTE&#39;)
	    # @option opts [int] :codigo_bairro Filtra resultados por cÃ³digo do bairro.
	    # @option opts [string] :sigla_expediente Filtra resultados pelo cÃ³digo da secretaria expediente.
	    # @option opts [int] :ano_processo Filtra resultados pelo ano em que foram lanÃ§ados.
	    # @return [array[ProtocoloResponse]]
	    def self.protocolo_get(access_token, client_id, offset, limit, opts = {})
	      
	      # verify the required parameter 'access_token' is set
	      raise "Missing the required parameter 'access_token' when calling protocolo_get" if access_token.nil?
	      
	      # verify the required parameter 'client_id' is set
	      raise "Missing the required parameter 'client_id' when calling protocolo_get" if client_id.nil?
	      
	      # verify the required parameter 'offset' is set
	      raise "Missing the required parameter 'offset' when calling protocolo_get" if offset.nil?
	      
	      # verify the required parameter 'limit' is set
	      raise "Missing the required parameter 'limit' when calling protocolo_get" if limit.nil?
	      
	
	      # resource path
	      path = "/protocolo".sub('{format}','json')
	
	      # query parameters
	      query_params = {}
	      query_params[:'offset'] = offset
	      query_params[:'limit'] = limit
	      query_params[:'nomeRegiao'] = opts[:'nome_regiao'] if opts[:'nome_regiao']
	      query_params[:'codigoBairro'] = opts[:'codigo_bairro'] if opts[:'codigo_bairro']
	      query_params[:'siglaExpediente'] = opts[:'sigla_expediente'] if opts[:'sigla_expediente']
	      query_params[:'anoProcesso'] = opts[:'ano_processo'] if opts[:'ano_processo']
	
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
	     	response.map {|response| obj = Model::ProtocoloResponse.new() and obj.build_from_hash(response) }
	      else
		    obj = response;
	      end
	      
	    end
	
	
	    # Dados sobre um protocolo especifico.
	    # 
	    # @param access_token Access Token com as permissÃµes de acesso.
	    # @param client_id Token disponibilizado na criaÃ§Ã£o da APP.
	    # @param id Identificador do protocolo.
	    # @param [Hash] opts the optional parameters
	    # @return [ProtocoloResponse]
	    def self.protocolo_id_get(access_token, client_id, id, opts = {})
	      
	      # verify the required parameter 'access_token' is set
	      raise "Missing the required parameter 'access_token' when calling protocolo_id_get" if access_token.nil?
	      
	      # verify the required parameter 'client_id' is set
	      raise "Missing the required parameter 'client_id' when calling protocolo_id_get" if client_id.nil?
	      
	      # verify the required parameter 'id' is set
	      raise "Missing the required parameter 'id' when calling protocolo_id_get" if id.nil?
	      
	
	      # resource path
	      path = "/protocolo/{id}".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)
	
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
	     	obj = Model::ProtocoloResponse.new() and obj.build_from_hash(response)
	      else
		    obj = response;
	      end
	      
	    end
	
	  end
	
  end
end
