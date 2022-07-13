module Create
    include HTTParty 
    # Base URL  contact
    base_uri 'https://api-de-tarefas.herokuapp.com'

    # Service options
    format :json
end