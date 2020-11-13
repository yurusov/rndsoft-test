class SubscriptionMailer < ApplicationMailer

  def send_daily
    send(1, (Time.zone.yesterday.beginning_of_day)..(Time.zone.yesterday.end_of_day))
  end

  def send_weekly
    send(2, (Time.zone.yesterday.beginning_of_week)..(Time.zone.yesterday.end_of_day))
  end

  private

  def send(subscription, interval)
    users = User.where(subscription: subscription)
    @articles = Article.where(created_at: interval)
    unless @articles.empty? 
      users.each do |user|
        mail(
          to: user.email,
          subject: 'Подписка на новости',
          template_name: "subscription"
        )
      end
    end
  end

end
