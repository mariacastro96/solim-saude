class CreateRelevantLinks < ActiveRecord::Migration[5.2]
  def change
    create_table :relevant_links do |t|
      t.string :code, null: false
      t.string :name, null: false
      t.string :link, null: false
      t.references :language, foreign_key: true

      t.timestamps
    end
  end
end
