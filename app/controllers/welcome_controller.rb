class WelcomeController < ApplicationController
  before_action :authenticate_user!, exept: [:index, :show]
  def index
    @livres = Livre.all
  end

  def show
    @livre = Livre.find(params[:id])
  end
end
