class HomeController < ApplicationController
  def index
    # used to goes to tje sites and collects data
    require 'net/http'
    # pass that data once we collected and bring it back to our app
    require 'json'

    # create an instance of API url
    @top_rated = "top_rated?" 
    @url = 'https://api.themoviedb.org/3/movie/popular?api_key=f86cc31e3850cd90ef8e189703f28ac1'
    # uniform resource indicator - URL type thing
    @uri = URI(@url)
    @response = Net::HTTP.get(@uri)
    @output = JSON.parse(@response)
    @img_url = 'https://image.tmdb.org/t/p/w500' 

    
    # # get only first films 
    # @output = @output['results'][0]

    # @title = @output['original_title']
    # @release_date = @output['release_date']
    # @overview = @output['overview']
    # @homepage = @output['homepage']
    # @poster = @img_url + @output['poster_path'].to_s

    # def uptate
    #   @output = @output['results'].all do
    #     | film |
    #      @title = film['original_title']
    #      @overview = film['overview']
    #      @homepage = film['homepage']
    #      @poster = @img_url + film['poster_path'].to_s

    #      render "home/_card"
    #     end
    #   end

    # check for empty return result 
    if @output.empty?
      @final_output = "Error"
    else
      @final_output = "Top 20 Best Movies This Week"
    end
  end
end
