describe 'using' do
    it 'token' do
        # this'll generate a random email
        @email = Faker::Internet.email

        @body =
        {
            user:
            {
                email: @email,
                password: '123456',
                password_confirmation: '123456'
            }
        }.to_json

        @header = 
        {
            Accept: 'application/vnd.taskmanager.v2', 'Content-Type': 'application/json'
        }

        @create = Create.post('/users', body: @body, headers: @header)
        puts @create.body
        puts @create.parsed_response['data']['attributes']['auth-token']

        @body_one = 
        {
            session: 
            {
                email: @email,
                password: '123456'
            }
        }.to_json

        @header_one =
        {
            Accept: 'application/vnd.taskmanager.v2', 'Content-Type': 'application/json',
            Authorization: "#{@create.parsed_response['data']['attributes']['auth-token']}"
        }

        @login = Create.post('/session', body: @body_one, headers: @header_one)
    end
end