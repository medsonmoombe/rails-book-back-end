class AddImageToBooks < ActiveRecord::Migration[7.0]
  def change
    add_column :books, :image, :string
  end
end
