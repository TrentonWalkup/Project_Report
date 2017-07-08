class ReportsController < ApplicationController
  protect_from_forgery prepend: true
  before_action :authenticate_user!
  def index

  end
  def new
    @report = Report.new
  end
  def create
    @report = Report.create(report_params)
    flash[:notice] = "Thank you for submitting report!"
    redirect_to @report
  end
  def show
    @report =  Report.find(params[:id])
  end
  private
    def report_params
      params.require(:report).permit(:sprint, :passpercentage, :team)
    end

end