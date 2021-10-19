class Api::V1::PeopleController < ApplicationController
  
  before_action :set_person, only: %i[ show ]
  
  def index
    people = Person.all
    data = PeopleSerializer.new(people).serializable_hash
    json_response(
      data,
      :ok,
      I18n.t('general.controller_responses.messages.success_transaction')
    )
  end

  def show
    data = PeopleSerializer.new(@person).serializable_hash
    json_response(
      data,
      :ok,
      I18n.t('general.controller_responses.messages.find_ok')
    )
  end

  def create
    person = Person.create!(people_params)
    data = PeopleSerializer.new(person).serializable_hash
    json_response(
      data,
      :created,
      I18n.t('general.controller_responses.messages.created_ok')
    )
  end

  def update
  end

  def destroy;end

  private 

  def people_params
    params.require(:person).permit(
      :name,
      :lastname,
      :genre_id,
      :real_photo,
      :cartoon_photo
    )
  end

  def set_person 
    @person = Person.find(params.dig(:id))
  end
end
