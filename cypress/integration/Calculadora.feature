Feature: Calculadora

    Como usuário, desejo utilizar a calculadora para 
    realizar algumas operações

Scenario: Calcular a soma de dois valores
    Given que acesso a calculadora
    And desejo realizar uma "soma"
    When informar os valores "5" e "7"
    And finalizar a soma
    Then deve obter um resultado "12"
