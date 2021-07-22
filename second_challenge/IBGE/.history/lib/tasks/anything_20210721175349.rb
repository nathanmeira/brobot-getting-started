# frozen_string_literal: true
namespace :init do
  desc 'Verifica os AccountApps que expirarão.'
  task dynamodb: :environment do
    Rake::Task['dynamoid:create_tables'].invoke
  end
end