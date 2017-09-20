require 'nokogiri'

file = File.open("/Users/jacobabraham/Documents/Learn/app_email/app/views/example_mailer/input.html", "rb")
output = File.open("/Users/jacobabraham/Documents/Learn/app_email/app/views/example_mailer/sample_email.html.erb")
contents = file.read

doc = Nokogiri::HTML contents
html_string='<html><body>'

counter=0
doc.xpath("//div[contains(@class, 'a3s aXjCH')]").each do |html|
  html_string << html.inner_html << "</body></html>"
end
open(output, 'w') { |f|
  f.puts html_string
}



