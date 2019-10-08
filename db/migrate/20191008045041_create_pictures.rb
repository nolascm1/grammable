class CreatePictures < ActiveRecord::Migration[5.2]
  def change
    create_table :pictures do |t|
      t.integer :user_id
      t.integer :gram_id
      t.timestamps
    end

    add_index :pictures, [:user_id, :gram_id]
    add_index :pictures, :gram_id
  end
end
