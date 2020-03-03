class AdvertisementsController < ApplicationController
  def index
    @advertisements = Advertisement.all
  end

  def show
    @advertisement = Advertisement.find(params[:id])
    @position = Position.find(@advertisement.position_id)
  end

  def new
    @advertisement = Advertisement.new
  end

  def edit
    @advertisement = Advertisement.find(params[:id])
  end

  def create
    @advertisement = Advertisement.new(advertisement_params)

    if @advertisement.save
      redirect_to @advertisement
    else
      render 'new'
    end
  end

  def update
    @advertisement = Advertisement.find(params[:id])

    if @advertisement.update(advertisement_params)
      redirect_to @advertisement
    else
      render 'edit'
    end
  end

  def destroy
    @advertisement = Advertisement.find(params[:id])
    @advertisement.destroy

    redirect_to advertisements_path
  end

  private
    def advertisement_params
      params.require(:advertisement).permit(
        :position_id,
        :status,
        :instructions,
        :issue_id,
        :client_id,
        :width,
        :height,
        :price,
        :user_id
      )
    end
end
