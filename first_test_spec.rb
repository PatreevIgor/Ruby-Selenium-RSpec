require 'selenium-webdriver'
require 'rspec'

options = Selenium::WebDriver::Chrome::Options.new
options.add_argument('--ignore-certificate-errors')
options.add_argument('--disable-popup-blocking')
options.add_argument('--disable-translate')
driver = Selenium::WebDriver.for :chrome, options: options

describe "True of false tests" do 
    it "thes test will be true" do
      driver.navigate.to "http://google.com"
      element = driver.find_element(name: 'q')
      element.send_keys "Hello WebDriver!"
      element.submit
      first_link = driver.find_element(xpath: '/html/body/div[6]/div[3]/div[10]/div[1]/div[2]/div/div[2]/div[2]/div/div/div/div/div/div[1]/div/div/h3/a')

      expect(first_link.text).to eq("Hello Selenium: SELENIUM WEBDRIVER FREE TUTORIALS ...")
    end

    it "thes test will be false" do
      driver.navigate.to "http://google.com"
      element = driver.find_element(name: 'q')
      element.send_keys "Hello WebDriver!"
      element.submit
      first_link = driver.find_element(xpath: '/html/body/div[6]/div[3]/div[10]/div[1]/div[2]/div/div[2]/div[2]/div/div/div/div/div/div[1]/div/div/h3/a')

      expect(first_link.text).to eq("WRONG TEXT")
    end
end
