namespace :timestamp do
  desc "Generate a timestamp"
  task :generate => :environment do
    timestamp = Time.now.strftime("%Y%m%d%H%M%S")
    puts timestamp
  end
end
