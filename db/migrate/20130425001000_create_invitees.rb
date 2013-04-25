class CreateInvitees < ActiveRecord::Migration
  def change
    create_table :invitees do |t|
      t.integer :user_id
      t.integer :RSVP
      t.integer :event_id
      t.boolean :is_deleted

      t.timestamps
    end
  end
end
