class TestsController < ApplicationController

  def index
    @current_age = session[:age]
    @current_status = session[:status]
    @current_reason = session[:reason]
    @current_surgery = session[:surgery]

    if params[:sort] != session[:sort]
      session[:sort] = sort
      flash.keep
      redirect_to :sort => sort, :ratings => @selected_ratings and return
    end
  end

  def results
    options = params[:results]

    @current_age = options[:age]
    @current_status = options[:status]
    @current_reason = options[:reason]
    @current_surgery = options[:surgery]

    if options[:status] == '1' or options[:reason] == nil
      options[:reason] = '0'
    end

    @recommend = Patient.where(options).where("recommendation = 1").first.tests
    @consider  = Patient.where(options).where("recommendation = 2").first.tests
  end

end
