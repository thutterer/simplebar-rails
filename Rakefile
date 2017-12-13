require "bundler/gem_tasks"

Rake::TaskManager.record_task_metadata = true

task default: [:clobber]

namespace :update do
  desc 'check environment'
  task :verify do
    abort "Usage: rake update version=1.2.3" unless ENV['version']
  end

  desc 'fetch new asset files'
  task fetch: [:verify] do |t|
    puts "#{t.comment} ..."
    source = "https://raw.githubusercontent.com/Grsmto/simplebar/v#{ENV['version']}/"
    {'simplebar.js' => 'javascripts', 'simplebar.css' => 'stylesheets'}.each do |file, type|
      `wget --quiet -O vendor/assets/#{type}/#{file} #{source}/dist/#{file}`
    end
  end

  desc 'update version in gemspec'
  task gemspec: [:verify] do |t|
    puts "#{t.comment} ..."
    `sed -i '/.*version.*/s/[0-9]\\+.[0-9]\\+.[0-9]\\+/#{ENV["version"]}/' simplebar-rails.gemspec`
  end

  desc 'commit new asset files'
  task commit: [:verify, :fetch, :gemspec] do |t|
    puts "#{t.comment} ..."
    `git add vendor/assets`
    `git add simplebar-rails.gemspec`
    `git commit -m 'update to v#{ENV['version']}'`
  end
end

desc 'update gem to new upstream version'
task update: ['update:commit', 'release']
