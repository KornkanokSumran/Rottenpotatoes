require 'rails_helper'

RSpec.describe Movie, type: :model do
    
    # Create
    it 'Create movie' do
        movie = Movie.create!
        expect(movie).to_not eq(nil)
    end
    
    #Read
    it 'Read title movie' do
       movie = Movie.create!(:title => "It")
       expect(movie.title).to eq("It")
    end
    
    it 'Read rating of movie' do
        movie = Movie.create!(:rating => 'R')
        expect(movie.rating).to eq("R")
    end
    
    it 'Read description of movie' do
        movie = Movie.create!(:description => "Pennywise returns")
        expect(movie.description).to eq("Pennywise returns")
    end
    
    it 'Read release_date of movie' do
        movie = Movie.create!(:release_date => "2019-09-06 00:00:00")
        expect(movie.release_date).to eq("2019-09-06 00:00:00")
    end
    
    #Update
    it "Update title movie" do
        movie = Movie.create!(:title => "It")
        movie.title = "Batman"
        movie.save
        movie = Movie.find(movie.id)
        expect(movie.title).to eq("Batman")
    end
    
    it "Update rating movie" do
        movie = Movie.create!(:rating => "R")
        movie.rating = "G"
        movie.save
        movie = Movie.find(movie.id)
        expect(movie.rating).to eq("G")
    end
    
    it "Update description movie" do
        movie = Movie.create!(:description => "Pennywise returns")
        movie.description = "Batman is Dark"
        movie.save
        movie = Movie.find(movie.id)
        expect(movie.description).to eq("Batman is Dark")
    end
    
    it "Update release_date movie" do
        movie = Movie.create!(:release_date => "2019-09-06 00:00:00")
        movie.release_date = "2017-10-10 11:11:11"
        movie.save
        movie = Movie.find(movie.id)
        expect(movie.release_date).to eq("2017-10-10 11:11:11")
    end
    
    # Delete
    it "Delete movie" do
        movie = Movie.create!(:title => "It")
        movie.destroy
        movie = Movie.find_by_id(movie.id)
        expect(movie).to eq(nil)
    end
    
end