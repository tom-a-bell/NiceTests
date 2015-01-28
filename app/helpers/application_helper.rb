module ApplicationHelper

  def alert_class_for(flash_type)
    {
      :success => 'alert-success', # Green
      :error   => 'alert-danger',  # Red
      :alert   => 'alert-warning', # Yellow
      :notice  => 'alert-info'     # Blue
    }[flash_type.to_sym] || flash_type.to_s
  end

end
