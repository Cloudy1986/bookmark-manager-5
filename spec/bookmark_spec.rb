require 'bookmark'

describe Bookmark do
  
  describe '.all' do
    it 'returns a list of bookmarks' do
      connection = PG.connect(dbname: 'bookmark_manager_test')
  
      # Add the test data
      Bookmark.create(url: 'http://www.makersacademy.com', title: "Makers")
      Bookmark.create(url: 'http://www.destroyallsoftware.com', title: "Destroy All Software")
      Bookmark.create(url: 'http://www.google.com', title: "Google")
  
      bookmarks = Bookmark.all
      expect(bookmarks.count).to eq(3)
      expect(bookmarks[0]).to be_a Bookmark
      expect(bookmarks[0].url).to eq('http://www.makersacademy.com')
      expect(bookmarks[1].title).to eq('Destroy All Software')
    end
  end

  describe '.create' do
    it 'creates a new bookmark' do
      Bookmark.create(url: 'http://www.example.org', title: 'Example')
      bookmarks = Bookmark.all
      expect(bookmarks[0].url).to eq('http://www.example.org')
      expect(bookmarks[0].title).to eq('Example')
    end
  end

end
