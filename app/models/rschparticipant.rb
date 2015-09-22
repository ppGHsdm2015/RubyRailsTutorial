class Rschparticipant < ActiveRecord::Base
    validates :partname, presence: true
end