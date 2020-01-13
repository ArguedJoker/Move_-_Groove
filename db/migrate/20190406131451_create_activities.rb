class CreateActivities < ActiveRecord::Migration[5.2]
  def change
    create_table :activities do |t|
      t.integer :user_id,                   null: false, default: ""
      t.string :activity_name,             null: false, default: ""
      t.string :activity_duration,         null: false, default: 0
      t.date :activity_date,               null: false, default: ""
      t.timestamps
    end
  end
end
