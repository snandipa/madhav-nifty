class Notifications < ActionMailer::Base
  default from: "madnand@yahoo.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.notifications.welcome.subject
  #
  def welcome
    @greeting = "Hello"

    mail to: "mnandipa@gmail.com"
  end
end
