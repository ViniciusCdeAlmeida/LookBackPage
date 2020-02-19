module Api
  module V1
    class PersonController < ApplicationController
    before_action :set_person, only: [:show, :update, :destroy]

    # GET /persons
    def index
      @persons = Person.all

      render json: @persons
    end

    # GET /persons/1
    def show
      render json: @person
    end

    # POST /persons
    def create
      @person = Person.new(person_params)

      if @person.save
        render json: @person, status: :created, location: (@person)
      else
        render json: @person.errors, status: :unprocessable_entity
      end
    end

    # PATCH/PUT /persons/1
    def update
      if @person.update(person_params)
        render json: @person
      else
        render json: @person.errors, status: :unprocessable_entity
      end
    end 
  end
end

  # DELETE /persons/1
  def destroy
    @person.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_person
      @person = Person.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def person_params
      params.require(:person).permit(:name, :phone, :gender)
    end
  end