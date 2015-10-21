require 'rails_helper'

#RSpec.describe User, type: :model do
#pending "add some examples to (or delete) #{__FILE__}"
#end

describe User do
    context 'validate user model' do
        it 'should validate a valid user' do
            user=User.create(fullname: 'suneth', email:'sunethrodrigo55@gmail.com', password:'qwertasw', password_confirmation: 'qwertasw')
            expect(user).to be_valid
        end
        it 'should show error if having no fullname' do
            user=User.create(fullname: '')
            expect(user).to be_invalid
        end
        it 'should show error if having no email' do
            user=User.create(email: '')
            expect(user).to be_invalid
        end
        it 'should show error if having no password' do
            user=User.create(password: '')
            expect(user).to be_invalid
        end
        
        it 'should show error if having no password confirmation' do
            user=User.create(password_confirmation: '')
            expect(user).to be_invalid
        end
        
         it 'should show error if password less than 8 characters' do
            user=User.create(password: 'qwert')
            expect(user).to be_invalid
        end
        
        
        
        
    end
end