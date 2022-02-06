Feature: Calculadora

    Como usuário, desejo utilizar a calculadora para 
    realizar algumas operações

Scenario: Calcular a soma de dois valores
    Given que acesso a calculadora
    And desejo realizar uma "adicao"
    When informar os valores "5" e "7"
    And finalizar a soma
    Then deve obter um resultado "12"


Scenario: Calcular a subtração de dois valores
    Given que acesso a calculadora
    And desejo realizar uma "subtracao"
    When informar os valores "9" e "7"
    And finalizar a soma
    Then deve obter um resultado "2"

Scenario Outline: Calcular uma "<operacao>" de valores
    Given que acesso a calculadora
    And desejo realizar uma "<operacao>"
    When informar os valores "<primeiro>" e "<segundo>"
    And finalizar a soma
    Then deve obter um resultado "<resultado>"

    Examples:
    | operacao       | primeiro  | segundo  | resultado |
    | adicao         | 5         | 8        | 13        |
    | subtracao      | 8         | 5        | 3         |
    | multiplicacao  | 9         | 3        | 27        |

        



