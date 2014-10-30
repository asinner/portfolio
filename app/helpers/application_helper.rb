module ApplicationHelper
  def namespace
    controller.class.name.split("::").first
  end
end
