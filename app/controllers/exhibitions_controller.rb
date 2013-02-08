class ExhibitionsController < ApplicationController
  protect_from_forgery
  
  def index
    @exhibitions = Exhibition.chronological
  end
end