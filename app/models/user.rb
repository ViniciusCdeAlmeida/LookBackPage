# frozen_string_literal: true

class User < ActiveRecord::Base
  extend Devise::Models
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  belongs_to :person
  devise :database_authenticatable, 
         :registerable,
         :recoverable, 
         :rememberable, 
        #  :trackable,  
         :validatable, 
         :omniauthable
         
  include DeviseTokenAuth::Concerns::User
end
