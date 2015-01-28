class OperationsController < ApplicationController
  def specialties
    @specialties = SurgicalSpecialty.all
    render :json => @specialties, :only => [:id, :name], :include => { :operations => { :only => [:id, :name, :surgery_id] } }
  end
end
