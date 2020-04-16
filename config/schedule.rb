set :output, 'log/crontab.log'
env :PATH, ENV['PATH']
every 1.day, at: '9:00 am' do
    rake '-s sitemap:refresh'
end