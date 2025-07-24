class V2::PingController < ApplicationController
  def index
    render json: { "message": "from v2" }
  end
end
