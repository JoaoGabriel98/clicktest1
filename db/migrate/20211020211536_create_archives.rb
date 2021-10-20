class CreateArchives < ActiveRecord::Migration[5.2]
  def change
    create_table :archives do |t|
      t.string :nome
      t.string :caminho
      t.Pastum :id_pasta

      t.timestamps
    end
  end
end
