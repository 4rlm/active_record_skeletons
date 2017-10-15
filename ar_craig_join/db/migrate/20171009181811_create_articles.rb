class CreateArticles < ActiveRecord::Migration[5.0]
  def change
    create_table :articles do |t|
      t.string :title
      t.string :description
      t.string :author
      t.string :email
      t.decimal :price, :precision => 8, :scale => 2
      t.timestamps
    end
  end
end
