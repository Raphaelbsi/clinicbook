class PatientsController < ApplicationController
  def show
  end

  def index
    @patient = patients
  end

  def create
    @patient = patient.new(patient_params)
    respond_to do | format | 
      if @patient.save
        format.json {render json: true}
      else
        format.json{render json: @patient.errors status: :unprocessable_entity}
      end
    end
  end

  def update
    respond_to do |format|
      if @patient.update(patient_params)
        format.json { render json: true }
      else
        format.json { render json: @patient.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @patient.destroy

    respond_to do | format |
      format.json { render json: true }
    end
  end
  
end
