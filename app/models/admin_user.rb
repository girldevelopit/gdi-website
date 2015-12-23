class AdminUser < ActiveRecord::Base
  rolify
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable,
         :recoverable, :rememberable, :trackable, :validatable
  has_one :bio
  belongs_to :chapter
  accepts_nested_attributes_for :roles

	def admin?
    roles.any?{|role| role.name == "admin"}
	end
  
end
