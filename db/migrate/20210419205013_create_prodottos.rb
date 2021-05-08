class CreateProdottos < ActiveRecord::Migration[6.1]
  def change
    create_table :prodottos do |t|
      t.string :marca
      t.string :nome
      t.string :categoria
      t.string :contenuto
      t.string :utilizzo
      t.string :media_voti

      t.timestamps
    end
  end
end
