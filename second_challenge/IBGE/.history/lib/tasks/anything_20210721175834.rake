namespace :anything do
  desc 'my first task'
  task task1: :environment do
    puts 'my fisrt task!!!!!!!!!!!!!'
    Estado.new()
  end
end