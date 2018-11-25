class Language < ApplicationRecord
  # Includes

  # Attributes

  # Associations
  has_many :contacts, dependent: :destroy
  has_many :relevant_links, dependent: :destroy
  has_many :statements, dependent: :destroy
  has_many :question_topics, dependent: :destroy

  # Delegates

  # Constants

  # Validations

  # Scopes

  # Callbacks

  # Constants Methods

  # Default

  private
end
