module ApplicationHelper
  def is_admin?
    @auth.present? && @auth.is_admin?
  end

  def intellinav
    links = ''

    if @auth.present?
      if @auth.is_admin
        links << "<li>#{link_to('Show Users', users_path)}</li>"
        links << "<li>#{link_to('List Bookings', bookings_path)}</li>"
      end
      links << "<li>#{link_to('Edit', edit_users_path)}</li>"
      links << "<li>"
      links << " #{link_to('Logout ' + @auth.name, login_path, :method => :delete, :confirm => 'Really?')}</li>"
      links << "</li>"
    else
      links << "<li>#{link_to('Create Account', new_user_path)}</li>"
      links << "<li>#{link_to('Login', login_path)}</li>"
    end

    links
  end
end