class CreateStatements < ActiveRecord::Migration[5.2]
  def change
    create_table :statements do |t|
      t.string :code, null: false
      t.string :title, null: false
      t.text :text, null: false
      t.references :language, foreign_key: true

      t.timestamps
    end
  end
end
