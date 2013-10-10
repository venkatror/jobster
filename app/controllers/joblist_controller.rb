class JoblistController < ApplicationController
skip_before_filter :authorize
  def index
    @jobs = Job.all
    @search_results=Job.search(params[:search]) if params[:search].present?
  end

  
end
