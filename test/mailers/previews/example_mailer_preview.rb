# Preview all emails at http://localhost:3000/rails/mailers/example_mailer
class ExampleMailerPreview < ActionMailer::Base
  def self.sample_mail_preview
    ExampleMailer.sample_mail_preview(User.first)
  end 
end

ExampleMailerPreview.sample_mail_preview


