require "uri"

module ImaApiV1
  module Api
	
	  class SadeApi
	    basePath = "http://api.ima.sp.gov.br/v1"
	    # apiInvoker = APIInvoker
	
	
	    # Dados sobre sÃ¡ude
	    # O recurso sÃ¡ude tem a funÃ§Ã£o de mostrar os dados sobre atendimentos hospitalares realizados em hospitais da Ã¡rea de Campinas.\n
	    # @param access_token Access Token com as permissÃµes de acesso.
	    # @param client_id Token disponibilizado na criaÃ§Ã£o da APP.
	    # @param offset ParÃ¢metro utilizado para indicar a posiÃ§Ã£o do registro inicial que serÃ¡ trazido. A primeira posiÃ§Ã£o Ã© sempre zero (0).
	    # @param limit ParÃ¢metro utilizado para indicar a quantidade de registros que deve ser trazido na consulta.
	    # @param [Hash] opts the optional parameters
	    # @option opts [string] :uf Filtra resultados por UF.
	    # @option opts [string] :municipio Filtra resultados por cidade.
	    # @option opts [int] :codigo_procedimento_sus Filtra resultados por cÃ³digo de procedimento.
	    # @option opts [int] :codigo_atividade_profissional Filtra resultados pelo cÃ³digo do profissional.
	    # @option opts [string] :distrito_atendimento Filtra resultados por distrito de atendimento.
	    # @return [array[SaudeResponse]]
	    def self.saude_get(access_token, client_id, offset, limit, opts = {})
	      
	      # verify the required parameter 'access_token' is set
	      raise "Missing the required parameter 'access_token' when calling saude_get" if access_token.nil?
	      
	      # verify the required parameter 'client_id' is set
	      raise "Missing the required parameter 'client_id' when calling saude_get" if client_id.nil?
	      
	      # verify the required parameter 'offset' is set
	      raise "Missing the required parameter 'offset' when calling saude_get" if offset.nil?
	      
	      # verify the required parameter 'limit' is set
	      raise "Missing the required parameter 'limit' when calling saude_get" if limit.nil?
	      
	
	      # resource path
	      path = "/saude".sub('{format}','json')
	
	      # query parameters
	      query_params = {}
	      query_params[:'offset'] = offset
	      query_params[:'limit'] = limit
	      query_params[:'uf'] = opts[:'uf'] if opts[:'uf']
	      query_params[:'municipio'] = opts[:'municipio'] if opts[:'municipio']
	      query_params[:'codigoProcedimentoSUS'] = opts[:'codigo_procedimento_sus'] if opts[:'codigo_procedimento_sus']
	      query_params[:'codigoAtividadeProfissional'] = opts[:'codigo_atividade_profissional'] if opts[:'codigo_atividade_profissional']
	      query_params[:'distritoAtendimento'] = opts[:'distrito_atendimento'] if opts[:'distrito_atendimento']
	
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
	     	response.map {|response| obj = Model::SaudeResponse.new() and obj.build_from_hash(response) }
	      else
		    obj = response;
	      end
	      
	    end
	
	
	    # Retorna um dado hospitalar especÃ­fico.
	    # 
	    # @param access_token Access Token com as permissÃµes de acesso.
	    # @param client_id Token disponibilizado na criaÃ§Ã£o da APP.
	    # @param id Identificador do protocolo.
	    # @param [Hash] opts the optional parameters
	    # @return [SaudeResponse]
	    def self.saude_id_get(access_token, client_id, id, opts = {})
	      
	      # verify the required parameter 'access_token' is set
	      raise "Missing the required parameter 'access_token' when calling saude_id_get" if access_token.nil?
	      
	      # verify the required parameter 'client_id' is set
	      raise "Missing the required parameter 'client_id' when calling saude_id_get" if client_id.nil?
	      
	      # verify the required parameter 'id' is set
	      raise "Missing the required parameter 'id' when calling saude_id_get" if id.nil?
	      
	
	      # resource path
	      path = "/saude/{id}".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)
	
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
	     	obj = Model::SaudeResponse.new() and obj.build_from_hash(response)
	      else
		    obj = response;
	      end
	      
	    end
	
	  end
	
  end
end
