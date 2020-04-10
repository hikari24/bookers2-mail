class ApplicationMailer < ActionMailer::Base
  default from: 'Bookers2'
  bcc: 'a.hikari24@gmail.com'
  reply_to: 'a.hikari24@gmail.com'
  layout 'mailer'

end
