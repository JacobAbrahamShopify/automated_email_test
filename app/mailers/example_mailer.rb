class ExampleMailer < ApplicationMailer
  default from:  'ebay@ebay.com'
  default to: 'jabrah29@uic.edu'
  def sample_email
    mail(subject: 'SHIPPED: NEW AVID ELIXIE E3 Hydraulic Disc Brake For MTB/BMX Fold Bike Bicycle Front+Rear')
  end

  def best_buy
    mail(subject: 'Best Buy test email')
  end 
end
