class StudyFieldController < ApplicationController
  def results
    @study_fields = StudyField.all
  end
end
