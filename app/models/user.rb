class User < ActiveRecord::Base
    has_many :activities, dependent: :destroy
#    before_save { self.email = email.downcase }
    validates :username, presence: true,
              uniqueness: {case_sensitive: false},
              length: { minimum: 3, maximum: 25 }
    validates :cowboy, inclusion: { in: [true, false] }
    validates :handy, inclusion: { in: [true, false] }
    validates :doctor, inclusion: { in: [true, false] }
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
    validates :email, presence: true, length: { maximum: 105 },
              format: {with: VALID_EMAIL_REGEX}
    VALID_PHONE_REGEX = /\A(\+\d{1,2}\s)?\(?\d{3}\)?[\s.-]?\d{3}[\s.-]?\d{4}\z/
    validates :phone, presence: true, length: { maximum: 105 },
              format: {with: VALID_PHONE_REGEX}
    validates :address, presence: true

    has_secure_password
end
