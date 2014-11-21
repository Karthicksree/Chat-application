class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :conversations, :foreign_key => :sender_id

  after_save :load_into_soulmate
	before_destroy :remove_from_soulmate
 
        validates_uniqueness_of :name
 
	private 
 
	def load_into_soulmate
		loader = Soulmate::Loader.new("users")
		loader.add("term" => name, "id" => self.id, "data" => {
			"link" => Rails.application.routes.url_helpers.root_path(self)
	   	})
	end
 
	def remove_from_soulmate
		loader = Soulmate::Loader.new("users")
	    loader.remove("id" => self.id)
	end


end
