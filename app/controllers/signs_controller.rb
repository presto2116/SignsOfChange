
class SignsController < ApplicationController

  def index
    @signs = Sign.all
  end

  def new
    @sign = Sign.new
  end

  def create
      @sign = Sign.new(sign_params)
      if @sign.save
      redirect_to sign_path("1")
    else
      render :new
    end
  end

  def show
    @signs = Sign.all
  end

  def destroy
    @sign = Sign.find(params[:id])
    @sign.destroy
    redirect_to sign_path("1")
  end

  private
    def sign_params
      return params[:sign].permit(:sign_source)
    end
end
