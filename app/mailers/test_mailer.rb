class TestMailer < ApplicationMailer
  default from: 'hbqy001@163.com'

  def send_mail(comment)
    @url  = 'http://example.com/login'  
    mail( :subject => "send comment: #{comment}",   
          :to => "hbqy90@163.com",  
          :date => Time.now
        )   
  end   
end
