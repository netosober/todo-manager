require 'rails_helper'

RSpec.describe Task, :type => :model do
  let(:task) { build(:task) }
  subject { build(:task) }

  it { is_expected.to be_valid }
  it { is_expected.to validate_presence_of :title }
  it { is_expected.to validate_presence_of :due_on }

  describe '#expired?' do

    context 'with future date' do

      it 'is false' do
        expect(task.expired?).to be false
      end
    
    end

    context 'with past date' do

      let(:expired_task) { build(:expired_task) }
      it 'is true' do
        expect(expired_task.expired?).to be true
      end
    
    end

  end

end
