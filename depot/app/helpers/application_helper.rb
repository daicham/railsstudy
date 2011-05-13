# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper
  def fmt_dollars(amt)
    sprintf("$%0.2f", amt)
  end
end
