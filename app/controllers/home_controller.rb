class HomeController < ApplicationController
  def index
    # used to goes to tje sites and collects data
    require 'net/http'
    # pass that data once we collected and bring it back to our app
    require 'json'

    # API url

    $API_KEY = 'api_key=f86cc31e3850cd90ef8e189703f28ac1';
    $DOMEN = 'https://api.themoviedb.org/3/';
    $IMG_URL = 'https://image.tmdb.org/t/p/w500';
    
    $top_rated = 'movie/top_rated?';
    $popular_movies = 'movie/popular?';
    $SEARCH = 'search/movie?';
    
    @url = $DOMEN + $popular_movies + $API_KEY;

    # uniform resource indicator - URL type thing
    @uri = URI(@url)
    @response = Net::HTTP.get(@uri)
    @output = JSON.parse(@response)

    # # get only first films 
    # @title = @output['original_title']
    # @release_date = @output['release_date']
    # @overview = @output['overview']
    # @homepage = @output['homepage']
    # @poster = @IMG_URL + @output['poster_path'].to_s

    # check for empty result 
    if @output['results'].empty?
      @final_output = "Error nothing to render here"
    else
      # show the JSON on page
      # @output_JSON =  @output['results']
      @final_output = "Top 20 Best Movies This Week"
      render "home/_card"
    end
  end
  def top_films
    @film_name = params[:top_films]
    
    if params[:top_films] == ""
      @film_name = "Films is not found!"
    elsif
      # Do API stuff
      @film_name
      @url = $DOMEN + $SEARCH + $API_KEY + '&query=' + params[:top_films].to_s
      @uri = URI(@url)
      @response = Net::HTTP.get(@uri)
      @output = JSON.parse(@response)
      render "home/_card"
    end
  end
end
