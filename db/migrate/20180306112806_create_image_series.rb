class CreateImageSeries < ActiveRecord::Migration
  def change
    create_table :image_series do |t|
      t.string :name

      t.timestamps
    end
  end
end
