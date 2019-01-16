class DogsController < ApplicationController

  def index
    @dogs = Dog.all
  end

  def show
    @dog = Dog.find(params[:id])
    @employees = @dog.employees
  end

  def index_sort
    @dogs = Dog.all.sort_by{|dog| dog.employees.count}
  end

  def sort
    redirect_to sort_dogs_path
    byebug
  end

end
