class PagesController < ApplicationController
  before_action :ensure_logged_in, only: [:about]

  def about
  end

  def home
  end
end
