class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.references :board, null: false, foreign_key: true #references :xxで、xxに紐づける事ができる
      t.string :name, null: false #空打ちはできないように設定
      t.text :comment, null: false

      t.timestamps
    end
  end
end
