class CreateStudyVariables < ActiveRecord::Migration[5.2]
  def change
    create_table :study_variables do |t|
      t.string :code, null: false
      t.string :name, null: false
      t.float :value, null: false
      t.float :percentage, null: false
      t.references :study_field, foreign_key: true

      t.timestamps
    end
  end
end
