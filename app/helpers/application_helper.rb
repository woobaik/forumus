module ApplicationHelper
    include LetterAvatar::AvatarHelper
    

    def login_button_helper
        if current_user 
            (link_to "Account", edit_user_registration_path, class:'button login-helper-button is-outlined login-helper-acct') +
            (link_to "Log out", destroy_user_session_path, class: "button login-helper-button is-outlined login-helper-logout", method: :delete)
        else 
            (link_to "Log in", new_user_session_path, class:'button login-helper-button is-outlined login-helper-acct') +
            (link_to "Sign up", new_user_registration_path, class:'button login-helper-button login-helper-logout')
        end    
    end
end


