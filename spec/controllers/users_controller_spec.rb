require "rails_helper"
require "spec_helper"

describe UsersController do 
    let!(:user_setup)(User.create!(:fullname 'Premila Pinto', :email => 'premila1480@yahoo.co.in', :password => 'testing123', :password_confirmation => 'testing123', :organisation => 'AUT', :gender => 'F', :age => '30' ))
    
    describe "GET #index" do
        before {get :index}
        it "should assign @users" do
            expect(assigns(:users)).
end 