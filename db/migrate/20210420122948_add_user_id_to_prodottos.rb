class AddUserIdToProdottos < ActiveRecord::Migration[6.1]
  def change
    add_column :prodottos, :user_id, :integer
    add_index :prodottos, :user_id
  end
end
