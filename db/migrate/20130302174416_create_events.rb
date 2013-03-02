class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :title
      t.datetime :date
      t.string :location
      t.string :image

      t.timestamps
    end
  end
end
