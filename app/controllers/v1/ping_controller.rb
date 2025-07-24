class V1::PingController < ApplicationController
  def index
    render json: {"message": "from v1"}
  end
end
