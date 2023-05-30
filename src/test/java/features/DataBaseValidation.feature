@test
Feature: TEK Insurance API DB Validation

  @databaseTest
  Scenario: Database Connection Test
    * def getAPIRequest = call read("GetAccount.feature")
    * def id = getAPIRequest.response.id
    * print id
    * def dataBaseUtility = Java.type("test.api.DataBaseUtility")
    * def databaseEmail = dataBaseUtility.result("select email from primary_person where id = '"+id+"'","email")
    * def responseEmail = getAPIRequest.response.email
    * match responseEmail == databaseEmail
    * print databaseEmail
    * print responseEmail
    #* def query = "select id, email, title, first_name, last_name, gender, marital_status, employment_status, date_of_birth, user_id from 		primary_person where id ='"+id+"'"
    #* def databaseRow = dataBaseUtility.queryResult(query)
    #* print databaseRow
    #* print getAPIRequest.resonse
    #* match databaseRow == getAPIRequest.response
