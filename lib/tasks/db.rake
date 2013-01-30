namespace :db do
  task :migrate => :environment do
    if Rails.env.development?
      Rake::Task['db:test:prepare'].invoke
    end
  end
end
