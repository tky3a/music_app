class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
      t.string :commenter
      t.string :body

      # 以下の行によって`video_id`という整数カラムが追加される
      t.references :video, index: true, foreign_key: true

      t.timestamps
    end
  end
end
