require'chuck_norris'

class ChuckJoke
  attr_accessor :laughs
  def initialize(laughs)
    @laughs = laughs
  end
  def help
    puts "Type ruby app.rb random to give you a random joke."
    puts "Type ruby app.rb (IdNumber) to give you a joke with the id you input."
    puts "Type ruby app.rb (Name) to give you a joke with changing the name."
  end
  def get_joke_by_id(id)
    joke_id = ChuckNorris::JokeFinder.find_joke(id)
    puts jokeid.joke
    puts "ID  Number #{joke_id.id}"
  end
  def replace_name(f, l)
    joke_name = ChuckNorris::JokeFinder.get_joke(first_name: f, last_name: l)
    puts joke_name.joke
    puts "ID  Number #{joke_name.id}"
  end
  def random
    joke_rand = ChuckNorris::JokeFinder.get_joke
    puts joke_rand.joke
    puts "ID  Number #{joke_rand.id}"
  end
end
