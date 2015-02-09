set :css_dir, "stylesheets"
set :js_dir, "javascripts"
set :images_dir, "images"
set :build_dir, "public"

# Build-specific configuration
configure :build do
  activate :minify_html do |html|
    html.remove_comments = false
  end

  activate :minify_css
  activate :minify_javascript
  activate :asset_hash
  activate :cache_buster
end
