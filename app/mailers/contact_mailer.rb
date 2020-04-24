class ContactMailer < ApplicationMailer
  # default from: "amaebilove@gmail.com"   # 送信元アドレス
  default to: "tenju.eco@gmail.com"     # 送信先アドレス
 
  def received_email(contact)
    @contact = contact
    mail(subject:  'お問い合わせを承りました')
  end
end
