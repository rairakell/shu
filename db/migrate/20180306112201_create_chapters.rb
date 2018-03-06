class CreateChapters < ActiveRecord::Migration
  def change
    create_table :chapters do |t|
      t.string :name
      t.references :fiction, index: true
      t.text :content

      t.timestamps
    end
  end
end
