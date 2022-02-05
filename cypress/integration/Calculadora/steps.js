
Given(/^que acesso a calculadora$/, () => {
	cy.visit('/')
});

When(/^desejo realizar uma "([^"]*)"$/, (operacaoDesejada) => {
    let operacaoDesejadaPeloQa;

    switch (operacaoDesejada){
        case 'soma':
            operacaoDesejadaPeloQa = '+'
            break
        case 'subtracao':
            operacaoDesejadaPeloQa = '-'
            break
        default:
            break
    }

    Cypress.env('operador', operacaoDesejadaPeloQa)
});

When(/^informar os valores "([^"]*)" e "([^"]*)"$/, (primeiroValor, segundoValor) => {
	cy.get('div[class="button"], .button.zero').as('valores')
    cy.get('.operator').as('operadores')
	
    cy.get('@valores').contains(primeiroValor).click()
    cy.get('@operadores').contains(`${Cypress.env('operador')}`).click()
    cy.get('@valores').contains(segundoValor).click()
});

When(/^finalizar a soma$/, () => {
	cy.get('@operadores').contains('=').click()
});

Then(/^deve obter um resultado "([^"]*)"$/, (resultadoEsperado) => {
    cy.get('.display').as('resultadodaOperacao')

    cy.get('@resultadodaOperacao')
        .invoke('text')
        .should('be.equal', resultadoEsperado)

});
