class Api::V1::PeopleController < ApiController
  
  before_action :set_person, only: [:show]
  
  def index
    people = Person.all
    json_response(people, :ok)
  end

  def show
    json_response(@person, :ok)
  end

  def wizards 
    wizards_ids = Wizard.select(:person_id).all.pluck(:person_id)
    wizards = Person.where(id: wizards_ids)
    json_response(wizards, :ok)
  end 

  def students 
    students_ids = Student.select(:person_id).all.pluck(:person_id)
    students = Person.where(id: students_ids)
    json_response(students, :ok)
  end

  private 

  def set_person 
    @person = Person.find(params.dig(:id))
  end
end
