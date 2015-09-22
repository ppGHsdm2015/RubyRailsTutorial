class Semethgy < ActiveRecord::Base
	validates :semethgyname, presence: true
	validates :semethgydesc, presence: false
end