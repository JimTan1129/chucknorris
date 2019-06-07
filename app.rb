require './chuck'

jimmy = ChuckJoke.new('Jimmmy')

if ARGV.length == 2
  jimmy.replace_name(ARGV[0], ARGV[1])
  elsif ARGV[0] == 'random'
    jimmy.random
  elsif ARGV[0].to_i > 0
    jimmy.get_joke_by_id(ARGV[0].to_i)
  else
    jimmy.help
end
