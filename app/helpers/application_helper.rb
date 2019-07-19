module ApplicationHelper
    def hi
        if current_user 
            link_to "Account", edit_user_registration_path, class:'button is-link login-helper-button'
        else 
            (link_to "Log in", new_user_session_path, class:'button is-info login-helper-button') +
            (link_to "<strong>Sign up</strong>".html_safe, new_user_registration_path, class:'button is-info is-outlined login-helper-button')
        end    
    end
end



            # <% if current_user %>
            #   <%= link_to "Account", edit_user_registration_path, class:'button is-link'%> 
            #   <%= link_to "Log out", destroy_user_session_path, class:'button is-danger', method: :delete%> 
            # <% else %>
