class CreateComments < ActiveRecord::Migration[7.0]
  def change
    create_table :comments do |t|
      t.text :body, null: false
      t.references :parent, foreign_key: { to_table: :comments }

      t.timestamps null: false
    end
  end
end
