namespace :anything do
  desc 'my first task'
  task estados: :environment do
    puts 'my fisrt task!!!!!!!!!!!!!'
    estado = Estado.state
    estado.save!
  end
end