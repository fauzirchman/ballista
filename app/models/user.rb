class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_one :profile

  after_create :auto_create_profile

  attr_accessor :name, :birthday, :gender, :location, :address

  private

    def auto_create_profile
      create_profile(name: name, birthday: birthday, gender: gender, location: location, address: address) unless profile.present?
    end
end
