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

class SchoolClass < ActiveRecord::Base
end
