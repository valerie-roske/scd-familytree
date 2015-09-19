class PledgeClassesController < ApplicationController

  def index
    @pledge_classes = PledgeClass.all

    respond_to do |format|
      format.html
      format.json { render json: @pledge_classes }
    end
  end

  def new
    @pledge_class = PledgeClass.new

    respond_to do |format|
      format.html
      format.json { render json: @pledge_class }
    end
  end

  def create
    @pledge_class = PledgeClass.new(pledge_class_params)

    @pledge_class.save
    redirect_to new_pledge_class_path
  end

  private

  def pledge_class_params
    params.require(:pledge_class).permit(:name, :semester, :year)
  end
end
