# Preview all emails at http://localhost:3000/rails/mailers/subscription_mailer
class SubscriptionMailerPreview < ActionMailer::Preview
  def daily
    SubscriptionMailer.send_daily
  end
  def weekly
    SubscriptionMailer.send_weekly
  end
end
