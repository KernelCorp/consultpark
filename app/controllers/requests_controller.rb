class RequestsController < ApplicationController
  respond_to :json, only: :create
  layout false

  def create
    @request = Request.new params[:request]
    if @request.save
      respond_with @request, status: :created, location: '/'
    else
      respond_with @request.errors, status: :unprocessable_entity
    end
  end

  def index;end

  private
  def request_params
    params.require(:request).permit(:name, :email, :phone, :from)
  end

end