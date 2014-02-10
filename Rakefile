require 'yaml'
require 'erb'
require 'cucumber/rake/task'

desc "build Booyah for simulator use"
task :build do
  Dir.chdir("./BooyahApp") do
    `xcodebuild -project BooyahApp.xcodeproj -target BooyahApp -sdk iphonesimulator -configuration Debug clean build 1>&2`  
  end
end

desc "Run the features"
task :features do
  `bundle exec cucumber 1>&2`
end

desc "Starting appium server for simulator"
task :appium do
  config = YAML.load(ERB.new(File.read('.booyah.yml')).result)
  app_path = config["app_path"]
  system('appium --app "' + app_path + '" --force-ipad --native-instruments-lib 1>&2')
end

desc "Install Booyah to simulator"
task :install do
  config = YAML.load(ERB.new(File.read('.booyah.yml')).result)
  folder_dir="#{ENV['HOME']}/Library/Application Support/iPhone Simulator/#{config["ios_version"]}/Applications"

  top_dir="#{folder_dir}/1234"
  FileUtils.mkdir_p(top_dir)
  FileUtils.mkdir_p("#{top_dir}/Documents")
  FileUtils.mkdir_p("#{top_dir}/Library")
  FileUtils.mkdir_p("#{top_dir}/tmp")

  FileUtils.cp_r("./BooyahApp/build/Debug-iphonesimulator/BooyahApp.app", "#{top_dir}/BooyahApp.app")

end
