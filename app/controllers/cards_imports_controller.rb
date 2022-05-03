class CardsImportsController < ApplicationController
  def new
    @cards_import = CardsImport.new
  end

  def create
    @cards_import = CardsImport.new(params[:cards_import])
    if @cards_import.save
      redirect_to cards_path
    else
      render :new
    end
  end
end
