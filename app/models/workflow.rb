class Workflow < ActiveRecord::Base
  validates :workflowname, presence: true
end  