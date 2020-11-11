class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :articles
  validates :email, uniqueness: true
  validates :username, presence: true
  validates_format_of :username, with: /^[a-zA-Z0-9_\.]*$/, :multiline => true
  validates :username, uniqueness: true
  validates :subscription, presence: true
  before_validation :ensure_subscription_has_a_value
  before_create :give_admin_to_first_user

  private

  def ensure_subscription_has_a_value
    if subscription.nil?
      self.subscription = 2 # subscriptions: 0 = disabled, 1 = daily, 2 = weekly
    end
  end

  def give_admin_to_first_user
    self.admin = User.count == 0
  end

end
