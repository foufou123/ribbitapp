class ApartmentsController < ApplicationController
  # GET /apartments
  # GET /apartments.json
  def index
    @apartments = Apartment.all

    render json: @apartments
  end

  # GET /apartments/1
  # GET /apartments/1.json
  def show
    @apartment = Apartment.find(params[:id])

    render json: @apartment
  end

  # GET /apartments/new
  # GET /apartments/new.json
  def new
    @apartment = Apartment.new

    render json: @apartment
  end

  # POST /apartments
  # POST /apartments.json
  def create
    @apartment = Apartment.new(params[:apartment])

    if @apartment.save
      render json: @apartment, status: :created, location: @apartment
    else
      render json: @apartment.errors, status: :unprocessable_entity
    end
  end

  # PUT /apartments/1
  # PUT /apartments/1.json
  def update
    @apartment = Apartment.find(params[:id])

    if @apartment.update_attributes(params[:apartment])
      head :no_content
    else
      render json: @apartment.errors, status: :unprocessable_entity
    end
  end

  # DELETE /apartments/1
  # DELETE /apartments/1.json
  def destroy
    @apartment = Apartment.find(params[:id])
    @apartment.destroy

    head :no_content
  end
end
