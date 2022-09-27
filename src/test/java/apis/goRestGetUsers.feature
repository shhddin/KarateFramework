Feature: gorest Get Users api validation

  Background: 
    * def baseUrl = goRestBaseUri
    * def getUsersPath = getUsersPath

  @sample
  Scenario: A sample karate scenario
    * print "--------------- Karate  ----------------------"
@email
  Scenario: gorest Get Users jsonPath
    Given url 'https://gorest.co.in/public/v2/users'
    When method GET
    Then status 200
    And print response[0].email
    * def emails = karate.jsonPath(response, '$..email')
    * print emails
    And match karate.sizeOf(emails) == 10

  @background @smoke
  Scenario: Use of Background
    Given url baseUrl
    And path getUsersPath
    When method get
    Then status 200

  @getUser
  Scenario: find specific user
    Given url baseUrl
    And path getUsersPath + '/98'
    When method Get
    Then status 200

  @negative
  Scenario: find specific user
    Given url baseUrl
    And path getUsersPath + '/a786'
    When method Get
    Then status 404
    * match response.message == "Resource not found"
