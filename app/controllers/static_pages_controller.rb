class StaticPagesController < ApplicationController
  def index
  end

def landing_page
  @products = Product.limit(5)
end

def thank_you
  @name = params[:name]
  @email = params[:email]
  @message = params[:message]
  ActionMailer::Base.mail(:from => @email,
      :to => 'joanna.broad93@gmail.com',
      :subject => "A new contact form message from nill",
      :body => @message).deliver_now
end


end
