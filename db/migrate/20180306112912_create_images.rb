class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.references :image_serie, index: true
      t.string :path

      t.timestamps
    end
  end
end
