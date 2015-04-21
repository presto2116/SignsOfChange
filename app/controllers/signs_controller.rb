
class SignsController < ApplicationController

  def index
    @signs = Sign.all
  end

  def new
    @sign = Sign.new
  end

  def show
    @sign = Sign.find(params[:id])
  end

  # def edit
  #   @sign = Sign.find(params[:id])
  # end

  def create
      @sign = Sign.new(sign_params)
      if @sign.save
      redirect_to signs_path
    else
      render :new
    end
  end

  def destroy
    @sign = Sign.find(params[:id])
    @sign.destroy
    redirect_to("/signs")
  end

  private
    def sign_params
      return params[:sign].permit(:sign_text)
    end
end
