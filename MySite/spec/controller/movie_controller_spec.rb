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
    
end