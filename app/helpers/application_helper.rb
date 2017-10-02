module ApplicationHelper
	def bootstrap_class_for flash_type
    { success: 'alert-success', error: 'alert-danger', notice: 'alert-warning'}[flash_type.to_sym]
  end

 def flash_messages(opts = {})
    flash.map do |msg_type, message|
      content_tag(:div, message, class: "alert #{bootstrap_class_for(msg_type)} alert-dismissable") do
        content_tag(:button, 'x'.html_safe, class: 'close', data: {dismiss: 'alert'}) + message
      end
    end.join.html_safe
  end

  def rating_star(value)
    percentage = value / 5 * 100

    fg = content_tag 'div', class: 'rating-star-value', style: "width: #{percentage}%" do
        (1..5).map{fa_icon "star"}.join.html_safe
      end
    bg = content_tag 'div', class: 'rating-star-bg' do
        (1..5).map{fa_icon "star"}.join.html_safe
      end
    content_tag 'div', class: 'rating-star' do
      [fg, bg].join.html_safe
    end.html_safe
  end
end
