# location: spec/feature/integration_spec.rb
require 'rails_helper'

RSpec.describe 'Creating a book', type: :feature do
  scenario 'valid inputs' do
    visit new_book_path
    fill_in 'Title', with: 'harry potter'
    fill_in 'Author', with: 'JK Rowling'
    fill_in 'Price', with: 10
    select "2020", from: 'book_publisheddate_1i'
    select "September", from: 'book_publisheddate_2i'
    select "15", from: 'book_publisheddate_3i'
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('harry potter')
  end
  scenario 'valid inputs' do
    visit new_book_path
    fill_in 'Title', with: 'harry potter'
    fill_in 'Author', with: 'JK Rowling'
    fill_in 'Price', with: 10
    select "2020", from: 'book_publisheddate_1i'
    select "September", from: 'book_publisheddate_2i'
    select "15", from: 'book_publisheddate_3i'
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('JK Rowling')
  end
  scenario 'valid inputs' do
    visit new_book_path
    fill_in 'Title', with: 'harry potter'
    fill_in 'Author', with: 'JK Rowling'
    fill_in 'Price', with: 10
    select "2020", from: 'book_publisheddate_1i'
    select "September", from: 'book_publisheddate_2i'
    select "15", from: 'book_publisheddate_3i'
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content(10)
  end
  scenario 'valid inputs' do
    visit new_book_path
    fill_in 'Title', with: 'harry potter'
    fill_in 'Author', with: 'JK Rowling'
    fill_in 'Price', with: 10
    select "2020", from: 'book_publisheddate_1i'
    select "September", from: 'book_publisheddate_2i'
    select "15", from: 'book_publisheddate_3i'
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('2020')
  end
  scenario 'valid inputs' do
    visit new_book_path
    fill_in 'Title', with: 'harry potter'
    fill_in 'Author', with: 'JK Rowling'
    fill_in 'Price', with: 10
    select "2020", from: 'book_publisheddate_1i'
    select "September", from: 'book_publisheddate_2i'
    select "15", from: 'book_publisheddate_3i'
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('09')
  end
  scenario 'valid inputs' do
    visit new_book_path
    fill_in 'Title', with: 'harry potter'
    fill_in 'Author', with: 'JK Rowling'
    fill_in 'Price', with: 10
    select "2020", from: 'book_publisheddate_1i'
    select "September", from: 'book_publisheddate_2i'
    select "15", from: 'book_publisheddate_3i'
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('15')
  end
end
