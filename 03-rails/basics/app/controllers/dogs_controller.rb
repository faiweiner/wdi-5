class DogsController < ApplicationController
  def index
    
  end
  def new
    redirect_to('/')
  end
  def faq
    render '/pages/faq'
  end
end