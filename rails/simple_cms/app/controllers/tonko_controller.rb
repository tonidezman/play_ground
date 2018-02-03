class TonkoController < ApplicationController
  def index
  end

  def show
    @tonko = Tonko.find(params[:id])
  end
end
