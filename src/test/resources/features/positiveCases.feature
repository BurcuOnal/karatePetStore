Feature: Petstore CRUD API Tests Positives

  Background:
    * url 'https://petstore.swagger.io/v2'
    * configure headers = { 'Content-Type': 'application/json' }

  # ----------------- POSITIVE SCENARIOS -----------------

  Scenario: Create Pet - Positive
    Given path 'pet'
    And request { id: 101, name: 'Tommy', status: 'available' }
    When method post
    Then status 200
    And match response.id == 101
    And match response.name == 'Tommy'
    And match response.status == 'available'

  Scenario: Read Pet - Positive
    Given path 'pet', 101
    When method get
    Then status 200
    And match response.id == 101
    And match response.name == 'Tommy'
    And match response.status == 'available'

  Scenario: Update Pet - Positive
    Given path 'pet'
    And request { id: 101, name: 'Tommy', status: 'sold' }
    When method put
    Then status 200
    And match response.status == 'sold'

  Scenario: Delete Pet - Positive
    Given path 'pet', 101
    When method delete
    Then status 200

    # Check deleted
    Given path 'pet', 101
    When method get
    Then status 404

