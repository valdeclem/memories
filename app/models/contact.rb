class Contact < MailForm::Base
  attribute :nom,      :validate => true
  attribute :prenom,   :validate => true
  attribute :email,    :validate => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
  attribute :objet,    :validate => true
  attribute :message
  attribute :nickname,  :captcha  => true

  # Declare the e-mail headers. It accepts anything the mail method
  # in ActionMailer accepts.
  def headers
    {
      :subject => "Message depuis la page Contact !",
      :to => "mesmotsfrance@gmail.com",
      :from => %("#{nom}" <#{email}>)
    }
  end
end