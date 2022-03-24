class UserMailer < ApplicationMailer
  default from: 'notifications@example.com'

  def welcome_email
    attachments.inline['image.jpg']=File.read('app/assets/images/1.jpg')
    @user = params[:user]
    @url  = 'http://example.com/login'
    mail(to: @user.email, subject: 'Welcome to My Awesome Site', cc: 'abc@gmail.com')
  end
end
