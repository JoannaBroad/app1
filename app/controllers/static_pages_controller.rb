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
      :to => ENV["GMAIL_SMTP_USER"],
      :subject => "A new contact form message from #{@name}",
      :body => @message).deliver_now
end


end
