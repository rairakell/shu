class CreateImageTags < ActiveRecord::Migration
  def change
    create_table :image_tags do |t|
      t.string :name

      t.timestamps
    end
  end
end
