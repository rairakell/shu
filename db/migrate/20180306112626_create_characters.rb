class CreateCharacters < ActiveRecord::Migration
  def change
    create_table :characters do |t|
      t.references :fiction, index: true
      t.string :name
      t.string :replace

      t.timestamps
    end
  end
end
