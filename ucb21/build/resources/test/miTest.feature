Feature: Login

  Scenario Outline: Como usuario adminitrador
  Quiero usar mi email
  Para ingresar a la aplicacion

    Given tengo un usuario "usuario comun"
    And tengo abierto facebook app
    When yo ingreso mi <email> en la caja de texto usuario
    And yo ingreso mi <password> en la caja de texto password
    And <specialStep>
    Then yo deberia de ingresar a faccebook

    Examples:
      | email           | password | specialStep |
      | ucb@ucb.com     | 123      | yo hago click en el boton login            |
      | ucb@gmail.com   | 456      | yo hago click en el boton login            |
      | ucb@outlook.com | 678      | yo deberia de ingresar a faccebook         |
