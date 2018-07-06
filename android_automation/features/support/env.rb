require "appium_lib"

# arquivo necessário para conectar as libraries, no caso, appium

def caps
  { caps: {
      deviceName: "teste",
      platformName: "Android",
      app: (File.join(File.dirname(__FILE__), "PreciseUnitConversion.apk")),
      appPackage: "com.ba.universalconverter",
      appActivity: "MainConverterActivity",
      newCommandTimeout: "3600"
  }
  }
end

Appium::Driver.new(caps, true)
Appium.promote_appium_methods Object