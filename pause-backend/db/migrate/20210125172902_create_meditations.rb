class CreateMeditations < ActiveRecord::Migration[6.0]
  def change
    create_table :meditations do |t|
      t.string :title
      t.string :duration

      t.timestamps
    end
  end
end
