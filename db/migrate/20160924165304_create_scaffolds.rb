class CreateScaffolds < ActiveRecord::Migration
  def change
    create_table :scaffolds do |t|
      t.string :carts
      t.integer :user_id
      t.float :total

      t.timestamps null: false
    end
    add_index :scaffolds, :user_id
  end
end
