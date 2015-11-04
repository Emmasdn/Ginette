class AnnoncesController < ApplicationController

   before_action :set_annonce, only: [:show, :update, :edit, :destroy]

  def index
    @annonces = Annonce.all

    # Let's DYNAMICALLY build the markers for the view.

    if params[:city]
      @annonces = Annonce.where(city: params[:city])
    else
      @annonces = Annonce.all
    end

    @markers = Gmaps4rails.build_markers(@annonces) do |annonce, marker|
      marker.lat annonce.latitude
      marker.lng annonce.longitude
    end
  end


  def show
    @markers = Gmaps4rails.build_markers(@annonce) do |annonce, marker|
      marker.lat annonce.latitude
      marker.lng annonce.longitude
    end
  end

  def new
    @annonce = Annonce.new
  end

  def create
    @annonce = Annonce.new(annonce_params)
    @annonce.save
      if @annonce.save
        redirect_to annonce_path(@annonce)
      else
        render :new
      end
  end

  def edit
  end

  def update
    @annonce = Annonce.update(annonce_params)
    if @annonce.save
      redirect_to annonce_path(annonce)
    else
      render :edit
    end
  end

  def destroy
    @annonce.delete
    redirect_to root_path
  end


  private

  def set_annonce
    @annonce = Annonce.find(params[:id])
  end

  def annonce_params
    params.require(:annonce).permit( :name, :adresse, :picture, :city, :price, :description, :child_number, :user_id)
  end

end
