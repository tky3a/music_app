module ApplicationHelper
  #ページごとの完全なタイトル
  def full_title(page_title = '')
    base_title = "Gems Sound"
    if page_title.empty?
      base_title
    else
      base_title + "/" + page_title
    end
  end
end
