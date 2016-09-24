require 'extensions/build_cleaner'
require 'pry'

page '/*.xml', layout: false
page '/*.json', layout: false
page '/*.txt', layout: false
activate :blog do |blog|
  blog.permalink = "articles/{year}-{month}-{day}.html"
  # Matcher for blog source files
  blog.sources = "articles/{year}-{month}-{day}.html"
  # blog.taglink = "tags/{tag}.html"
  blog.layout = "./layouts/blog_layout"

  blog.tag_template = "blog/tag.html"
  blog.calendar_template = "blog/calendar.html"
  blog.prefix = "/blog"

  # page "blog/*", layout: './layouts/blog_layout'

  # Enable pagination
  # blog.paginate = true
  # blog.per_page = 10
  # blog.page_link = "page/{num}"
end
# General configuration
# activate :directory_indexes
# set :relative_links, false
# page "/feed.xml", layout: false

# Reload the browser automatically whenever files change
configure :development do
  activate :livereload
end

###
# Markdown
###
activate :syntax, line_numbers: false
set :markdown_engine, :redcarpet
set :markdown, smartypants: true,
                        autolink: true,
                        fenced_code_blocks: true,
                        no_intra_emphasis: true,
                        superscript: true,
                        footnotes: true,
                        prettify: true,
                        strikethrough: true
      # autolink:         true,
      # fenced_code:      true,
      # generate_toc:     true,
      # gh_blockcode:     true,
      # hard_wrap:        true,
      # no_intraemphasis: true,
      # strikethrough:    true,
      # tables:           true,
      # xhtml:            true


# Disable HAML from messing with code indentation
set :haml, { ugly: true }

# Methods defined in the helpers block are available in templates
# helpers do
#   def some_helper
#     "Helping"
#   end
# end
helpers do
  def is_page_active(page)
    current_page.url == page ? {class: 'active'} : {}
  end
end

# Build-specific configuration
configure :build do
  set :site_url, "/ca-portfolio"
  set :relative_links, true
  activate :relative_assets
  activate :build_cleaner

end

# activate :deploy do |deploy|
#   deploy.build_before = true
#   deploy.deploy_method = :git
#   # deploy.branch = 'master'
#
# end

activate :dotenv, env: '.env.build'

activate :deploy do |deploy|
  deploy.deploy_method   = :ftp
  deploy.build_before    = true
  deploy.host            = 'portfolio.amberwilkie.com'
  deploy.path            = '/public_html/portfolio'
  deploy.user            = ENV['FTP_USER']
  deploy.password        = ENV['FTP_PASS']
end
