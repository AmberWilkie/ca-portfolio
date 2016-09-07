require 'extensions/build_cleaner'

page '/*.xml', layout: false
page '/*.json', layout: false
page '/*.txt', layout: false
activate :blog do |blog|
  blog.permalink = "/articles/{year}-{month}-{day}.html"
  # Matcher for blog source files
  blog.sources = "/articles/{year}-{month}-{day}.html"
  # blog.taglink = "tags/{tag}.html"
  blog.layout = "./layouts/blog_layout"

  blog.tag_template = "blog/tag.html"
  blog.calendar_template = "blog/calendar.html"
  blog.prefix = "/blog"

  # page "blog/articles/*", :layout => :blog_layout

  # Enable pagination
  # blog.paginate = true
  # blog.per_page = 10
  # blog.page_link = "page/{num}"
end

# page "/feed.xml", layout: false

# Reload the browser automatically whenever files change
configure :development do
  activate :livereload
end

# Methods defined in the helpers block are available in templates
# helpers do
#   def some_helper
#     "Helping"
#   end
# end

# Build-specific configuration
configure :build do
  activate :relative_assets
  activate :build_cleaner
end

activate :deploy do |deploy|
  deploy.deploy_method = :git
  # deploy.branch = 'master'
  deploy.build_before = true
end
