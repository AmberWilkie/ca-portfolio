require 'spec_helper'

describe 'index', type: :feature do

  before do
    visit '/'
  end

  # xit 'says mofo' do
  #   # Need to look up rspec acceptance test matchers
  #   expect(page).to have_link
  #   within 'h1' do
  #     expect(page). to have_content 'mofo'
  #   end
  # end

  # it 'displays Middleman logo' do
  #   expect(page).to have_css 'img[src*="middleman-logo.svg"]'
  # end

  it 'displays project list' do
    expect(page).to have_css '.projects'
    within '.projects' do
      expect(page).to have_content 'AmberNote'
      expect(page).to have_content 'Blackjack'
      expect(page).to have_content 'Library'
    end
  end

  # it 'renders footer partial' do
  #   expect(page).to have_selector 'footer'
  #   within 'footer' do
  #     expect(page).to have_content 'My Portfolio'
  #     expect(page).to have_content 'Built using the awesome Middleman framework'
  #     end
  # end

end
