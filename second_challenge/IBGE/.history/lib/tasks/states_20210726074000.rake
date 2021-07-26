namespace :states do
  desc 'Task to print brazilian states'
  task estados: :environment do
    puts 'Estados do Brasil'
    estado = Estado.state
  end
end