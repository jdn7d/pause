class AddContentToMeditations < ActiveRecord::Migration[6.0]
  def change
    add_column :meditations, :content, :text
  end
end
