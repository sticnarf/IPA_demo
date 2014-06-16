class User < ActiveRecord::Base
  enum member: [ :member, :visitor, :applying, :former ]

  has_secure_password
end
