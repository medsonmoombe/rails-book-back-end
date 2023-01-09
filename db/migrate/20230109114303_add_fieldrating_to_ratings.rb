class AddFieldratingToRatings < ActiveRecord::Migration[7.0]
  def change
    add_column :ratings, :rating, :float
  end
end
