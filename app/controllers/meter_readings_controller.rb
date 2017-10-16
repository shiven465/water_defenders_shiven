class MeterReadingsController < ApplicationController
  before_action :set_meter_reading, only: [:show, :edit, :update, :destroy]

  # GET /meter_readings
  # GET /meter_readings.json
  def index
    @meter_readings = MeterReading.all
  end

  # GET /meter_readings/1
  # GET /meter_readings/1.json
  def show
  end

  # GET /meter_readings/new
  def new
    @meter_reading = MeterReading.new
  end

  # GET /meter_readings/1/edit
  def edit
  end

  # POST /meter_readings
  # POST /meter_readings.json
  def create
    @meter_reading = MeterReading.new(meter_reading_params)

    respond_to do |format|
      if @meter_reading.save
        format.html { redirect_to @meter_reading, notice: 'Meter reading was successfully created.' }
        format.json { render :show, status: :created, location: @meter_reading }
      else
        format.html { render :new }
        format.json { render json: @meter_reading.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /meter_readings/1
  # PATCH/PUT /meter_readings/1.json
  def update
    respond_to do |format|
      if @meter_reading.update(meter_reading_params)
        format.html { redirect_to @meter_reading, notice: 'Meter reading was successfully updated.' }
        format.json { render :show, status: :ok, location: @meter_reading }
      else
        format.html { render :edit }
        format.json { render json: @meter_reading.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /meter_readings/1
  # DELETE /meter_readings/1.json
  def destroy
    @meter_reading.destroy
    respond_to do |format|
      format.html { redirect_to meter_readings_url, notice: 'Meter reading was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_meter_reading
      @meter_reading = MeterReading.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def meter_reading_params
      params.require(:meter_reading).permit(:value, :read_at, :unit)
    end
end
