class HomeController < ApplicationController
  # GET /homes
  # GET /homes.json
  def index
    respond_to do |format|
      format.html # index.html.erb
    end
  end
end
  