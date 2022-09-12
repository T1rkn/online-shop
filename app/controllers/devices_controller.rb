class DevicesController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index
    @devices = Device.all
  end
end
