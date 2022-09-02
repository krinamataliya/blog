class PostMailer < ApplicationMailer
  #  default from: 'sender id'

  def post_creation_mail(emailid)
    @email_id=emailid
    mail to:@email_id ,subject: 'Welcome to My Awesome Site'
  end
end
