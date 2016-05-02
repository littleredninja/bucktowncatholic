# configure :development do
#  set :database, 'postgres:///localhost/bucktowncatholic_development'
#  set :show_exceptions, true
# end

configure :development do
 db = URI.parse(ENV['DATABASE_URL'] || 'postgres:///bucktowncatholic_development')

 ActiveRecord::Base.establish_connection(
   :adapter  => db.scheme == 'postgres' ? 'postgresql' : db.scheme,
   :host     => db.host,
   :username => db.user,
   :password => db.password,
   :database => db.path[1..-1],
   :encoding => 'utf8'
 )
end