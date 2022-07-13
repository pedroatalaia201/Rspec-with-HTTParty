module Contact
    include HTTParty 
    # Base URL  contact
    base_uri 'https://api-de-tarefas.herokuapp.com'

    # Service options
    format :json
    headers Accept: 'application/vnd.taskmanager.v2', 'Content-Type': 'application/json'
end

# Every time that this module is called, the default url will be 'https://api-de-tarefas.herokuapp.com'
# And, the Headers will acept the options Accept: 'application/vnd.taskmanager.v2', 'Content-Type': 'application/json'
# All of this on the json format.