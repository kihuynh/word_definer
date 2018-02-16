require('sinatra')
require('sinatra/reloader')
also_reload('lib/**.*.rb')
require('pry')
require('lib/word_definer')

get('/') do
  @@list = Word.all()
  erb(:input)
end

post('/') do
  erb(:input)
end
