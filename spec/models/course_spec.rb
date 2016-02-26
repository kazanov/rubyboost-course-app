require 'rails_helper'

describe Course, type: :model do
  it { should validate_presence_of :title }
  it { should validate_length_of(:title).is_at_most(30) }

  describe 'creating course with empty title' do
    @course = Course.new(title: '')
    it { should_not be_valid }
  end

  describe 'creating course with long title' do
    @course = Course.new(title: '12345' * 10)
    it { should_not be_valid }
  end

  describe '#recent' do
    let!(:course_1) { create :course }
    let!(:course_2) { create :course }

    it 'should order courses by created_at by DESC' do
      expect(Course.recent.to_a).to match_array [course_2, course_1]
    end
  end
end
