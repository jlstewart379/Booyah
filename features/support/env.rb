require 'appium_lib'
require 'erb'

def appium
  if @appium_driver.nil?

    @config = YAML.load(ERB.new(File.read('.booyah.yml')).result)
    app_path = @config["app_path"]

    app = { device: 'iPad Simulator', app_path: app_path}

    @appium_driver = Appium::Driver.new(app)
    @appium_driver.start_driver
  end

  @appium_driver
end

