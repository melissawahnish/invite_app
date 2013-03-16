class AddDurationToEvent < ActiveRecord::Migration
  def change
    add_column :events, :duration, :decimal
  end
end
