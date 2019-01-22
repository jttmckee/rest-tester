class UsersController < ApplicationController
  def index
    @name = "I am the index action"
  end

  def new
    @name = "I am the new action"
  end

  def show
    @name = "I am the show action"
  end

  def edit
    @name = "I am the edit action"
  end

  def create
    @name = "I am the create action"
  end

  def update
    @name = "I am the update action"
  end

  def destroy
    @name = "I am the destroy action"
  end
end
