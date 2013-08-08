class Conference < ActiveRecord::Base
  attr_accessible :alternate_contact_details, :category, :class_end, :class_start, :cost, :payment_options, :recurrence, :slots_avialable, :subject, :upload_ad, :upload_demo_video
end
