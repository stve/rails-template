guard 'bundler' do
  watch('Gemfile')
  watch('Gemfile.lock')
end

guard 'cucumber', :cli => '--require features/support --require features/step_definitions' do
  watch(%r{^features/.+\.feature$})
  watch(%r{^features/support/.+$})                        { 'features' }
  watch(%r{^features/step_definitions/(.+)_steps\.rb$})   { |m| Dir[File.join("**/#{m[1]}.feature")][0] || 'features' }
end

guard 'konacha' do
  watch(%r{^app/assets/javascripts/(.*)\.js(\.coffee)?$}) { |m| "#{m[1]}_spec.js" }
  watch(%r{^spec/javascripts/.+_spec(\.js|\.js\.coffee)})
end

guard 'puma' do
  watch('Gemfile.lock')
  watch(%r{^config|lib/.*})
end

guard 'spin' do
  # uses the .rspec file
  # --colour --fail-fast --format documentation --tag ~sl
  watch('spec/spec_helper.rb')                            { "spec" }
  watch(%r{^spec/support/.*$})                            { "spec" }
  watch(%r{^spec/.+_spec\.rb$})

  watch('config/routes.rb')                               { "spec/routing" }

  watch(%r{^app/(.+)\.rb$})                               { |m| "spec/#{m[1]}_spec.rb" }
  watch(%r{^lib/(.+)\.rb$})                               { |m| "spec/lib/#{m[1]}_spec.rb" }
  watch('app/controllers/application_controller.rb')      { "spec/controllers" }
  watch(%r{^app/controllers/(.+)_(controller)\.rb$})      { |m| ["spec/routing/#{m[1]}_routing_spec.rb", "spec/#{m[2]}s/#{m[1]}_#{m[2]}_spec.rb", "spec/requests/#{m[1]}_spec.rb"] }
end

=======
  # uses the .rspec file
  # --colour --fail-fast --format documentation --tag ~slow
  watch('spec/spec_helper.rb')                        { "spec" }
  watch(%r{^spec/.+_spec\.rb$})
  watch(%r{^spec/support/.*$})
  watch(%r{^app/(.+)\.rb$})                           { |m| "spec/#{m[1]}_spec.rb" }
  watch(%r{^lib/(.+)\.rb$})                           { |m| "spec/lib/#{m[1]}_spec.rb" }
  watch('app/controllers/application_controller.rb')  { "spec/controllers" }
  watch(%r{^app/controllers/(.+)_(controller)\.rb$})  { |m| ["spec/routing/#{m[1]}_routing_spec.rb", "spec/#{m[2]}s/#{m[1]}_#{m[2]}_spec.rb", "spec/requests/#{m[1]}_spec.rb"] }

end

### Guard::Sidekiq
#  available options:
#  - :verbose
#  - :queue (defaults to "default")
#  - :concurrency (defaults to 1)
#  - :timeout
#  - :environment (corresponds to RAILS_ENV for the Sidekiq worker)
guard 'sidekiq', :environment => 'development' do
  watch(%r{^workers/(.+)\.rb$})
end

