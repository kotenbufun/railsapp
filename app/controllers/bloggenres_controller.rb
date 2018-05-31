class BloggenresController < ApplicationController

  layout 'bloggenres'
  def index
    @data = Bloggenre.all
  end

  def add
    @bloggenre = Bloggenre.new
    if request.post?
      @bloggenre = Bloggenre.create bloggenre_params
      redirect_to '/bloggenres'
    end
  end

  def edit
    @bloggenre = Bloggenre.find(params[:id])
    if request.patch?
      @bloggenre.update bloggenre_params
      redirect_to '/bloggenres'
    end
  end

  def delete
    @bloggenre = Bloggenre.find(params[:id])
    if request.post?
      @bloggenre.destroy
      redirect_to '/bloggenres'
    end
  end

  private

  def bloggenre_params
    params.require(:bloggenre).permit(:name, :memo)
  end
end
