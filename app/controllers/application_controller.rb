class ApplicationController < ActionController::Base
  before_action :set_locale
  before_action :set_current_language

  private

  def set_locale
    I18n.locale = params[:locale] || I18n.default_locale
  end

  def set_current_language
    Current.language = Language.find_by(language_id: I18n.locale)
  end

end
