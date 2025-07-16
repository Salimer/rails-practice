module BooksHelper
  def format_date(date)
    date.strftime("%B %d, %Y") if date.present?
  end
end
