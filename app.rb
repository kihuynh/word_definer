require('sinatra')
require('sinatra/reloader')
also_reload('./lib/**.*.rb')
require('./lib/word_definer')

get('/') do
  @list = Word.all
  erb(:input)
end
# add @@list first to see if it makes difference
post('/') do
  word = params["word"]
  word_def = params["word_def"]
  item = Word.new({:word => word, :word_def => word_def})
  item.save()
  @list = Word.all()
  erb(:input)
end
