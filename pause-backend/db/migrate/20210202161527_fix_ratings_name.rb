class FixRatingsName < ActiveRecord::Migration[6.0]
  def change
    rename_column :comments, :rating, :content
  end
end
