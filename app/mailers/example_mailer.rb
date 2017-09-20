class ExampleMailer < ApplicationMailer
  default from:  'any_from_address@example.com'
  default to: 'trackify.test@gmail.com'

  def sample_email(user)
    @user = user
    mail(subject: 'Sample Email')

  end
end
