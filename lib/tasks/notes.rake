desc "olivier"
task :olivier => :environment do
  puts Note.all.inspect
end
