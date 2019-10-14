class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
			t.string :name
			t.text :description
			t.string :location
			t.datetime :event_date
			t.belongs_to :creator
			
      t.timestamps
    end
  end
end
