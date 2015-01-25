class OperationsController < ApplicationController
  def specialties
    @specialties = SurgicalSpecialty.all
    render :json => @specialties, :only => :name, :include => { :operations => { :only => [:name, :surgery_id] } }
  end
end
