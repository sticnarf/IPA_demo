class User < ActiveRecord::Base
  enum member: [ :member, :visitor, :applying, :former ]
  validates :name, presence: true, length: { maximum: 20 }
  validates :username, presence: true, uniqueness: { case_sensitive: false }
  validates :classroom, presence: { if: lambda { self.applying? || self.member? } }

  before_save { self.username = username.downcase }
  before_create :create_remember_token

  has_secure_password

  def User.new_remember_token
    SecureRandom.urlsafe_base64
  end

  def User.hash(token)
    Digest::SHA1.hexdigest(token.to_s)
  end

  private

  def create_remember_token
    self.remember_token = User.hash(User.new_remember_token)
  end
end
