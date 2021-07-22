namespace :anything do
  desc 'my first task'
  task task1: :environment do
    Rake::Task['dynamoid:create_tables'].invoke
  end
end