class Login < ApplicationRecord
    belongs_to :user

    def Login
        Date.find_by_id(self.user_id)
    end
    
end
