class AddPhotoToProduct < ActiveRecord::Migration[5.0]
  def change
    create_table :products do
    end
    add_column :products, :photo, :string
  end
end
