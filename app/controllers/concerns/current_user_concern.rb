module CurrentUserConcern
  extend ActiveSupport::Concern

  def current_user
    super || guest_user
  end

  def guest_user
    OpenStruct.new(name: "Honored Guest", 
                  first_name: "Honored Guest", 
                  last_name: "Guest", 
                  email: "guest@example.com"
                  )
  end
end