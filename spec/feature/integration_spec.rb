# location: spec/feature/integration_spec.rb
require 'rails_helper'

RSpec.describe 'Creating a book', type: :feature do
  scenario 'valid inputs' do
    visit new_book_path
    fill_in 'Title', with: 'harry potter'
    fill_in 'Author', with: "Shelly"
    fill_in 'Price', with: "10.00"
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('harry potter')
  end

  scenario 'author valid input' do
    visit new_book_path
    fill_in 'Title', with: 'harry potter'
    fill_in 'Author', with: "Shelly"
    fill_in 'Price', with: "10.00"
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('Shelly')
  end

  scenario 'price valid input' do
    visit new_book_path
    fill_in 'Title', with: 'harry potter'
    fill_in 'Author', with: "Shelly"
    fill_in 'Price', with: "10.00"
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content(10.00)
  end

  scenario 'date valid input' do
    visit new_book_path
    fill_in 'Title', with: 'harry potter'
    fill_in 'Author', with: "Shelly"
    fill_in 'Price', with: "10.00"
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('2000-07-02')
  end

end