class AddColumnToLanguage < ActiveRecord::Migration[5.2]
  def change
    add_column :languages, :language_id, :string
  end
end
