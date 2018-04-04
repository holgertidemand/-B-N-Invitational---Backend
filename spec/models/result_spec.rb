require 'rails_helper'

RSpec.describe Result, type: :model do
  describe 'DB Table' do
    it {is_expected.to have_db_column :score}
    it {is_expected.to have_db_column :number_of_votes}
    it {is_expected.to have_db_column :rating_collection}
  end

  describe 'Factory' do
    it 'to be vaild' do
      expect(create(:result).valid?).to eq true
    end
  end

  describe 'Assosiations' do
    it {is_expected.to belong_to :athlete}
  end
end
