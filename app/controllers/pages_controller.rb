class PagesController < ApplicationController
  def about
  end

  def contact
  end

  def home
  end

  def else
  @else = params[:else]
  end


end
