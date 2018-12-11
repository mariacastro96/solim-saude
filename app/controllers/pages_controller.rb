class PagesController < ApplicationController
  def home
  end

  def solim
  end

  def project
    @study_fields = StudyField.where(study: Current.language.studies).order(:id)
    @variables = StudyField.first.study_variables

  end

  def questions
  end
end
