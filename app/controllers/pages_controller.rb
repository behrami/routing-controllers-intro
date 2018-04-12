class PagesController < ApplicationController

  before_action:set_kittens_url, only [:kitten, :kittens]

  def welcome
    @header = "This is the welcome page"
  end

  def about
    render :about
    @header = "This is the welcome page"
  end

  def contest
    render :contest
    @header = "This is the welcome page"
  end

  def kitten
    # requested_size = params[:size]
    # @kitten_url = "http://lorempixel.com/#{requested_size}/#{requested_size}/cats"

    # set_kittens_url
  end

  def kittens
    # set_kittens_url
  end

  def set_kittens_url
    requested_size = params[:size]
    @kitten_url = "http://lorempixel.com/#{requested_size}/#{requested_size}/cats"
  end
end
