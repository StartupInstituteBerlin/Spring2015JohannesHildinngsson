class ApplicationMailer < ActionMailer::Base
  default from: "reservation@restapp.com"
  layout 'mailer'
end
