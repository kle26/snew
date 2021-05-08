class AddImageToProdotto < ActiveRecord::Migration[6.1]
  def change
  	add_column :prodottos, :image, :string
  end
end
