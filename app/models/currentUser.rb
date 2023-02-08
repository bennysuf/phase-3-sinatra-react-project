class CurrentUser < ActiveRecord::Base
has_many :users

    def self.userCheck(user)
      check = CurrentUser.first
        if check == nil 
            CurrentUser.create(
                username: user.username,
                user_id: user.id
            )
        else 
            CurrentUser.update(
                username: user.username,
                user_id: user.id
            )
        end
    end
end