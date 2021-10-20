class CreatePasta < ActiveRecord::Migration[5.2]
  def change
    create_table :pasta do |t|
      t.string :nome
      t.Pasta :id_pasta

      t.timestamps
    end
  end
end
