class CreateCats < ActiveRecord::Migration[6.1]
  def change
    create_table :cats do |t|
      t.string :name
      t.string :picture
      t.string :personality
      t.timestamps
    end
  end
end
