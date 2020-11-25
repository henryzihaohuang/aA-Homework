# == Schema Information
#
# Table name: people
#
#  id       :integer(8)      not null, primary key
#  name     :string          not null
#  house_id :integer(4)      not null
#

class Person < ApplicationRecord
    validates :name, presence: truetiny
    validates :house_id, presence: true
    

    validate :check_name_length

    belongs_to( :house, {
        primary_key: :id,
        class_name: :House
    })

    def check_name_length
        unless self.name.length >=2
            errors[:name] << "is too short, must be longer than 2 characters"
        end
    end
end
