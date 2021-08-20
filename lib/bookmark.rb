require 'pg'
class Bookmark

  attr_reader :id, :url, :title

  def initialize(id, url, title)
    @id = id
    @url = url
    @title = title
  end

  def self.all
    connect_to_db
    result = @connection.exec("SELECT * FROM bookmarks")
    result.map { |bmark| Bookmark.new(bmark['id'], bmark['url'], bmark['title']) }

  end  

  def self.add(url, title="No title given")
    connect_to_db
    result = @connection.exec("INSERT INTO bookmarks (url, title) VALUES ('#{url}', '#{title}') RETURNING id, url, title;")
    Bookmark.new(result[0]['id'], result[0]['url'], result[0]['title'])
  end

  private 

  def self.connect_to_db
    if ENV['ENVIRONMENT'] == 'test' 
      @connection = PG.connect(dbname: 'bookmark_manager_test')
    else
      @connection = PG.connect(dbname: 'bookmark_manager')
    end
  end
end 
