class User < ApplicationRecord
  authenticates_with_sorcery!

  # devise :database_authenticatable, :registerable,
  #        :recoverable, :rememberable, :trackable, :validatable

  mount_uploader :image, PhotoUploader

  has_many :albums

  accepts_nested_attributes_for :albums, allow_destroy: true

  validates_presence_of :email
  validates_uniqueness_of :email, :username

  def display_name
    first_name.present? && last_name.present? ? "#{first_name} #{last_name}" : email
  end

  def auth_token
    payload = {user_id: id}
    JWT.encode payload, Rails.application.secrets.secret_key_base, 'HS256'
  end
end
