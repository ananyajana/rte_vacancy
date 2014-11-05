class HomeController < ApplicationController
def index
  @schools = School.search(params[:search])
end
end
