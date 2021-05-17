class ApiController < ApplicationController
  before_action :set_format
  before_action :authenticate_user!

  private

  def set_format
    request.format = :json
  end
end
