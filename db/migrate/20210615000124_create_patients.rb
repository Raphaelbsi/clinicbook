class CreatePatients < ActiveRecord::Migration[5.2]
  def change
    create_table :patients do |t|
      t.string :name
      t.date :birth_date
      t.string :cpf

      t.timestamps
    end
  end
end
