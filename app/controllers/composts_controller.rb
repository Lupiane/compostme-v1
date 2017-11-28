class CompostsController < ApplicationController

  skip_before_action :authenticate_user!, only: :index

  def index
    @composts = Compost.all

    if params[:compost] == nil
      @composts
    else
      @composts = @composts.where("address LIKE ?", "%#{params[:compost][:address].capitalize}%")
    end

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
    @compost.owner = "private"
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

  private

  def compost_params
    params.require(:compost).permit(:address, :specifics)
  end
end
