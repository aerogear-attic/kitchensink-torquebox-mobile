class ResetMembers

    def initialize(args = {})
        Members.delete_all
    end

    def start
        Member.create(:email => 'john.smith@mailinator.com', :name => 'John Smith', :phone_number => '2125551212')
    end
end
