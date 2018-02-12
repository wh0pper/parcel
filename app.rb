require 'sinatra'
require 'sinatra/reloader'
require 'pry'
also_reload('lib/**/*.rb')
require './lib/parcel'

get ('/') do
  erb(:input)
end

get('/parcel') do
  length = params.fetch('length')
  width = params.fetch('width')
  height = params.fetch('height')
  weight = params.fetch('weight')
  shipping = params.fetch('shipping')
  insurance = params.fetch('insurance')
  parcel = Parcel.new(length, width, height, weight)
  @cost = parcel.cost_to_ship(shipping,insurance)
  erb(:output)
end
