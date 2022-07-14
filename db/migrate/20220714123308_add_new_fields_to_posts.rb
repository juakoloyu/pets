class AddNewFieldsToPosts < ActiveRecord::Migration[7.0]
  def change
    add_column :posts, :sexuality, :integer, default: 0
    add_column :posts, :birth, :date
    add_column :posts, :size, :integer, null: false, default: 0
    add_column :posts, :status, :integer, default: 0, null: false
  end
end
