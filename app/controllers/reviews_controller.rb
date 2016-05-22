class ReviewsController < ApplicationController

  def login

  end

  def profile
    @user = User.first
  end

  def unrated
    @reservations = User.first.reservations.completed
  end

  def confirmation

  end

end