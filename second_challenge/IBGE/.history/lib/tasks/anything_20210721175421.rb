namespace :anything do
  desc 'my first task'
  task dynamodb: :environment do
    Rake::Task['dynamoid:create_tables'].invoke
  end
end