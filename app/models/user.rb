class User < ActiveRecord::Base


  after_create :create_kid_or_adult

  has_one :adult
  has_one :kid

  def self.kid
    "Kid"
  end

  def self.adult
    "Adult"
  end

  private

    def create_kid_or_adult
      if self.user_type == User.adult
        adult = Adult.new
        adult.user_id = self.id
        adult.save
      elsif self.user_type == User.kid
        kid = Kid.new
        kid.user_id = self.id
        kid.save
      end
    end

end
