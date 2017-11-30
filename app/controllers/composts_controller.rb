class CompostsController < ApplicationController

  skip_before_action :authenticate_user!, only: :index

  def index
    @composts = policy_scope(Compost)

    if params[:compost] == nil
      @composts
    else
      @composts = @composts.where("address LIKE ?", "%#{params[:compost][:address].capitalize}%")
    end

  end

  def show
    @compost = Compost.find(params[:id])
    authorize @compost

    @markers = {
        lat: @compost.latitude,
        lng: @compost.longitude#,
        # infoWindow: { content: render_to_string(partial: "/composts/map_box", locals: { compost: compost }) }
      }
  end

  def new
    @compost = Compost.new
    authorize @compost
  end

  def create
    @compost = Compost.new(compost_params)
    authorize @compost
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
