class CreateQuestionTopics < ActiveRecord::Migration[5.2]
  def change
    create_table :question_topics do |t|
      t.string :code, null: false
      t.string :name, null: false
      t.references :language, foreign_key: true

      t.timestamps
    end
  end
end
