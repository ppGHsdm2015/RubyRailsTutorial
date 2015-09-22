class Role < ActiveRecord::Base
	validates :rolename, presence: true
	validates :edituser, presence: true 
	validates :modifymasters, presence: true 
	validates :allowmod, presence: true
	validates :allowanalysis, presence: true
	validates :allowupload, presence: true
end