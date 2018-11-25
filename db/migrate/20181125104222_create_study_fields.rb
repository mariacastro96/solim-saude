class CreateStudyFields < ActiveRecord::Migration[5.2]
  def change
    create_table :study_fields do |t|
      t.string :code, null: false
      t.string :title, null: false
      t.string :subtitle
      t.float :total_value, null: false
      t.references :study, foreign_key: true

      t.timestamps
    end
  end
end
