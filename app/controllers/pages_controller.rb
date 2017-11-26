class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    @compost = Compost.new
  end
end
