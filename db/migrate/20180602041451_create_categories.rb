class CreateCategories < ActiveRecord::Migration[5.1]
  def change
    create_table :categories do |t|
      t.string :name, default: "", null: false #ジャンルの値を必ず入れる必要がある

      t.timestamps
    end
  end
end
