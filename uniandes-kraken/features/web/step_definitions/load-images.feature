Feature: Verificar que las imágenes se cargan correctamente. 

@user1 @web
Scenario: Como primer usuario verifico se pueden cargar imagenes
    Given I navigate to page "http://localhost:2368/ghost/#/signin"
    And I wait for 3 seconds
    When I enter email ghost "<GHOSTUSER>"
    And I wait for 2 seconds
    And I enter password ghost "<GHOSTPASSWORD>"
    And I wait for 2 seconds
    And I click sign in
    And I wait for 2 seconds
    And I enter post section
    And I wait for 2 seconds
    And I enter new post
    And I wait for 2 seconds
    And I click the more input options
    And I wait for 2 seconds
    And I click the first of the option , image option
    And I wait for 2 seconds
    And I load an image
    And I wait for 20 seconds
    And I enter new post title
    And I wait for 2 seconds
    And I enter text "New Post"