from selenium import webdriver
from time import sleep
from userpass import passw
from userpass import user
from userpass import repository_name

ss = '{}/{}'.format(user,repository_name)

class InstaBot:
    def __init__(self, user, passw, repository_name, ss):
        self.driver = webdriver.Chrome()
        self.driver.get("https://github.com")
        sleep(1)
        self.driver.find_element_by_xpath("/html/body/div[1]/header/div/div[2]/div[2]/a[1]")\
            .click()
        sleep(1)
        self.driver.find_element_by_xpath("//input[@name=\"login\"]")\
            .send_keys(user)
        self.driver.find_element_by_xpath("//input[@name=\"password\"]")\
            .send_keys(passw)
        self.driver.find_element_by_xpath('//input[@type="submit"]')\
            .click()
        sleep(1)
        self.driver.find_element_by_xpath("/html/body/div[5]/div/aside[1]/div[2]/div[2]/div/form/button")\
            .click()
        sleep(1)
        self.driver.find_element_by_xpath('//span[@title=\"%s\"]' % repository_name)\
            .click()
        sleep(1)
        self.driver.find_element_by_xpath('//a[@href="/{}/{}/settings"]'.format(user,repository_name))\
            .click()
        sleep(1)
        self.driver.find_element_by_xpath("/html/body/div[5]/div/main/div[2]/div/div/div[2]/div/div[8]/ul/li[4]/details/summary")\
            .click()
        sleep(3)
        self.driver.find_element_by_xpath("/html/body/div[5]/div/main/div[2]/div/div/div[2]/div/div[8]/ul/li[4]/details/details-dialog/div[3]/form/p/input")\
            .send_keys(ss)
        sleep(4)
        self.driver.find_element_by_xpath("/html/body/div[5]/div/main/div[2]/div/div/div[2]/div/div[8]/ul/li[4]/details/details-dialog/div[3]/form/button")\
            .click()
        sleep(5)

InstaBot(user, passw, repository_name, ss)
