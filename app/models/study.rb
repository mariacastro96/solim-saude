class Study < ApplicationRecord
  # Includes

  # Attributes

  # Associations
  belongs_to :language
  has_many :study_fields, dependent: :destroy
  # Delegates

  # Constants

  # Validations

  # Scopes

  # Callbacks

  # Constants Methods

  # Default

  private
end
