class CreateMeetupMembers < ActiveRecord::Migration
  def change
    create_table :members do |t|
      t.integer :meetup_id, null: false
      t.integer :user_id, null: false

      t.timestamps null: false
  end
end
end
