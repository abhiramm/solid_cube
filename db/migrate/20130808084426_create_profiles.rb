class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :profile_pic
      t.string :first_name
      t.string :last_name
      t.text :address
      t.string :about_video
      t.string :about_video_html
      t.string :contact_no
      t.string :school
      t.string :college
      t.string :higher_education
      t.string :certification
      t.string :interested_in_learning
      t.string :would_like_to_teach
      t.integer :user_id

      t.timestamps
    end
  end
end
