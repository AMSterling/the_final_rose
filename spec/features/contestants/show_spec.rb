require 'rails_helper'

RSpec.describe 'the bachelorette contestant show page' do
  it 'shows the contestant information' do
    queen = Bachelorette.create!(name: 'Drama Queen', season_number: 1, description: 'The beginnig of misery.')
    lonely = Bachelorette.create!(name: 'Sad Lonely', season_number: 2, description: 'A continuation of misery.')
    hannah = Bachelorette.create!(name: 'Hannah Brown', season_number: 15, description: 'The Most Dramatic Season Yet!')

    con1queen = Contestant.create!(name: 'Clout Chaser', age: 24, hometown: 'Chicago IL', bachelorette_id: queen.id)
    con2queen = Contestant.create!(name: 'Fame Hungry', age: 26, hometown: 'Sacremento CA', bachelorette_id: queen.id)
    con3queen = Contestant.create!(name: 'Sore Loser', age: 25, hometown: 'Hartford CT', bachelorette_id: queen.id)
    con1lonely = Contestant.create!(name: 'Fragile Being', age: 21, hometown: 'Bismarck, ND', bachelorette_id: lonely.id)
    con2lonely = Contestant.create!(name: 'Never Gunnageddit', age: 22, hometown: 'Cheyenne WY', bachelorette_id: lonely.id)
    con3lonely = Contestant.create!(name: 'Rick Ashley', age: 23, hometown: 'Austin TX', bachelorette_id: lonely.id)
    con1hannah = Contestant.create!(name: 'Ego Centric', age: 28, hometown: 'Richmond, VA', bachelorette_id: hannah.id)
    con2hannah = Contestant.create!(name: 'Macho Chismo', age: 27, hometown: 'Reno, NV', bachelorette_id: hannah.id)
    con3hannah = Contestant.create!(name: 'Cast Filler', age: 29, hometown: 'Denver, CO', bachelorette_id: hannah.id)

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

    visit bachelorette_contestant_path(queen, con1queen)

    expect(current_path).to eq("/bachelorettes/#{queen.id}/contestants/#{con1queen.id}")
    expect(page).to have_content('Season 1 Contestant: Clout Chaser')
    expect(page).to_not have_content('Fame Hungry')
    expect(page).to_not have_content('Sore Loser')
    expect(page).to_not have_content('Season 2')
    expect(page).to_not have_content('Season 15')
    expect(page).to_not have_content('Fragile Being')
    expect(page).to_not have_content('Never Gunnageddit')
    expect(page).to_not have_content('Rick Ashley')
    expect(page).to_not have_content('Ego Centric')
    expect(page).to_not have_content('Macho Chismo')
    expect(page).to_not have_content('Cast Filler')

    visit bachelorette_contestant_path(queen, con2queen)

    expect(current_path).to eq("/bachelorettes/#{queen.id}/contestants/#{con2queen.id}")
    expect(page).to have_content('Season 1 Contestant: Fame Hungry')
    expect(page).to_not have_content('Clout Chaser')
    expect(page).to_not have_content('Sore Loser')
    expect(page).to_not have_content('Season 2')
    expect(page).to_not have_content('Season 15')
    expect(page).to_not have_content('Fragile Being')
    expect(page).to_not have_content('Never Gunnageddit')
    expect(page).to_not have_content('Rick Ashley')
    expect(page).to_not have_content('Ego Centric')
    expect(page).to_not have_content('Macho Chismo')
    expect(page).to_not have_content('Cast Filler')

    visit bachelorette_contestant_path(hannah, con1hannah)

    expect(page).to have_content('Season 15 Contestant: Ego Centric')
    expect(page).to_not have_content('Macho Chismo')
    expect(page).to_not have_content('Cast Filler')
    expect(page).to_not have_content('Season 2')
  end
end