require './lib/book'

RSpec.describe Book do

  before :each do
    @book = Book.new({author_first_name: "Harper", author_last_name: "Lee", title: "To Kill a Mockingbird", publication_date: "July 11, 1960"})
  end

  it 'is an instance of book' do
    expect(@book).to be_instance_of Book
  end

  it 'book has a title' do
    expect(@book.title).to eq("To Kill a Mockingbird")
  end

  it 'authors full name' do
    expect(@book.author).to eq("Harper Lee")
  end

  it 'return publication_year' do
    expect(@book.publication_year).to eq("1960")
  end

end
