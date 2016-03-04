require "uri"

module ImaApiV1
  module Api
	
	  class EducaoApi
	    basePath = "http://api.ima.sp.gov.br/v1"
	    # apiInvoker = APIInvoker
	
	
	    # Dados sobre educaÃ§Ã£o
	    # O recurso de educaÃ§Ã£o retorna dados sobre instituiÃ§Ãµes educacionais na \nÃ¡rea de Campinas.\n
	    # @param client_id Token disponibilizado na criaÃ§Ã£o da APP.
	    # @param offset ParÃ¢metro utilizado para indicar a posiÃ§Ã£o do registro inicial que serÃ¡ trazido. A primeira posiÃ§Ã£o Ã© sempre zero (0).
	    # @param limit ParÃ¢metro utilizado para indicar a quantidade de registros que deve ser trazido na consulta.
	    # @param [Hash] opts the optional parameters
	    # @option opts [array[string]] :fields ParÃ¢metro utilizado para pesquisar campos especÃ­ficos
	    # @option opts [array[string]] :filters ParÃ¢metro utilizado para pesquisar valores de campos especÃ­ficos, por exemplo, para pesquisar um id de valor 123, passar o valor id:123
	    # @return [array[EducacaoResponse]]
	    def self.educacao_get(client_id, offset, limit, opts = {})
	      
	      # verify the required parameter 'client_id' is set
	      raise "Missing the required parameter 'client_id' when calling educacao_get" if client_id.nil?
	      
	      # verify the required parameter 'offset' is set
	      raise "Missing the required parameter 'offset' when calling educacao_get" if offset.nil?
	      
	      # verify the required parameter 'limit' is set
	      raise "Missing the required parameter 'limit' when calling educacao_get" if limit.nil?
	      
	
	      # resource path
	      path = "/educacao".sub('{format}','json')
	
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
	     	response.map {|response| obj = Model::EducacaoResponse.new() and obj.build_from_hash(response) }
	      else
		    obj = response;
	      end
	      
	    end
	
	
	    # Retorna um dado sobre educaÃ§Ã£o especÃ­fico.
	    # 
	    # @param client_id Token disponibilizado na criaÃ§Ã£o da APP.
	    # @param id Identificador do registro.
	    # @param [Hash] opts the optional parameters
	    # @option opts [array[string]] :fields ParÃ¢metro utilizado para pesquisar campos especÃ­ficos
	    # @option opts [array[string]] :filters ParÃ¢metro utilizado para pesquisar valores de campos especÃ­ficos, por exemplo, para pesquisar um id de valor 123, passar o valor id:123
	    # @return [EducacaoResponse]
	    def self.educacao_id_get(client_id, id, opts = {})
	      
	      # verify the required parameter 'client_id' is set
	      raise "Missing the required parameter 'client_id' when calling educacao_id_get" if client_id.nil?
	      
	      # verify the required parameter 'id' is set
	      raise "Missing the required parameter 'id' when calling educacao_id_get" if id.nil?
	      
	
	      # resource path
	      path = "/educacao/{id}".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)
	
	      # query parameters
	      query_params = {}
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
	     	obj = Model::EducacaoResponse.new() and obj.build_from_hash(response)
	      else
		    obj = response;
	      end
	      
	    end
	
	  end
	
  end
end
