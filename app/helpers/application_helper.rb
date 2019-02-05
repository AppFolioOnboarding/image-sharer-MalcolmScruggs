module ApplicationHelper
  def set_active_class(url)
    current_page?(url) ? 'active' : ''
  end
end
