class StaticController < ApplicationController
  before_action :authenticate_user!

  def home
    @rooms = Room.all
  end
end
