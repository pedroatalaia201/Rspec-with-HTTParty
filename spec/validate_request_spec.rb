describe 'make a request' do
    it 'get' do 
        @request = Contact.get('/contacts/2230')

        # Validate the http code from that request
        expect(@request.code).to eq 200

        # in case that the response din't came in json format, you can parse it 
        @request.parsed_response
        # in the orther way, if the response come in json
        @request.body 

        # validate a certain value
        expect(@request.parsed_response['data']['attributes']['name']).to eq 'pedro lucas'
    end
end