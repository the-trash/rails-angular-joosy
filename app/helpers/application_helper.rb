module ApplicationHelper
  def bootstrap_class_for type
    {
      success: 'alert-success',
      error:   'alert-danger',
      notice:  'alert-info',
      warning: 'alert-warning'
    }[type] || type.to_s
  end

  def current_tab name
    controller_name == name.to_s ? :active : nil
  end
end
