Feature: Task
  @Appium
  Scenario: Como usuario en la app
            Quiero crear tareas con titulo y descripcion
            Para realizar seguimiento a mis actividades

    Given la app Whendo esta abierta
    And yo hago click en el boton agregarTarea
    When yo creo una tarea
        | titulo         | Clean                     |
        | descripcion    | Esto es una descripcion   |
    And realizo click en boton guardar
    Then la tarea con el nombre "Clean" deberia ser creada