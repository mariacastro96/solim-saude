class Language < ApplicationRecord
  # Includes

  # Attributes

  # Associations
  has_many :contacts, dependent: :destroy
  # Delegates

  # Constants

  # Validations

  # Scopes

  # Callbacks

  # Constants Methods

  # Default

  private
end