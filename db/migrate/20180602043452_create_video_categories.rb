class CreateVideoCategories < ActiveRecord::Migration[5.1]
  def change
    create_table :video_categories do |t|
      t.references :video, index: true, foreign_key: true
      t.references :category, index: true, foreign_key: true

      t.timestamps
    end
  end
end
