class CreateContacts < ActiveRecord::Migration[5.2]
  def change
    create_table :contacts do |t|
      t.string :code, null: false
      t.string :name, null: false
      t.string :address
      t.string :zip_code
      t.string :email
      t.string :phone
      t.string :schedule
      t.references :language, foreign_key: true

      t.timestamps
    end
  end
end
