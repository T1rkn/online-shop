class MainPageController < ApplicationController
  def index
    @devices = Device.all
  end
end
