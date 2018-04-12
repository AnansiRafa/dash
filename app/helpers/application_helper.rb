module ApplicationHelper
  def send_home
    redirect_to root_url
  end

  def make_sign_in
    redirect_to '/login'
  end

  def set_role
    if params[:session]
    if params[:session][:teacher_or_student] == "Teacher"
      a = 1
    else
      a = 2
    end
  end
end



  def emojify(content)
  h(content).to_str.gsub(/:([\w+-]+):/) do |match|
    if emoji = Emoji.find_by_alias($1)
      %(<img alt="#$1" src="#{image_path("emoji/#{emoji.image_filename}")}" style="vertical-align:middle" width="20" height="20" />)
    else
      match
    end
  end.html_safe if content.present?
end
end
