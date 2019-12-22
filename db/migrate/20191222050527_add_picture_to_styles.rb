class AddPictureToStyles < ActiveRecord::Migration[5.1]
  def change
    add_column :styles, :picture, :string
  end
end
