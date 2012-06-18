class ResetMembers

    def initialize(args = {})
        @description = args['description']
    end

    def start 
        Member.delete_all
        Member.create(:email => 'john.smith@mailinator.com', :name => 'John Smith', :phone_number => '2125551212')
        puts "#{@description} was initialized"
    end 

    def stop 
        puts "#{@description} was interrupted"
    end
end
