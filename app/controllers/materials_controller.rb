class MaterialsController < ApplicationController
  require 'rails_autolink'
  def index
    @materials = Material.all

  respond_to do |format|
    format.html # index.html.erb
    format.json { render json: @materials }
  end
end

  def show
   @material = Material.find_by(slug: params[:id])
  end
end
