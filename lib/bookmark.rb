require 'pg'




class Bookmark
  def self.all
    connection = PG.connect("host=localhost:5432 user=paddydb password=654654 dbname=bookmark_manager")
    result = connection.exec('SELECT * FROM bookmarks')
    result.map { |bookmark| bookmark['url'] }
  end
end

# class Bookmark
#   def self.all
#     connection = PG::Connection.new('postgresql://paddydb:654654@localhost:5432/bookmark_manager')
#     result = connection.exec('SELECT * FROM bookmarks')
#     # result.map { |bookmark| bookmark['url'] }


#     p result
#     # [
#     #   "http://www.makersacademy.com",
#     #   "http://www.destroyallsoftware.com",
#     #   "http://www.google.com"
#     #  ]
#   end
# end

Bookmark.all