namespace :anything do
  desc 'my first task'
  task estados: :environment do
    puts 'Estados do Brasil'
    estado = Estado.state
  end
end