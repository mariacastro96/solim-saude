class StudyField < ApplicationRecord
  # Includes

  # Attributes

  # Associations
  belongs_to :study
  has_many :study_variables, dependent: :destroy

  # Delegates

  # Constants

  # Validations

  # Scopes

  # Callbacks

  # Constants Methods

  # Default

  private
end
