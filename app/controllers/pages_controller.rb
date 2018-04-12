class PagesController < ApplicationController

  before_action :set_kitten_url, only: [:kitten, :kittens]

  def welcome
    @header = "This is the welcome page"
  end

  def about
    render :about
    @header = "This is the about page"
  end

  def contest

    # render :contest
    # @header = "This is the contest page"
    flash[:notice]= "Sorry, the contest has ended"
    redirect_to welcome_path
  end

  def kitten
    # requested_size = params[:size]
    # @kitten_url = "http://lorempixel.com/#{requested_size}/#{requested_size}/cats"

    # set_kittens_url
  end

  def kittens
    # set_kittens_url
  end

  def set_kitten_url
    requested_size = params[:size]
    @kitten_url = "http://lorempixel.com/#{requested_size}/#{requested_size}/cats"
  end

  def secrets
    og_magic_word= "gucci"
    entered_word= params[:magic_word]

    if og_magic_word == entered_word
      render :secrets
    else
      flash[:alert] = "Sorry, you're not authorized to see that page!"
      redirect_to welcome_path
    end

  end
end
