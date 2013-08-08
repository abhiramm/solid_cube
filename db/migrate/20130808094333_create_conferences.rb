class CreateConferences < ActiveRecord::Migration
  def change
    create_table :conferences do |t|
      t.string :subject
      t.string :category
      t.datetime :class_start
      t.datetime :class_end
      t.string :slots_avialable
      t.string :recurrence
      t.integer :cost
      t.string :payment_options
      t.text :alternate_contact_details
      t.string :upload_demo_video
      t.string :upload_ad

      t.timestamps
    end
  end
end
