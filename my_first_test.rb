require 'selenium-webdriver'

options = Selenium::WebDriver::Chrome::Options.new
options.add_argument('--ignore-certificate-errors')
options.add_argument('--disable-popup-blocking')
options.add_argument('--disable-translate')
driver = Selenium::WebDriver.for :chrome, options: options


driver.navigate.to "http://google.com"
element = driver.find_element(name: 'q')
element.send_keys "Hello WebDriver!"
element.submit
element2 = driver.find_element(xpath: '/html/body/div[6]/div[3]/div[10]/div[1]/div[2]/div/div[2]/div[2]/div/div/div/div/div/div[1]/div/div/h3/a')
element2.click
element2 = driver.find_element(xpath: '//*[@id="Header1_headerimg"]')
element2.click


# driver.navigate.to 'https://mybank.by/main_unauthorised'
# element = driver.find_element(xpath: '/html/body/div[1]/div/div/div[1]/div/div[1]/div/div/div[1]/button[2]/div/div')
# element.click
# element = driver.find_element(xpath: '/html/body/div[1]/div/div/div[1]/div/div[2]/div/div[2]/div/div/div/div/div[2]/div/a')
# element.click
# element = driver.find_element(xpath: '/html/body/div[1]/div/div/header/div/div[1]/ul/li/a')
# element.click
# driver.quit






