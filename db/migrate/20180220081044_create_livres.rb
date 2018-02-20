class CreateLivres < ActiveRecord::Migration[5.1]
  def change
    create_table :livres do |t|
      t.string :title
      t.string :autor
      t.text :description
      t.string :category_id

      t.timestamps
    end
  end
end
