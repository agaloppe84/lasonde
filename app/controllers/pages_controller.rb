class PagesController < ApplicationController

  skip_before_action :authenticate_user!, only: :home
  skip_after_action :verify_authorized, except: :home, unless: :devise_controller?
  skip_after_action :verify_policy_scoped, only: :home, unless: :devise_controller?

  def home
    render layout: 'home'
  end
end
