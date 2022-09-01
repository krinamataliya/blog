class PostMailer < ApplicationMailer
    default from: 'notifications@example.com'

  def post_creation_mail(emailid)
    @url  = 'http://example.com/login'
    mail(to: emailid, subject: 'Welcome to My Awesome Site')
  end
end
