require 'pg'
class Bookmark

  attr_reader :id, :url, :title

  def initialize(id:, url:, title:)
    @id = id
    @url = url
    @title = title
  end

  def self.all
    if ENV['ENVIRONMENT'] == 'test'
      connection = PG.connect(dbname: 'bookmark_manager_test')
    else
      connection = PG.connect(dbname: 'bookmark_manager')
    end
    result = connection.exec('SELECT * FROM bookmarks')
    result.map { |bookmark| Bookmark.new(id: bookmark['id'], url: bookmark['url'], title: bookmark['title']) }
  end

  def self.create(url:, title:)
    if ENV['ENVIRONMENT'] == 'test'
      connection = PG.connect(dbname: 'bookmark_manager_test')
    else
      connection = PG.connect(dbname: 'bookmark_manager')
    end
    # The first argument is our SQL query template
    # The second argument is the 'params' referred to in exec_params
    # $1 refers to the first item in the params array
    # $2 refers to the second item in the params array
    connection.exec_params("INSERT INTO bookmarks (url, title) VALUES($1, $2) RETURNING id, title, url;", [url, title])
  end

end
