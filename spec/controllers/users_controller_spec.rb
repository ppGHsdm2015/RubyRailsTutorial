require "rails_helper"
require "spec_helper"

describe UsersController do 
   describe "#new" do
        it "takes three parameters and returns a Book object" do
            @user.should be_an_instance_of User
        end
    end
end 