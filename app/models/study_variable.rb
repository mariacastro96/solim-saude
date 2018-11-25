class StudyVariable < ApplicationRecord
  # Includes

  # Attributes

  # Associations
  belongs_to :study_field

  # Delegates

  # Constants

  # Validations

  # Scopes

  # Callbacks
  after_initialize :init
  # Constants Methods

  # Default

  private

  def init
    self.percentage ||= value/study_field.total_value
  end
end
