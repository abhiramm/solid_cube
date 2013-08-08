class Profile < ActiveRecord::Base
  attr_accessible :address, :certification, :college, :contact_no, :first_name, :higher_education, :interested_in_learning, :last_name, :profile_pic, :school, :user_id, :would_like_to_teach, :about_video, :about_video_html

  AutoHtml.add_filter(:image) do |text|
    text.gsub(/http:\/\/.+\.(jpg|jpeg|bmp|gif|png)(\?\S+)?/i) do |match|
      %|<img src="#{match}" alt=""/>|
    end
  end
  auto_html_for :about_video do
    image
    youtube(:width => 170, :height => 100)
    link :target => "_blank", :rel => "nofollow"
    simple_format
  end

end
