@test
Feature: Token Generator Feature for TEK Insurance API

@token
Scenario: Generate TOken
Given url appUrl
* path "/api/token"
* request {"username":"supervisor","password":"tek_supervisor"}
* method post
* print response.token
* print response.fullName
* status 200
* assert response.fullName == 'Supervisor'