Feature: Tests for Home screen functionality

  Scenario: Default values on Home screen is Foot and Centimeter
    Given I land on home screen
    Then Left Unit picker value should be "Foot"
    And Right unit picker value should be "Centimeter"

  @default2
  Scenario: Show all button should be enabled at launch
    Given I land on home screen
    Then Show all button should be enabled
    When I press on clear button
    Then Show all button should be disabled
    And Show all button should be active

  @wip
  Scenario Outline: Verify default conversion
    Given I land on Home screen
    When I type "<target>" to target text field
    Then I should see result as "<result>"
    Examples:
    |target|result    |
    |10    |304.8     |
    |1112  |33 893.76 |

  Scenario: User able to add current conversion to Favorites list
    Given I land on Home screen
    Then I press on Add Favorites icon
    When I press on Menu icon
    Then I press on Favorite conversions
    And I verify "Comprimento" added to Favorite conversions list


   Scenario: User able to search by existing Conversion type
     Given I land on Home screen
     Then I press on search icon
     Then I type "Temperatura" in search field
     And I press return button on soft keyboard
     Then I see "Temperatura" as a current unit converter
     Then Left Unit picker value should be "Celsius"
     And Right unit picker value should be "Fahrenheit"