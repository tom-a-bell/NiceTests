class TestsController < ApplicationController

  def index
    @patient = Patient.new
  end

  def results
    patient_criteria = params[:patient]

    if criteriaAreInvalid?(patient_criteria)
      flash[:error] = 'Please select options for all patient criteria.'
      redirect_to :back
      return
    end

    @matching_patients = Patient.where(patient_criteria)
    @recommend = @matching_patients.where(:recommendation => 1).first.tests
    @consider  = @matching_patients.where(:recommendation => 2).first.tests
    @patient   = @matching_patients.first
  end

  def criteriaAreInvalid?(criteria)
    criteria.nil? || criteria.length < 4 || criteria.values.include?(nil)
  end
end
