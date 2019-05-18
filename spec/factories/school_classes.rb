# == Schema Information
#
# Table name: school_classes
#
#  id          :integer          not null, primary key
#  title       :string           not null
#  room_number :integer          not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

FactoryBot.define do
  factory :school_class do
    title "Computer Science"
    room_number 5
  end
end
