require 'nokogiri'
require 'pry'


def create_project_hash
  # write your code here
  html = File.read('fixtures/kickstarter.html')
  kickstarter = Nokogiri::HTML(html)
  project = kickstarter.css("li.project.grid_4")
  title = project.css("h2.bbcard_name strong a")[0].text 
  binding.pry
end

# project: kickstarter.css("li.project.grid_4")
#title: project.css("h2.bbcard_name strong a")[0].text 
# image link: project.css("div.project-thumbnail a img").attribute("src").value 
#description project.css("p.bbcard_blurb").text

#funded project.css("ul.project-stats li.first.funded strong").text