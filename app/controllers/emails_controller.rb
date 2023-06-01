class EmailsController < ApplicationController

  def index
    @emails = Email.all
  end

  def create
    @email = Email.create(object: Faker::Books::Lovecraft.word, body: Faker::Books::Lovecraft.paragraph, read: false)
    redirect_to emails_path
  end


  def show
    @email = Email.find(params[:id])
    @email.update(read: true)
  end

  def update
  end

  def edit
  end

  def destroy
    @email = Email.find(params[:id])
    @email.destroy
    redirect_to emails_path
  end
  
end
