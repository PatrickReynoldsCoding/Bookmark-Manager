# {{PROBLEM}} Multi-Class Design Recipe
## 1. Describe the Problem
> As a user
> So that I can bookmark my favorite URLs
> I want to save a certain URL to a database

> As a user
> So that I can view the URL's I bookmarks 
> I want to pull a list of all URLs from my database

> As a user
> So that I can manage the URL's I bookmarks 
> I want to be able to delete a specific bookmark

> As a user
> So that I can manage the URL's I bookmarks 
> I want to be able to comment on a specific bookmark

> As a user
> So that I can manage the URL's I bookmarks 
> I want to be able to update a specific bookmark

> As a user
> So that I can manage the URL's I bookmarks 
> I want to be able view all bookmarks of a certain tag

> Given each account is a place to manage a individual users bookmarks
> When the user logons
> Then they should only be able to edit their own bookmarks

## 2. Design the Class system


Consider diagramming out the classes and their relationships. Take care to focus on the details you see as important,
not everything. The diagram below uses asciiflow.com but you could also use excalidraw.com, draw.io, or miro.com























Also design the interface of each class in more detail.




```ruby
class MusicLibrary
  def initialize
    # ...
  end

  def add(track) # track is an instance of Track
    # Track gets added to the library
    # Returns nothing
  end

  def all
    # Returns a list of track objects
  end

  def search_by_title(keyword) # keyword is a string
    # Returns a list of tracks with titles that include the keyword
  end
end

class Track
  def initialize(title, artist) # title and artist are both strings
  end

  def format
    # Returns a string of the form 'TITLE by ARTIST'
  end
end

```

## 3. Create Examples as intergration Tests

ADVICE: Start with 1st intigration test and when you cant progress move to unit test. Repeat this process

Create examples of the classes being used together in different situations and combinations that reflect the ways in which the system will be used.


```ruby
# EXAMPLE

# Gets all tracks
library = MusicLibrary.new
track_1 = Track.new('Carte Blanche', 'Veracocha')
track_2 = Track.new('Synaesthesia', 'The Thrillseekers')
library.add(track_1)
library.add(track_2)
library.all # => [track_1, track_2]



## 4. Create Examples as unit Tests

_Create examples, where appropriate, of the behaviour of each relevant class at a more granular level of detail.

```ruby
# EXAMPLE

# Constructs a track
track = Track.new('Carte Blanche', 'Veracocha')
track.title # => 'Carte Blanche'





```


_Encode each example as a test. You can add to the above list as you go._

## 5. Implement the Behaviour

_After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour.