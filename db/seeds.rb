# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'open-uri'
require 'json'

Bookmark.destroy_all
Movie.destroy_all
List.destroy_all

url = 'https://tmdb.lewagon.com/movie/top_rated'
img_url = 'https://image.tmdb.org/t/p/w500'
movies = JSON.parse(URI.open(url).read)['results']

movies.each do |movie|
  title = movie['title']
  overview = movie['overview']
  poster_url = img_url + movie['poster_path']
  rating = movie['vote_average']
  Movie.create({ title:, overview:, poster_url:, rating: })
end

url = 'https://tmdb.lewagon.com/movie/popular'
img_url = 'https://image.tmdb.org/t/p/w500'
movies = JSON.parse(URI.open(url).read)['results']

movies.each do |movie|
  title = movie['title']
  overview = movie['overview']
  poster_url = img_url + movie['poster_path']
  rating = movie['vote_average']
  Movie.create({ title:, overview:, poster_url:, rating: })
end
