class CreateEvents < ActiveRecord::Migration[6.0]
  def change #cant be the same as table name
    create_table :events do |t|
      t.string :name_of_event #string for shorter text
      t.string :country
      t.text :description #text for longer text
      t.string :distance_participating
      t.string :date_of_event
    end
  end
end
