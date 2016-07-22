class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, #:recoverable,
         :rememberable, :trackable, :validatable


   #Password complexityy ~~~~~~~~~~
  attr_accessor :password
  validates :password, :presence => true,
  		               :format => {:with => /(?=.*[a-z])(?=.*[A-Z])/}

  has_many :pins
end
