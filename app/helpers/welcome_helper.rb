module WelcomeHelper
  def get_help
    return "hello"
  end

  def send_mail
    TestMailer.send_mail("helper").deliver_now
  end
end
