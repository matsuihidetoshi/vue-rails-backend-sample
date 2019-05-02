class ExamineesController < ApplicationController
  before_action :require_user_logged_in

  def index
    @examinees = Examinee.all.page(params[:page])
  end

  def show
    @examinee = Examinee.find(params[:id])
  end

  def create
    @examinee = Examinee.new(examinee_params)
    respond_to do |format|
      if @examinee.save
        format.json { render json: 'ok!', status: :created }
      else
        format.json { render json: 'ng!', status: :unprocessable_entity }
      end
    end
  end

  private

  def examinee_params
    params.require(:examinee)
    .permit(
      :name,
      :time_1, :time_2, :time_3, :time_4, :time_5, :time_total,
      :miss_1, :miss_2, :miss_3, :miss_4, :miss_5, :miss_total,
      :ratio_1, :ratio_2, :ratio_3, :ratio_4, :ratio_5, :ratio_total
    )
  end
end
