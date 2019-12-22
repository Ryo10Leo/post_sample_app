class CreateStyles < ActiveRecord::Migration[5.1]
  def change
    create_table :styles do |t|
      t.string :caption
      t.string :price

      t.timestamps
    end
  end
end
