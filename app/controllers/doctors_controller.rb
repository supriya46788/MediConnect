class DoctorsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_doctor, only: [:show, :edit, :update, :destroy]

  def index 
    @doctors = Doctor.all
  end 

  def show 

  end 

  def new 
    @doctor = Doctor.new
  end 

  def create 
    @doctor = Doctor.new(doctor_params)
    if @doctor.save 
      redirect_to doctor_path(@doctor)
    else
      render :new 
    end
  end 


  private 

  def set_doctor 
    @doctor = Doctor.find(params[:id])
  end

  def doctor_params
    params.require(:doctor).permit(:name, :phone_number, :specializations)
  end
end
