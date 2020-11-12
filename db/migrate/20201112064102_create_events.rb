class CreateEvents < ActiveRecord::Migration[6.0]
  def change #cant be the same as table name
    create_table :events do |t|
      t.string :Name_of_Event #string for shorter text
      t.string :Country
      t.text :Description #text for longer text
      t.string :Distance_participating
      t.string :Date_of_Event
    end
  end
end
