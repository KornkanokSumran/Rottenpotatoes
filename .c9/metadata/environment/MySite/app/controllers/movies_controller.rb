{"changed":true,"filter":false,"title":"movies_controller.rb","tooltip":"/MySite/app/controllers/movies_controller.rb","value":"# This file is app/controllers/movies_controller.rb\n\nclass MoviesController < ApplicationController\n  \n  def index\n    @movies = Movie.order(:title)\n  end\n  \n  def show\n    @movie = Movie.find_by_id(params[:id])\n  end\n  \n  def new\n    # default: render 'new' template\n    @movies = Movie.new \n  end\n  \n  def create\n\t  @movie = Movie.create!(movie_params)\n\t  flash[:notice] = \"#{@movie.title} was successfully created.\"\n\t  redirect_to movie_path(@movie) \n  end\n  \n  def edit\n    @movie = Movie.find params[:id]\n  end\n\n  def update\n    @movie = Movie.find params[:id]\n    @movie.update_attributes!(movie_params)\n    flash[:notice] = \"#{@movie.title} was successfully updated.\"\n    redirect_to movie_path(@movie)\n  end\n  \n  def destroy\n    @movie = Movie.find(params[:id])\n    @movie.destroy\n    flash[:notice] = \"Movie '#{@movie.title}' deleted.\"\n    redirect_to movies_path\n  end\n  \n  def search_tmdb\n    Tmdb::Api.key 'a39ff553b65193a0084d55309a069293'\n    \n    search = Tmdb::Search.new\n    search.resource('movie')\n    search.query(\"'#{params[:search_terms]}'\")\n    result = search.fetch\n\n    if result[0].nil?\n      flash[:warning] = \"'#{params[:search_terms]}' was not found in TMDb\"\n    else\n      result.each do |each|\n        @movie = Movie.create!(title: each['original_title'], rating: 'G', release_date: each['release_date'])\n        flash[:warning] = \"'#{params[:search_terms]}' was found in TMDb\"\n      end\n    end\n    redirect_to movies_path\n  end\n  \n  private\n    def movie_params\n      params.require(:movie).permit(:title, :rating, :description, :release_date)\n    end\n    \n  \n   \nend","undoManager":{"mark":-2,"position":28,"stack":[[{"start":{"row":28,"column":22},"end":{"row":28,"column":23},"action":"remove","lines":["l"],"id":153},{"start":{"row":28,"column":21},"end":{"row":28,"column":22},"action":"remove","lines":["l"]},{"start":{"row":28,"column":20},"end":{"row":28,"column":21},"action":"remove","lines":["a"]}],[{"start":{"row":28,"column":20},"end":{"row":28,"column":21},"action":"insert","lines":["o"],"id":154},{"start":{"row":28,"column":21},"end":{"row":28,"column":22},"action":"insert","lines":["r"]},{"start":{"row":28,"column":22},"end":{"row":28,"column":23},"action":"insert","lines":["d"]},{"start":{"row":28,"column":23},"end":{"row":28,"column":24},"action":"insert","lines":["e"]},{"start":{"row":28,"column":24},"end":{"row":28,"column":25},"action":"insert","lines":["r"]}],[{"start":{"row":28,"column":25},"end":{"row":28,"column":27},"action":"insert","lines":["()"],"id":155}],[{"start":{"row":28,"column":26},"end":{"row":28,"column":27},"action":"insert","lines":[":"],"id":156},{"start":{"row":28,"column":27},"end":{"row":28,"column":28},"action":"insert","lines":["t"]},{"start":{"row":28,"column":28},"end":{"row":28,"column":29},"action":"insert","lines":["i"]},{"start":{"row":28,"column":29},"end":{"row":28,"column":30},"action":"insert","lines":["t"]}],[{"start":{"row":28,"column":30},"end":{"row":28,"column":31},"action":"insert","lines":["l"],"id":157},{"start":{"row":28,"column":31},"end":{"row":28,"column":32},"action":"insert","lines":["e"]}],[{"start":{"row":31,"column":0},"end":{"row":36,"column":5},"action":"remove","lines":["  def show","    id = params[:id] # retrieve movie ID from URI route","    @movie = Movie.find(id) # look up movie by unique ID","    render(:partial => 'movie', :object => @movie) if request.xhr?","    # will render app/views/movies/show.<extension> by default","  end"],"id":158,"ignore":true},{"start":{"row":31,"column":0},"end":{"row":33,"column":5},"action":"insert","lines":["  def show","    @movie = Movie.find_by_id(params[:id])","  end"]}],[{"start":{"row":3,"column":2},"end":{"row":25,"column":5},"action":"remove","lines":["def search_tmdb","    # hardwire to simulate failure","    Tmdb::Api.key 'a39ff553b65193a0084d55309a069293'","    #@movie =  Tmdb::Search.movie(params[:search_terms])","    #flash[:warning] = \"'#{params[:search_terms]}' was not found in TMDb\"","    #puts @movie","    ","    search = Tmdb::Search.new","    search.resource('movie')","    search.query(\"'#{params[:search_terms]}'\")","    result = search.fetch","    #puts result[0]","","    if result[0].nil?","      flash[:warning] = \"'#{params[:search_terms]}' was not found in TMDb\"","    else","      result.each do |each|","        @movie = Movie.create!(title: each['original_title'], rating: 'G', release_date: each['release_date'])","        flash[:warning] = \"'#{params[:search_terms]}' was found in TMDb\"","      end","    end","    redirect_to movies_path","  end"],"id":159}],[{"start":{"row":4,"column":0},"end":{"row":4,"column":2},"action":"remove","lines":["  "],"id":160},{"start":{"row":3,"column":2},"end":{"row":4,"column":0},"action":"remove","lines":["",""]}],[{"start":{"row":39,"column":5},"end":{"row":40,"column":0},"action":"insert","lines":["",""],"id":161},{"start":{"row":40,"column":0},"end":{"row":40,"column":2},"action":"insert","lines":["  "]}],[{"start":{"row":35,"column":0},"end":{"row":35,"column":2},"action":"insert","lines":["  "],"id":162},{"start":{"row":36,"column":0},"end":{"row":36,"column":2},"action":"insert","lines":["  "]},{"start":{"row":37,"column":0},"end":{"row":37,"column":2},"action":"insert","lines":["  "]},{"start":{"row":38,"column":0},"end":{"row":38,"column":2},"action":"insert","lines":["  "]}],[{"start":{"row":40,"column":2},"end":{"row":41,"column":0},"action":"insert","lines":["",""],"id":163},{"start":{"row":41,"column":0},"end":{"row":41,"column":2},"action":"insert","lines":["  "]}],[{"start":{"row":41,"column":2},"end":{"row":63,"column":5},"action":"insert","lines":["def search_tmdb","    # hardwire to simulate failure","    Tmdb::Api.key 'a39ff553b65193a0084d55309a069293'","    #@movie =  Tmdb::Search.movie(params[:search_terms])","    #flash[:warning] = \"'#{params[:search_terms]}' was not found in TMDb\"","    #puts @movie","    ","    search = Tmdb::Search.new","    search.resource('movie')","    search.query(\"'#{params[:search_terms]}'\")","    result = search.fetch","    #puts result[0]","","    if result[0].nil?","      flash[:warning] = \"'#{params[:search_terms]}' was not found in TMDb\"","    else","      result.each do |each|","        @movie = Movie.create!(title: each['original_title'], rating: 'G', release_date: each['release_date'])","        flash[:warning] = \"'#{params[:search_terms]}' was found in TMDb\"","      end","    end","    redirect_to movies_path","  end"],"id":164}],[{"start":{"row":14,"column":2},"end":{"row":14,"column":4},"action":"insert","lines":["  "],"id":165}],[{"start":{"row":14,"column":4},"end":{"row":14,"column":5},"action":"insert","lines":["@"],"id":166}],[{"start":{"row":14,"column":5},"end":{"row":14,"column":6},"action":"insert","lines":["m"],"id":167},{"start":{"row":14,"column":6},"end":{"row":14,"column":7},"action":"insert","lines":["o"]},{"start":{"row":14,"column":7},"end":{"row":14,"column":8},"action":"insert","lines":["v"]},{"start":{"row":14,"column":8},"end":{"row":14,"column":9},"action":"insert","lines":["i"]},{"start":{"row":14,"column":9},"end":{"row":14,"column":10},"action":"insert","lines":["e"]}],[{"start":{"row":14,"column":10},"end":{"row":14,"column":11},"action":"insert","lines":[" "],"id":168}],[{"start":{"row":14,"column":10},"end":{"row":14,"column":11},"action":"remove","lines":[" "],"id":169}],[{"start":{"row":14,"column":10},"end":{"row":14,"column":11},"action":"insert","lines":["s"],"id":170}],[{"start":{"row":14,"column":11},"end":{"row":14,"column":12},"action":"insert","lines":[" "],"id":171},{"start":{"row":14,"column":12},"end":{"row":14,"column":13},"action":"insert","lines":["="]}],[{"start":{"row":14,"column":13},"end":{"row":14,"column":14},"action":"insert","lines":[" "],"id":172},{"start":{"row":14,"column":14},"end":{"row":14,"column":15},"action":"insert","lines":["M"]},{"start":{"row":14,"column":15},"end":{"row":14,"column":16},"action":"insert","lines":["o"]}],[{"start":{"row":14,"column":16},"end":{"row":14,"column":17},"action":"insert","lines":["v"],"id":173},{"start":{"row":14,"column":17},"end":{"row":14,"column":18},"action":"insert","lines":["i"]},{"start":{"row":14,"column":18},"end":{"row":14,"column":19},"action":"insert","lines":["e"]},{"start":{"row":14,"column":19},"end":{"row":14,"column":20},"action":"insert","lines":["."]}],[{"start":{"row":14,"column":20},"end":{"row":14,"column":21},"action":"insert","lines":["n"],"id":174},{"start":{"row":14,"column":21},"end":{"row":14,"column":22},"action":"insert","lines":["e"]},{"start":{"row":14,"column":22},"end":{"row":14,"column":23},"action":"insert","lines":["w"]}],[{"start":{"row":14,"column":23},"end":{"row":14,"column":24},"action":"insert","lines":[" "],"id":175}],[{"start":{"row":44,"column":0},"end":{"row":46,"column":16},"action":"remove","lines":["    #@movie =  Tmdb::Search.movie(params[:search_terms])","    #flash[:warning] = \"'#{params[:search_terms]}' was not found in TMDb\"","    #puts @movie"],"id":176}],[{"start":{"row":42,"column":0},"end":{"row":42,"column":34},"action":"remove","lines":["    # hardwire to simulate failure"],"id":177},{"start":{"row":41,"column":17},"end":{"row":42,"column":0},"action":"remove","lines":["",""]}],[{"start":{"row":42,"column":52},"end":{"row":43,"column":0},"action":"remove","lines":["",""],"id":178}],[{"start":{"row":48,"column":18},"end":{"row":48,"column":19},"action":"remove","lines":["]"],"id":179},{"start":{"row":48,"column":17},"end":{"row":48,"column":18},"action":"remove","lines":["0"]},{"start":{"row":48,"column":16},"end":{"row":48,"column":17},"action":"remove","lines":["["]},{"start":{"row":48,"column":15},"end":{"row":48,"column":16},"action":"remove","lines":["t"]},{"start":{"row":48,"column":14},"end":{"row":48,"column":15},"action":"remove","lines":["l"]},{"start":{"row":48,"column":13},"end":{"row":48,"column":14},"action":"remove","lines":["u"]},{"start":{"row":48,"column":12},"end":{"row":48,"column":13},"action":"remove","lines":["s"]},{"start":{"row":48,"column":11},"end":{"row":48,"column":12},"action":"remove","lines":["e"]},{"start":{"row":48,"column":10},"end":{"row":48,"column":11},"action":"remove","lines":["r"]},{"start":{"row":48,"column":9},"end":{"row":48,"column":10},"action":"remove","lines":[" "]},{"start":{"row":48,"column":8},"end":{"row":48,"column":9},"action":"remove","lines":["s"]},{"start":{"row":48,"column":7},"end":{"row":48,"column":8},"action":"remove","lines":["t"]},{"start":{"row":48,"column":6},"end":{"row":48,"column":7},"action":"remove","lines":["u"]}],[{"start":{"row":48,"column":5},"end":{"row":48,"column":6},"action":"remove","lines":["p"],"id":180},{"start":{"row":48,"column":4},"end":{"row":48,"column":5},"action":"remove","lines":["#"]},{"start":{"row":48,"column":2},"end":{"row":48,"column":4},"action":"remove","lines":["  "]},{"start":{"row":48,"column":0},"end":{"row":48,"column":2},"action":"remove","lines":["  "]},{"start":{"row":47,"column":25},"end":{"row":48,"column":0},"action":"remove","lines":["",""]}],[{"start":{"row":42,"column":4},"end":{"row":43,"column":4},"action":"insert","lines":["# hardwire to simulate failure","    "],"id":181},{"start":{"row":44,"column":0},"end":{"row":47,"column":0},"action":"insert","lines":["    #@movie =  Tmdb::Search.movie(params[:search_terms])","    #flash[:warning] = \"'#{params[:search_terms]}' was not found in TMDb\"","    #puts @movie",""]},{"start":{"row":51,"column":25},"end":{"row":52,"column":19},"action":"insert","lines":["","    #puts result[0]"]}]]},"ace":{"folds":[],"scrolltop":538.5,"scrollleft":0,"selection":{"start":{"row":40,"column":2},"end":{"row":40,"column":2},"isBackwards":false},"options":{"guessTabSize":true,"useWrapMode":false,"wrapToView":true},"firstLineState":{"row":35,"state":"start","mode":"ace/mode/ruby"}},"timestamp":1569839962333}