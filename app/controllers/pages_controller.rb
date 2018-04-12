class PagesController < ApplicationController

  def welcome
    # render :welcome
    @header = "This is the welcome page"
  end

  def about
    render :about
  end

  def contest
    render :contest
  end
end
