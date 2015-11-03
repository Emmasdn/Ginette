class AnnoncesController < ApplicationController

   before_action :set_annonce, only: [:show, :update, :edit, :destroy]

  def index
    # @annonces = Annonce.all
    if params[:city]
      @annonces = Annonce.where(city: params[:city])
    else
      @annonces = Annonce.all
    end
  end

  def show
  end

  def new
    @annonce = Annonce.new
  end

  def create
    @annonce = Annonce.new(annonce_params)
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
    params.require(:annonce).permit( :name, :picture, :city, :price, :description, :child_number, :user_id)
  end

end
