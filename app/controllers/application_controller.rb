class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

    before_action :find_progject

  def find_progject
      @projects = Project.all
  end
end
