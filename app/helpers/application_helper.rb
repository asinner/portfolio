module ApplicationHelper
  def namespace
  end
  
  def namespace_from_path
    return request.path.split('/')[1]
  end
end
