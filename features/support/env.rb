require 'appium_lib'

HOME = ENV['HOME']
#puts HOME
#app = { device: :ios, app_path: "#{HOME}/Library/Application Support/iPhone Simulator/7.0.3/Applications/Booyah/BooyahApp.app"}

#def app
#  {
#      'app_path' => "/Users/jstewart/Library/Application Support/iPhone Simulator/7.0.3/Applications/Booyah/BooyahApp.app",
#      'device' => "iPhone Simulator"
#  }
#end


def appium
  if @appium_driver.nil?
    app = { device: :ios, app_path: '/Users/jstewart/Library/Developer/Xcode/DerivedData/BooyahApp-aebeuckpbhtlvbcsnwzzasefefeg/Build/Products/Debug-iphonesimulator/BooyahApp.app'}
    @appium_driver = Appium::Driver.new(app)
    @appium_driver.start_driver
    @appium_driver

  end
  @appium_driver

end

#Appium.promote_appium_methods Object