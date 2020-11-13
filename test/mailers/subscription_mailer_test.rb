require 'test_helper'
class SubscriptionMailerTest < ActionMailer::TestCase
  test "daily" do
    SubscriptionMailer.send_daily
  end
  test "weekly" do
    SubscriptionMailer.send_weekly
  end
end
