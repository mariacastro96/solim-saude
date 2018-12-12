class StatementsController < ApplicationController
  before_action :set_statement

  def edit

  end

  def update
    if @statement.update(statement_params)
      redirect_to project_path
    else
      render :edit
    end
  end

  private

  def set_statement
    @statement = Statement.find(params[:id])
  end

  def statement_params
    params.require(:statement).permit!
  end
end
