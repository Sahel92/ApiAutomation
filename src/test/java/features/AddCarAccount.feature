Feature: TEK Insurance API Post Service

  Background: 
    Given url appUrl
    * def tokenValue = callonce read("GenerateToken.feature")
    * def token = tokenValue.response.token
    * header Authorization = "Bearer " + token
    * def primaryPerson = callonce read("PostAccount.feature")
    * def id = primaryPerson.response.id

  @AddCar
  Scenario: Add car Service Test One
    * param primaryPersonId = id
    * path "/api/accounts/add-account-car"
    * request
      """
      {
      
      "make": "Toyota",
      "model": "Celica",
      "year": "2004",
      "licensePlate": "MANO"
      }
      """
    * method post
    * status 201
    * print response

  @AddCar
  Scenario: Add car Service Test Two
    * param primaryPersonId = id
    * path "/api/accounts/add-account-car"
    * request
      """
      {
      
      "make": "Ford",
      "model": "Mustang",
      "year": "2023",
      "licensePlate": "STEAK"
      }
      """
    * method post
    * status 201
    * print response
