describe 'make a request' do
    context 'to change the data with' do
        it 'put' do
           @body_put =
           {
            'id': 9,
            'name': 'pedro lucas',
            'last_name': 'atalaia',
            'email': 'space_traveler3@gmail.com',
            'age': 21,
            'phone': '1345678910',
            'address': 'Sidereal Space',
            'state': 'Somewhere in this Galaxy',
            'city': 'Some Solar System'
           }.to_json 

           @request = Contact.put('/contacts', body: @body_put)
           puts @request
        end

        it 'patch' do
            @body_patch =
           {
            'id': 2229,
            'email': 'space_traveler4@gmail.com',
           }.to_json 

           @request = Contact.patch('/contacts', body: @body_patch)
           puts @request
        end
    end
end