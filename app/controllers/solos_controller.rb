class SolosController < ApplicationController

  def index
    @solos = Solo.all
  end

  def show
    @solo = Solo.find(params[:id])
    @students = @solo.students
  end

  def edit
    @solo = Solo.find(params[:id])
  end

  def update
    @solo = Solo.find(params[:id])
    if @solo.update(solo_params)
      redirect_to @solo, notice: "Solo successfully updated!"
    else
      render :edit
    end
  end

  def new
    @solo = Solo.new
  end

  def create
    @solo = Solo.new(solo_params)
    if @solo.save
      redirect_to @solo, notice: "Solo successfully created!"
    else
      render :new
    end
  end

  def destroy
    @solo = Solo.find(params[:id])
    @solo.destroy
    redirect_to solos_url, alert: "Solo successfully deleted!"
  end

  private

  def solo_params
    params.require(:solo).permit(:title, :composer, :PML)
  end
end
