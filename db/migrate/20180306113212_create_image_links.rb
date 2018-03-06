class CreateImageLinks < ActiveRecord::Migration
  def change
    create_table :image_links do |t|
      t.references :image, index: true
      t.references :fiction, index: true

      t.timestamps
    end
  end
end
