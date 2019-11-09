{"filter":false,"title":"movie_steps.rb","tooltip":"/MySite/features/step_definitions/movie_steps.rb","undoManager":{"mark":1,"position":1,"stack":[[{"start":{"row":0,"column":0},"end":{"row":13,"column":3},"action":"insert","lines":["Given /I have added \"(.*)\" with rating \"(.*)\"/ do |title, rating|","  steps %Q{","    Given I am on the Create New Movie page","    When  I fill in \"Title\" with \"#{title}\"","    And   I select \"#{rating}\" from \"Rating\"","    And   I press \"Save Changes\"","  }","end"," ","Then /I should see \"(.*)\" before \"(.*)\" on (.*)/ do |string1, string2, path|","  step \"I am on #{path}\"","  regexp = /#{string1}.*#{string2}/m #  /m means match across newlines","  page.body.should =~ regexp","end"],"id":1}],[{"start":{"row":0,"column":0},"end":{"row":13,"column":3},"action":"remove","lines":["Given /I have added \"(.*)\" with rating \"(.*)\"/ do |title, rating|","  steps %Q{","    Given I am on the Create New Movie page","    When  I fill in \"Title\" with \"#{title}\"","    And   I select \"#{rating}\" from \"Rating\"","    And   I press \"Save Changes\"","  }","end"," ","Then /I should see \"(.*)\" before \"(.*)\" on (.*)/ do |string1, string2, path|","  step \"I am on #{path}\"","  regexp = /#{string1}.*#{string2}/m #  /m means match across newlines","  page.body.should =~ regexp","end"],"id":2},{"start":{"row":0,"column":0},"end":{"row":13,"column":3},"action":"insert","lines":["Given /I have added \"(.*)\" with rating \"(.*)\"/ do |title, rating|","  steps %Q{","    Given I am on the Create New Movie page","    When  I fill in \"Title\" with \"#{title}\"","    And   I select \"#{rating}\" from \"Rating\"","    And   I press \"Save Changes\"","  }","end"," ","Then /I should see \"(.*)\" before \"(.*)\" on (.*)/ do |string1, string2, path|","  step \"I am on #{path}\"","  regexp = /#{string1}.*#{string2}/m #  /m means match across newlines","  page.body.should =~ regexp","end"]}]]},"ace":{"folds":[],"scrolltop":0.5,"scrollleft":0,"selection":{"start":{"row":2,"column":0},"end":{"row":5,"column":32},"isBackwards":true},"options":{"guessTabSize":true,"useWrapMode":false,"wrapToView":true},"firstLineState":0},"timestamp":1569820013523,"hash":"ac8f66e0f885b756667fd1edd22554db75da79be"}