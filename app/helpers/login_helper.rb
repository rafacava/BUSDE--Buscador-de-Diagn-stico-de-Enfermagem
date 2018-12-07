module LoginHelper
    
    def log_in(user)
        session[:user_id] = user.id
    end
    
    def log_out
        session.delete(:user_id)
    end
    
    def logged_in?
        #A SESSAO NAO ESTA VAZIA?
        !session[:user_id].nil?
    end
end
