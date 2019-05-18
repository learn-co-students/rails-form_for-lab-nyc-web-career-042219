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

require 'rails_helper'

describe SchoolClass do
  before(:each) do
    @school_class = SchoolClass.create!(title: "Computer Science", room_number: 5)
  end

  it 'can be created' do
    expect(@school_class).to be_valid
  end

end
