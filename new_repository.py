from selenium import webdriver
from time import sleep
from userpass import passw
from userpass import user
from userpass import repository_name

class InstaBot:
    def __init__(self, user, passw, repository_name):
        self.driver = webdriver.Chrome()
        self.driver.get("https://github.com")
        sleep(2)
        self.driver.find_element_by_xpath("/html/body/div[1]/header/div/div[2]/div[2]/a[1]")\
            .click()
        sleep(2)
        self.driver.find_element_by_xpath("//input[@name=\"login\"]")\
            .send_keys(user)
        self.driver.find_element_by_xpath("//input[@name=\"password\"]")\
            .send_keys(passw)
        self.driver.find_element_by_xpath('//input[@type="submit"]')\
            .click()
        sleep(2)
        self.driver.find_element_by_xpath("/html/body/div[5]/div/aside[1]/div[2]/div[2]/div/h2/a")\
            .click()
        sleep(2)
        self.driver.find_element_by_xpath("//input[@name=\"repository[name]\"]")\
            .send_keys(repository_name)
        sleep(4)
        self.driver.find_element_by_xpath('//*[@id="new_repository"]/div[3]/button')\
            .click()
        sleep(4)

InstaBot(user, passw, repository_name)
