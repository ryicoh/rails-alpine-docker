class CreateBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :books do |t|
      t.string :title
      t.text :description
      t.text :body
      t.integer :ISBN

      t.timestamps
    end
  end
end
