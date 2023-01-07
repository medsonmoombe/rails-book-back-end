class RemoveFieldImageFromBook < ActiveRecord::Migration[7.0]
  def change
    remove_column :books, :image, :string
  end
end
