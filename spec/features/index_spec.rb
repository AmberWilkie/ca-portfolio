require 'spec_helper'

describe 'index', type: :feature do

  before do
    visit '/'
  end

  xit 'says mofo' do
    # Need to look up rspec acceptance test matchers
    expect(page).to have_link
    within 'h1' do
      expect(page). to have_content 'mofo'
    end
  end

  it 'displays Middleman logo' do
    expect(page).to have_css 'img[src*="middleman-logo.svg"]'
  end

end
