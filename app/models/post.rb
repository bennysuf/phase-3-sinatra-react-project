class Post < ActiveRecord::Base
    belongs_to :user

    def self.checkPosts(post) 
        if post != nil
            post.each do |t| 
                t.destroy.to_json
            end
        end
    end


end