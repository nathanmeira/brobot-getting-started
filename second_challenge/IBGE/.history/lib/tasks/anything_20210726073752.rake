namespace :anything do
  desc 'my first task'
  task estados: :environment do
    puts ''
    estado = Estado.state
  end
end