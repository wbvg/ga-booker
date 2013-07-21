module ApplicationHelper
  def is_admin?
    @auth.present? && @auth.is_admin?
  end

  def intellinav
    links = "<li>#{link_to('List Bookings ', bookings_path)}</li>"
    if @auth.present?
      if @auth.is_admin?
        links << "<li>#{link_to('Show Users', users_path)}</li><li>#{link_to('Edit Account', edit_users_path)}</li><li>#{link_to('Book a Room', new_booking_path)}</li>"
        #links << ""
      end
      links << "<li>#{link_to('Logout ' + @auth.name, login_path, :method => :delete, :confirm => 'Really?')}</li>"
      #links << ""
    else
      links << "<li>#{link_to('Sign up', new_user_path)}</li><li>#{link_to('Sign in', login_path)}</li>"
      #links << ""
    end
  end
end