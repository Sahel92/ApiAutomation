@test
Feature: TEK Insurance API Post Request

  @postAccount
  Scenario: Post Primary Account Service Test
    Given url appUrl
    * def tokenValue = call read("GenerateToken.feature")
    * def token = tokenValue.response.token
    * header Authorization = "Bearer " + token
    * path "api/accounts/add-primary-account"
    * def dataGenerator = Java.type("test.api.DataGenerator")
    * def email = dataGenerator.getEmail()
    * def firstName = dataGenerator.getFirstName()
    * def lastName = dataGenerator.getLastName()
    * def title = dataGenerator.getTitle()
    * def gender = dataGenerator.getGender()
    * def maritalStatus = dataGenerator.getMaritalStatus()
    * def employmentStatus = dataGenerator.getEmploymentStatus()
    * def dateOfBirth = dataGenerator.getDOB()
	* request

      """
      {
      "email": "#(email)",
      "firstName": "#(firstName)",
      "lastName": "#(lastName)",
      "title":"#(title)",
      "gender":"#(gender)",
      "maritalStatus":"#(maritalStatus)",
      "employmentStatus": "#(employmentStatus)",
      "dateOfBirth": "#(dateOfBirth)",
      "new":true
      }
      """
    * method post
    * status 201
    * print response
    
