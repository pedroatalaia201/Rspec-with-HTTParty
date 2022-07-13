describe 'make a request' do
    it 'post_manually', :manually_post do
        # Again, using the httparty manually
        @body = 
        {
            'name': 'pedro lucas',
            'last_name': 'atalaia',
            'email': 'space_traveler@gmail.com',
            'age': 21,
            'phone': '1345678910',
            'address': 'Sidereal Space',
            'state': 'Somewhere in this Galaxy',
            'city': 'Some Solar System'
        }.to_json

        @headers = 
        {
            'Accept': 'application/vnd.taskmanager.v2', 'Content-Type': 'application/json'
        }

        @request = HTTParty.post('https://api-de-tarefas.herokuapp.com/contacts', body: @body, headers: @headers)
        
        puts @request
    end

    it 'post_global', :global_post do
        @body = 
        {
            'name': 'pedro lucas',
            'last_name': 'atalaia',
            'email': 'space_traveler2@gmail.com',
            'age': 21,
            'phone': '1345678910',
            'address': 'Sidereal Space',
            'state': 'Somewhere in this Galaxy',
            'city': 'Some Solar System'
        }.to_json

        @request = Contact.post('/contacts', body: @body)

        puts @request
    end
end