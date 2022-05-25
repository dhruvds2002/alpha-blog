class Article < ApplicationRecord
    belongs_to :user
    before_create :greeting_message
    def greeting_message
    puts "Hey! I will run before any object is created"
    end
    after_create :display
    after_update :display
    validates :title, presence: true, length: {minimum: 6 , maximum: 15};

    def display
        if self.name.present?
            puts "Name is present"
        else
        puts "Name is not present"
        end
    end

end