class CompostsController < ApplicationController

  skip_before_action :authenticate_user!, only: :index

  def index
    @composts = Compost.all
  end

  def show
    @compost = Compost.find(params[:id])
  end

  def new
    @compost = Compost.new
  end

  def create
    @compost = Compost.new(compost_params)
    @compost.user = current_user
    if @compost.save
      redirect_to compost_path(@compost)
    else
      render :new
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
