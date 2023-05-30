@test
Feature: TEK Insurance API GET Service
@getPrimaryAccount
Scenario: Get Primary Account API Test
Given url appUrl
* def tokenValue = call read("GenerateToken.feature")
* def token = tokenValue.response.token
* header Authorization = "Bearer " + token
* path "api/accounts/get-primary-account"
* def primaryPerson = call read("PostAccount.feature")
* def id = primaryPerson.response.id
* param primaryPersonId = id
* method get
* print response  
* status 200
* def responseId = response.id
* match responseId == id
* def responseEmail = response.email
* assert responseEmail == primaryPerson.response.email
