class PeopleController < ApplicationController
  def index
    if params[:filter]
      @people = Person.find_all_by_status(Person.status_enum[params[:filter]])
    else
      @people = Person.all
    end
  end

  def update
    person = Person.find(params[:id])
    person.update_attributes(params[:person])
    render :text => 'done'
  end
end
