require 'rails_helper'

RSpec.describe Bachelorette, type: :model do
  describe 'relationships' do
    it {should have_many :contestants}
  end

  describe 'model methods' do
    it 'is the average age of the seasons contestants' do
      queen = Bachelorette.create!(name: 'Drama Queen', season_number: 1, description: 'The beginnig of misery.')
      lonely = Bachelorette.create!(name: 'Sad Lonely', season_number: 2, description: 'A continuation of misery.')
      hannah = Bachelorette.create!(name: 'Hannah Brown', season_number: 15, description: 'The Most Dramatic Season Yet!')

      con1queen = Contestant.create!(name: 'Clout Chaser', age: 24, hometown: 'Chicago IL', bachelorette_id: queen.id)
      con2queen = Contestant.create!(name: 'Fame Hungry', age: 26, hometown: 'Chicago IL', bachelorette_id: queen.id)
      con3queen = Contestant.create!(name: 'Sore Loser', age: 25, hometown: 'Hartford CT', bachelorette_id: queen.id)
      con1lonely = Contestant.create!(name: 'Fragile Being', age: 21, hometown: 'Austin TX', bachelorette_id: lonely.id)
      con2lonely = Contestant.create!(name: 'Never Gunnageddit', age: 22, hometown: 'Cheyenne WY', bachelorette_id: lonely.id)
      con3lonely = Contestant.create!(name: 'Rick Ashley', age: 23, hometown: 'Austin TX', bachelorette_id: lonely.id)
      con1hannah = Contestant.create!(name: 'Ego Centric', age: 28, hometown: 'Denver CO', bachelorette_id: hannah.id)
      con2hannah = Contestant.create!(name: 'Macho Chismo', age: 27, hometown: 'Denver CO', bachelorette_id: hannah.id)
      con3hannah = Contestant.create!(name: 'Cast Filler', age: 29, hometown: 'Denver CO', bachelorette_id: hannah.id)

      outing1 = Outing.create!(name: 'Kickball', location: 'Park', date: 'November 12')
      outing2 = Outing.create!(name: 'Hot Springs', location: 'Mountains', date: 'October 28')
      outing3 = Outing.create!(name: 'Helicopter Ride', location: 'Canyon', date: 'September 22')
      outing4 = Outing.create!(name: 'Biking', location: 'Hillside', date: 'September 29')
      outing5 = Outing.create!(name: 'Dinner', location: 'Restaurant', date: 'October 1')
      outing6 = Outing.create!(name: 'Skating', location: 'Rink', date: 'October 15')
      outing7 = Outing.create!(name: 'Boating', location: 'Reservoir', date: 'November 6')
      outing8 = Outing.create!(name: 'Painting', location: 'Gallery', date: 'October 8')

      hc1o1 = ContestantOuting.create!(contestant_id: con1hannah.id, outing_id: outing1.id)
      hc2o1 = ContestantOuting.create!(contestant_id: con2hannah.id, outing_id: outing1.id)
      hc1o2 = ContestantOuting.create!(contestant_id: con1hannah.id, outing_id: outing2.id)
      hc1o3 = ContestantOuting.create!(contestant_id: con1hannah.id, outing_id: outing3.id)
      hc3o3 = ContestantOuting.create!(contestant_id: con3hannah.id, outing_id: outing3.id)
      hc1o4 = ContestantOuting.create!(contestant_id: con1hannah.id, outing_id: outing4.id)
      hc1o5 = ContestantOuting.create!(contestant_id: con1hannah.id, outing_id: outing5.id)
      hc2o5 = ContestantOuting.create!(contestant_id: con2hannah.id, outing_id: outing5.id)
      hc1o6 = ContestantOuting.create!(contestant_id: con1hannah.id, outing_id: outing6.id)
      hc3o6 = ContestantOuting.create!(contestant_id: con3hannah.id, outing_id: outing6.id)
      hc2o8 = ContestantOuting.create!(contestant_id: con2hannah.id, outing_id: outing8.id)

      qc1o1 = ContestantOuting.create!(contestant_id: con1queen.id, outing_id: outing1.id)
      qc2o1 = ContestantOuting.create!(contestant_id: con2queen.id, outing_id: outing1.id)
      qc2o2 = ContestantOuting.create!(contestant_id: con2queen.id, outing_id: outing2.id)
      qc3o3 = ContestantOuting.create!(contestant_id: con3queen.id, outing_id: outing3.id)
      qc3o4 = ContestantOuting.create!(contestant_id: con3queen.id, outing_id: outing4.id)
      qc1o4 = ContestantOuting.create!(contestant_id: con1queen.id, outing_id: outing4.id)
      qc1o5 = ContestantOuting.create!(contestant_id: con1queen.id, outing_id: outing5.id)
      qc2o5 = ContestantOuting.create!(contestant_id: con2queen.id, outing_id: outing5.id)
      qc2o6 = ContestantOuting.create!(contestant_id: con2queen.id, outing_id: outing6.id)
      qc3o6 = ContestantOuting.create!(contestant_id: con3queen.id, outing_id: outing6.id)
      qc2o7 = ContestantOuting.create!(contestant_id: con2queen.id, outing_id: outing7.id)
      qc3o7 = ContestantOuting.create!(contestant_id: con3queen.id, outing_id: outing7.id)

      lc2o1 = ContestantOuting.create!(contestant_id: con2lonely.id, outing_id: outing1.id)
      lc3o3 = ContestantOuting.create!(contestant_id: con3lonely.id, outing_id: outing3.id)
      lc3o3 = ContestantOuting.create!(contestant_id: con3lonely.id, outing_id: outing3.id)
      lc1o4 = ContestantOuting.create!(contestant_id: con1lonely.id, outing_id: outing4.id)
      lc3o5 = ContestantOuting.create!(contestant_id: con3lonely.id, outing_id: outing5.id)
      lc2o5 = ContestantOuting.create!(contestant_id: con2lonely.id, outing_id: outing5.id)
      lc3o6 = ContestantOuting.create!(contestant_id: con3lonely.id, outing_id: outing6.id)
      lc3o6 = ContestantOuting.create!(contestant_id: con3lonely.id, outing_id: outing6.id)
      lc3o7 = ContestantOuting.create!(contestant_id: con3lonely.id, outing_id: outing7.id)
      lc3o8 = ContestantOuting.create!(contestant_id: con3lonely.id, outing_id: outing8.id)

      expect(queen.average_age).to eq(25)
      expect(lonely.average_age).to eq(22)
      expect(hannah.average_age).to eq(28)
    end

    it 'finds unique hometowns of contestants' do
      queen = Bachelorette.create!(name: 'Drama Queen', season_number: 1, description: 'The beginnig of misery.')
      lonely = Bachelorette.create!(name: 'Sad Lonely', season_number: 2, description: 'A continuation of misery.')
      hannah = Bachelorette.create!(name: 'Hannah Brown', season_number: 15, description: 'The Most Dramatic Season Yet!')

      con1queen = Contestant.create!(name: 'Clout Chaser', age: 24, hometown: 'Chicago IL', bachelorette_id: queen.id)
      con2queen = Contestant.create!(name: 'Fame Hungry', age: 26, hometown: 'Chicago IL', bachelorette_id: queen.id)
      con3queen = Contestant.create!(name: 'Sore Loser', age: 25, hometown: 'Hartford CT', bachelorette_id: queen.id)
      con1lonely = Contestant.create!(name: 'Fragile Being', age: 21, hometown: 'Austin TX', bachelorette_id: lonely.id)
      con2lonely = Contestant.create!(name: 'Never Gunnageddit', age: 22, hometown: 'Cheyenne WY', bachelorette_id: lonely.id)
      con3lonely = Contestant.create!(name: 'Rick Ashley', age: 23, hometown: 'Austin TX', bachelorette_id: lonely.id)
      con1hannah = Contestant.create!(name: 'Ego Centric', age: 28, hometown: 'Denver CO', bachelorette_id: hannah.id)
      con2hannah = Contestant.create!(name: 'Macho Chismo', age: 27, hometown: 'Denver CO', bachelorette_id: hannah.id)
      con3hannah = Contestant.create!(name: 'Cast Filler', age: 29, hometown: 'Denver CO', bachelorette_id: hannah.id)

      outing1 = Outing.create!(name: 'Kickball', location: 'Park', date: 'November 12')
      outing2 = Outing.create!(name: 'Hot Springs', location: 'Mountains', date: 'October 28')
      outing3 = Outing.create!(name: 'Helicopter Ride', location: 'Canyon', date: 'September 22')
      outing4 = Outing.create!(name: 'Biking', location: 'Hillside', date: 'September 29')
      outing5 = Outing.create!(name: 'Dinner', location: 'Restaurant', date: 'October 1')
      outing6 = Outing.create!(name: 'Skating', location: 'Rink', date: 'October 15')
      outing7 = Outing.create!(name: 'Boating', location: 'Reservoir', date: 'November 6')
      outing8 = Outing.create!(name: 'Painting', location: 'Gallery', date: 'October 8')

      hc1o1 = ContestantOuting.create!(contestant_id: con1hannah.id, outing_id: outing1.id)
      hc2o1 = ContestantOuting.create!(contestant_id: con2hannah.id, outing_id: outing1.id)
      hc1o2 = ContestantOuting.create!(contestant_id: con1hannah.id, outing_id: outing2.id)
      hc1o3 = ContestantOuting.create!(contestant_id: con1hannah.id, outing_id: outing3.id)
      hc3o3 = ContestantOuting.create!(contestant_id: con3hannah.id, outing_id: outing3.id)
      hc1o4 = ContestantOuting.create!(contestant_id: con1hannah.id, outing_id: outing4.id)
      hc1o5 = ContestantOuting.create!(contestant_id: con1hannah.id, outing_id: outing5.id)
      hc2o5 = ContestantOuting.create!(contestant_id: con2hannah.id, outing_id: outing5.id)
      hc1o6 = ContestantOuting.create!(contestant_id: con1hannah.id, outing_id: outing6.id)
      hc3o6 = ContestantOuting.create!(contestant_id: con3hannah.id, outing_id: outing6.id)
      hc2o8 = ContestantOuting.create!(contestant_id: con2hannah.id, outing_id: outing8.id)

      qc1o1 = ContestantOuting.create!(contestant_id: con1queen.id, outing_id: outing1.id)
      qc2o1 = ContestantOuting.create!(contestant_id: con2queen.id, outing_id: outing1.id)
      qc2o2 = ContestantOuting.create!(contestant_id: con2queen.id, outing_id: outing2.id)
      qc3o3 = ContestantOuting.create!(contestant_id: con3queen.id, outing_id: outing3.id)
      qc3o4 = ContestantOuting.create!(contestant_id: con3queen.id, outing_id: outing4.id)
      qc1o4 = ContestantOuting.create!(contestant_id: con1queen.id, outing_id: outing4.id)
      qc1o5 = ContestantOuting.create!(contestant_id: con1queen.id, outing_id: outing5.id)
      qc2o5 = ContestantOuting.create!(contestant_id: con2queen.id, outing_id: outing5.id)
      qc2o6 = ContestantOuting.create!(contestant_id: con2queen.id, outing_id: outing6.id)
      qc3o6 = ContestantOuting.create!(contestant_id: con3queen.id, outing_id: outing6.id)
      qc2o7 = ContestantOuting.create!(contestant_id: con2queen.id, outing_id: outing7.id)
      qc3o7 = ContestantOuting.create!(contestant_id: con3queen.id, outing_id: outing7.id)

      lc2o1 = ContestantOuting.create!(contestant_id: con2lonely.id, outing_id: outing1.id)
      lc3o3 = ContestantOuting.create!(contestant_id: con3lonely.id, outing_id: outing3.id)
      lc3o3 = ContestantOuting.create!(contestant_id: con3lonely.id, outing_id: outing3.id)
      lc1o4 = ContestantOuting.create!(contestant_id: con1lonely.id, outing_id: outing4.id)
      lc3o5 = ContestantOuting.create!(contestant_id: con3lonely.id, outing_id: outing5.id)
      lc2o5 = ContestantOuting.create!(contestant_id: con2lonely.id, outing_id: outing5.id)
      lc3o6 = ContestantOuting.create!(contestant_id: con3lonely.id, outing_id: outing6.id)
      lc3o6 = ContestantOuting.create!(contestant_id: con3lonely.id, outing_id: outing6.id)
      lc3o7 = ContestantOuting.create!(contestant_id: con3lonely.id, outing_id: outing7.id)
      lc3o8 = ContestantOuting.create!(contestant_id: con3lonely.id, outing_id: outing8.id)

      expect(queen.unique_hometowns).to eq(["Chicago IL", "Hartford CT"])
    end
  end
end
