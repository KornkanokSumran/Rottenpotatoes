{"filter":false,"title":"20190826095320_create_movie.rb","tooltip":"/MySite/db/migrate/20190826095320_create_movie.rb","undoManager":{"mark":4,"position":4,"stack":[[{"start":{"row":5,"column":0},"end":{"row":6,"column":0},"action":"remove","lines":["end",""],"id":15},{"start":{"row":5,"column":0},"end":{"row":6,"column":0},"action":"insert","lines":["end",""]}],[{"start":{"row":5,"column":0},"end":{"row":6,"column":0},"action":"remove","lines":["end",""],"id":16},{"start":{"row":5,"column":0},"end":{"row":6,"column":0},"action":"insert","lines":["end",""]}],[{"start":{"row":6,"column":0},"end":{"row":22,"column":3},"action":"insert","lines":["class CreateMovies < ActiveRecord::Migration","  def up","    create_table 'movies' do |t|","      t.string 'title'","      t.string 'rating'","      t.text 'description'","      t.datetime 'release_date'","      # Add fields that let Rails automatically keep track","      # of when movies are added or modified:","      t.timestamps","    end","  end"," ","  def down","    drop_table 'movies' # deletes the whole table and all its data!","  end","end"],"id":18}],[{"start":{"row":1,"column":0},"end":{"row":6,"column":44},"action":"remove","lines":["  def change","    create_table :movies do |t|","    end","  end","end","class CreateMovies < ActiveRecord::Migration"],"id":19}],[{"start":{"row":1,"column":0},"end":{"row":2,"column":0},"action":"remove","lines":["",""],"id":20}]]},"ace":{"folds":[],"scrolltop":23,"scrollleft":0,"selection":{"start":{"row":10,"column":7},"end":{"row":10,"column":7},"isBackwards":false},"options":{"guessTabSize":true,"useWrapMode":false,"wrapToView":true},"firstLineState":0},"timestamp":1566815403591,"hash":"e69f710eba047d5eb70249a310f22873867bf687"}