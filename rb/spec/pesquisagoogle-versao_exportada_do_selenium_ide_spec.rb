require "json"
require "selenium-webdriver"
require "rspec"
include RSpec::Expectations

######################################################################################################
#Esta é a versão do arquivo HTML totalmente crua, conforme foi exportado para o formato da linguagem #
#Ruby / Rspec / WebDriver, que é uma das opções padrões do próprio Selenium IDE.                     #
######################################################################################################

describe "PesquisagoogleSpec" do

  before(:each) do
    @driver = Selenium::WebDriver.for :firefox
    @base_url = "http://www.google.com.br/"
    @accept_next_alert = true
    @driver.manage.timeouts.implicit_wait = 30
    @verification_errors = []
  end

  after(:each) do
    @driver.quit
    @verification_errors.should == []
  end

  it "test_pesquisagoogle_spec" do
    @driver.get(@base_url + "/")
    @driver.find_element(:id, "lst-ib").clear
    @driver.find_element(:id, "lst-ib").send_keys "Teste de Software"
    @driver.find_element(:name, "btnG").click
  end

  # def element_present?(how, what)
  #   ${receiver}.find_element(how, what)
  #   true
  # rescue Selenium::WebDriver::Error::NoSuchElementError
  #   false
  # end

  # def alert_present?()
  #   ${receiver}.switch_to.alert
  #   true
  # rescue Selenium::WebDriver::Error::NoAlertPresentError
  #   false
  # end

  # def verify(&blk)
  #   yield
  # rescue ExpectationNotMetError => ex
  #   @verification_errors << ex
  # end

  # def close_alert_and_get_its_text(how, what)
  #   alert = ${receiver}.switch_to().alert()
  #   alert_text = alert.text
  #   if (@accept_next_alert) then
  #     alert.accept()
  #   else
  #     alert.dismiss()
  #   end
  #   alert_text
  # ensure
  #   @accept_next_alert = true
  # end

end
