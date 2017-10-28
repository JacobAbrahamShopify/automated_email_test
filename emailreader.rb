require 'nokogiri'

# file = File.open("/Users/jacobabraham/Documents/Learn/emailmaker/app_email/app/views/example_mailer/input.html", "rb")
# output = File.open("/Users/jacobabraham/Documents/Learn/emailmaker/trial.html")
# contents = file.read

# doc = Nokogiri::HTML contents




# html_string='<html><body>'
# #x = doc.xpath('//*[contains(text(),"package")]').inner_html

# # to_html = Nokogiri::HTML html_string
#  open(output, 'w') { |f|
#   f.puts contents
#  }


file = File.open("/Users/jacobabraham/Documents/Learn/emailmaker/app_email/app/views/example_mailer/input.html", "rb")
output = File.open("/Users/jacobabraham/Documents/Learn/emailmaker/app_email/app/views/example_mailer/sample_email.html")
contents = file.read

doc = Nokogiri::HTML contents
html_string='<html><body>'

counter=0
doc.xpath("//div[contains(@class, 'gmail_quote')]").each do |html|
  html_string << html.inner_html << "</body></html>"
end
open(output, 'w') { |f|
  f.puts html_string
}


