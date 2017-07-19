class User < ApplicationRecord

  has_many :comments
  has_many :ideas

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :registerable, :recoverable, :rememberable, :trackable, :validatable

  validates_presence_of :username
  validates :username, uniqueness: true

  devise :database_authenticatable, :authentication_keys => [:username]

  def idea_count
    self.ideas.count
  end

end
