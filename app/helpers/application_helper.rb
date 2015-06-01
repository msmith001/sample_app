module ApplicationHelper

  #Returns a the full appropriate title for a page
  def full_title(page_title = '')
    base_title = "Myles Smith Sample Site"
    if page_title.empty?
      base_title
    else
      page_title + " | " + base_title
    end
  end

end
