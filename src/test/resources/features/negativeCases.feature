Feature: Petstore CRUD API Tests Negatives

  Background:
    * url 'https://petstore.swagger.io/v2'
    * configure headers = { 'Content-Type': 'application/json' }

  # ----------------- NEGATIVE SCENARIOS -----------------

  Scenario: Create Pet with Missing Fields - Negative
    Given path 'pet'
    And request { id: 102 }
    When method post
    Then status 400

  Scenario: Read Non-Existent Pet - Negative
    Given path 'pet', 999999
    When method get
    Then status 404
    And match response.message == 'Pet not found'

  Scenario: Update Non-Existent Pet - Negative
    Given path 'pet'
    And request { id: 12345, name: 'Ghost', status: 'available' }
    When method put
    Then status 404
    And match response.message == 'Pet not found'

  Scenario: Delete Non-Existent Pet - Negative
    Given path 'pet', 999999
    When method delete
    Then status 404
    And match response.message == 'Pet not found'

  Scenario: Invalid Data Type for ID - Negative
    Given path 'pet', 'abc'
    When method get
    Then status 400