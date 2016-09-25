class Message < MailForm::Base
  include ActiveModel::Model

  attr_accessor :nickname
  validates :nickname, inclusion: { in: [''] }

  attribute :name,      :validate => true
  attribute :email,     :validate => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
  attribute :subject,   :validate => true
  attribute :textarea,  :validate => true

  # Declare the e-mail headers. It accepts anything the mail method
  # in ActionMailer accepts.
  def headers
    {
      :subject => "Update from Nick's Website",
      :to => 'nickvirden@gmail.com',
      :from => %("#{name}" <#{email}>)
    }
  end
end