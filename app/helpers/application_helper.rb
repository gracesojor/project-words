module ApplicationHelper
  def full_title(string = "")
    basic_title = "Elearning System"
    if string.blank?
      basic_title
    else
      "#{string} | Elearning System"
    end
  end
end
