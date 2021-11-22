class Api::V1::PeopleController < ApiController
    
  def index
    people = Person.all
    data = PersonSerializer.new(people)
    json_response(data, :ok)
  end

  def show
    data = PersonSerializer.new(person)
    json_response(data, :ok)
  end

  private 

  def person 
    @person ||= Person.find(params.dig(:id))
  end
end
