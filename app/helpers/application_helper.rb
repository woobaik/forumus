module ApplicationHelper
    def login_button_helper
        if current_user 
            (link_to "Account", edit_user_registration_path, class:'button is-link login-helper-button is-outlined') +
            (link_to "Log out", destroy_user_session_path, class: "button is-danger login-helper-button is-outlined", method: :delete)
        else 
            (link_to "Log in", new_user_session_path, class:'button is-info login-helper-button is-outlined') +
            (link_to "Sign up", new_user_registration_path, class:'button is-info login-helper-button')
        end    
    end
end


