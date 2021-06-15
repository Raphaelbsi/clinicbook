class DoctorsController < ApplicationController
  def show
  end

  def index
    @doctor = doctors
  end

  def create
    @doctor = Doctor.new(doctor_params)
    respond_to do | format | 
      if @doctor.save
        format.json {render json: true}
      else
        format.json{render json: @doctor.errors status: :unprocessable_entity}
      end
    end
  end

  def update
    respond_to do |format|
      if @doctor.update(doctor_params)
        format.json { render json: true }
      else
        format.json { render json: @doctor.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @doctor.destroy

    respond_to do | format |
      format.json { render json: true }
    end

  end
end
