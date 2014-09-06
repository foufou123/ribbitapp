class EventstersController < ApplicationController
  before_action :set_eventster, only: [:show, :edit, :update, :destroy]

  # GET /eventsters
  # GET /eventsters.json
  def index
    @eventsters = Eventster.all
  end

  # GET /eventsters/1
  # GET /eventsters/1.json
  def show
  end

  # GET /eventsters/new
  def new
    @eventster = Eventster.new
  end

  # GET /eventsters/1/edit
  def edit
  end

  # POST /eventsters
  # POST /eventsters.json
  def create
    @eventster = Eventster.new(eventster_params)

    respond_to do |format|
      if @eventster.save
        format.html { redirect_to @eventster, notice: 'Eventster was successfully created.' }
        format.json { render :show, status: :created, location: @eventster }
      else
        format.html { render :new }
        format.json { render json: @eventster.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /eventsters/1
  # PATCH/PUT /eventsters/1.json
  def update
    respond_to do |format|
      if @eventster.update(eventster_params)
        format.html { redirect_to @eventster, notice: 'Eventster was successfully updated.' }
        format.json { render :show, status: :ok, location: @eventster }
      else
        format.html { render :edit }
        format.json { render json: @eventster.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /eventsters/1
  # DELETE /eventsters/1.json
  def destroy
    @eventster.destroy
    respond_to do |format|
      format.html { redirect_to eventsters_url, notice: 'Eventster was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_eventster
      @eventster = Eventster.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def eventster_params
      params.require(:eventster).permit(:title, :location, :description)
    end
end
