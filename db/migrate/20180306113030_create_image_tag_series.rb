class CreateImageTagSeries < ActiveRecord::Migration
  def change
    create_table :image_tag_series do |t|
      t.references :image_tag, index: true
      t.references :image_serie, index: true

      t.timestamps
    end
  end
end
