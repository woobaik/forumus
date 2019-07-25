module DiscussionsHelper

    def avatar_helper(author) 
        letter_avatar_tag(author.email, 1000, class: 'avatar')
    end

    def timestamp_helper(obj)
        if obj.created_at == obj.updated_at
            return "Posted #{time_ago_in_words(obj.created_at)} ago"
        else 
            "Updated #{time_ago_in_words(obj.updated_at)} ago"
        end
        
    end
end


