class SolosController < ApplicationController

  def index
    @solos = Solo.all
  end

  def show
    @solo = Solo.find(params[:id])
  end

  def edit
    @solo = Solo.find(params[:id])
  end

  def update
    @solo = Solo.find(params[:id])
    @solo.update(solo_params)
    redirect_to @solo
  end

  def new
    @solo = Solo.new
  end

  def create
    @solo = Solo.new(solo_params)
    @solo.save
    redirect_to @solo
  end

  def destroy
    @solo = Solo.find(params[:id])
    @solo.destroy
    redirect_to solos_url
  end

  private

  def solo_params
    params.require(:solo).permit(:title, :composer, :PML)
  end
end
