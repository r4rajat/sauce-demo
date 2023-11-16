@SauceDemo
Feature: SauceDemo Login Test

@MainMenu
Scenario: Verify Basic Auth in SauceDemo Website
Given open SauceDemo home page
Then enter username and password
Then click on login button
Then verify SauceDemo landing page