class CreateFictions < ActiveRecord::Migration
  def change
    create_table :fictions do |t|
      t.string :name

      t.timestamps
    end
  end
end
