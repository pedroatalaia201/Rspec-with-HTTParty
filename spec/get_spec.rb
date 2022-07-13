describe 'make a request' do
    it 'get_manually', :manually do
        # If we din't use the module, we should make the reques manually like this:
        @first_option = HTTParty.get('https://api-de-tarefas.herokuapp.com/contacts')
        puts @first_option
    end

    it 'get_global', :global do
        # Using the global module, itsn't  necessary to write the hole url, 
        #because it's using the base_uri: 
        @second_option = Contact.get('/contacts')
        puts @second_option
    end
end