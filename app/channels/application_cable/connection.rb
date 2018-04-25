module ApplicationCable
  class Connection < ActionCable::Connection::Base

    #This sets up connection and disconnection methods for chat feature

    identified_by :current_user

    def connect
      self.current_user = find_current_user
    end
    # Need to have a user logged in for this to work

    def disconnect
    end

    protected
    def find_current_user
      if current_user = User.find_by(id: cookies.signed[:user_id])
        current_user
      else
        reject_unauthorized_connection
      end
    end
  end
  # Method returns current user
  # No access to session in ActionCable but can access cookies

end
