# Set the host name for URL creation
SitemapGenerator::Sitemap.default_host = "https://tenju.net"

SitemapGenerator::Sitemap.create do
  add root_path, changefreq: 'monthly' 
  add root_recovery_path, changefreq: 'monthly' 
  add root_cleaning_path, changefreq: 'monthly' 
  add root_lifesupport_path, changefreq: 'monthly' 
  add root_plan_path, changefreq: 'monthly' 
  add root_performance_path, changefreq: 'monthly' 
end
