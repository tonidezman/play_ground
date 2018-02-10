module ApplicationHelper

  def logged_in?
    current_user
  end

  def current_user
    @current_user = @current_user || AdminUser.find_by_id(session[:user_id])
  end

  def display_errors(obj)
    if obj&.errors&.any?
      errors = ""
      obj.errors.full_messages.each do |error|
        errors << "<li>#{error}</li>"
      end

      <<~EOL
        <div class="alert alert-danger">
          <p>#{pluralize(obj.errors.count, 'error')}</p>
          <ul>
            #{errors}
          </ul>
        </div>
      EOL
    end
  end

end
