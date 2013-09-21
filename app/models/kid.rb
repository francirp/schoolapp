class Kid < ActiveRecord::Base

  after_create :create_new_user


  private

    def create_new_user
      user = User.new

    end

end
