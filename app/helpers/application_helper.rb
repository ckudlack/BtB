module ApplicationHelper
  
  def full_title(page_title) 
      base_title="Build The Beat"
      if page_title.empty?
        base_title
      else
        "#{base_title} | #{page_title}"
      end
  end
  

  def admin?
  	@user = User.find(1)
  	false
  end

  

end
