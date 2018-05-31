class PeopleController < ApplicationController

  layout 'people'

  def index
    @msg = 'Person data'
    @data = Person.all
  end

  def show
    @msg = "Indexed data"
    @data = Person.find(params[:id])
  end

  def add
    @msg = "add new data"
    @person = Person.new
  end

  # protect_from_forgery

  def create
    # if request.post?
      # obj = Person.create(
      # name: params['name'],
      # age: params["age"],
      # mail: params["mail"]
      # )
      # Person.create(person_params)
    # end
    # redirect_to '/people'
    @person = Person.new(person_params)
    if @person.save
      redirect_to '/people'
    else
      # エラーメッセージの表示
      # re = ""
      # @person.errors.messages.each do |key, vals|
      #   vals.each do |val|
      #     re += '<span style="color:red">' + key.to_s + ' ' + '</span>' + val + '<br>'
      #   end
      # end
      # @msg = re.html_safe
      render 'add'
    end
  end

  def edit
    @msg = "edit data.[id = " + params[:id] + "]"
    @person = Person.find(params[:id])
  end

  def update
    obj = Person.find(params[:id])
    obj.update(person_params)
    redirect_to '/people'
  end

  def delete
    obj = Person.find(params[:id])
    obj.destroy
    redirect_to '/people'
  end

  def find
    @msg = 'please type search word'
    @people = Array.new
    if request.post?
      # obj = Person.find params['find'] search by id

      # @people = Person.where name: params[:find] search by name

      # @people = Person.where "age >= ?", params[:find] search by fomula put.
      # in this case checking if the age of each person is greater or equal to value in

      # @people = Person.where "mail like ?", '%' + params[:find] +'%'
      # output all of the words containing input
      f = params[:find].split(",")
      @people = Person.where "age >= ? and age <= ?", f[0], f[1]
    end
  end

  private
  def person_params
    params.require(:person).permit(:name, :age, :mail)
  end
end
