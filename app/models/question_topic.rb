class QuestionTopic < ApplicationRecord
  # Includes

  # Attributes

  # Associations
  belongs_to :language
  has_many :questions, dependent: :destroy
  # Delegates

  # Constants

  # Validations

  # Scopes

  # Callbacks

  # Constants Methods

  # Default

  private
end
