class EnsemblesController < ApplicationController

  def index
  @ensembles = Ensemble.all.order(:title)
  end

  def show
  @ensemble = Ensemble.find(params[:id])
  @students = @ensemble.students
  end

  def new
  @ensemble = Ensemble.new
  end

  def create
    @ensemble= Ensemble.new(ensemble_params)
    if @ensemble.save
      redirect_to @ensemble, notice: "Ensemble successfully created!"
    else
      render :new
    end
  end

  def edit
    @ensemble = Ensemble.find(params[:id])
  end

  def update
    @ensemble= Ensemble.find(params[:id])
    if @ensemble.update(ensemble_params)
      redirect_to @ensemble, notice: "Ensemble successfully updated!"
    else
      render :edit
    end
  end

  def destroy
    @ensemble = Ensemble.find(params[:id])
    @ensemble.destroy
    redirect_to ensembles_url, alert: "Ensemble successfully deleted!"
  end

  private

  def ensemble_params
    params.require(:ensemble).permit(:title, :composer, :publisher, :voicing, :pml)
  end
end
