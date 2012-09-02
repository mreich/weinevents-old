class Notifier < ActionMailer::Base
  default from: "reich.michael@gmail.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.notifier.email_friend.subject
  #
  def email_friend(event, sender_name, receiver_email)
    @event = event
    @sender_name = sender_name
    @greeting = "Hallo"
    attachments["Weinevents.png"] = File.read(Rails.root.join("app/assets/images/Weinevents.png"))
    mail to: receiver_email, :subject => 'Interessantes Weinevent'
  end
end
