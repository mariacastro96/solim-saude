class AddColorToStudyVariable < ActiveRecord::Migration[5.2]
  def change
    add_column :study_variables, :color, :string
  end
end
