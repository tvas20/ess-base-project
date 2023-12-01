Feature: Payments
	As a user looking to buy a host travel services
	I want to add and modify methods of payment
	so that I can buy service by payment methods using a payment method registered

Scenario: overview of my cards
	Given I am at the "pagamentos" page
	When I select "meus cartões" option
	Then I can see "meus cartões" page

Scenario: get back to payments page
	Given I am at the "Meus cartões" page
	When I select "voltar" 
	Then I can see "pagamentos" page

Scenario: overview of transaction history
	Given I am at the "pagamentos" page
	When I select "histórico de transações" option
	Then I can see "histórico de transações" page

Scenario: Transaction history of a card
	Given I am at the "Historico de transações" page
	When I select a card "cartão1" 
	Then I can see the history of the card "Historico cartão1" page

Scenario: adding a new card (payment method)
	Given I am at the "meus cartões" page
	When I select "+" option
	Then I am at "cadastro de cartão" page

Scenario: editing a card (payment method)
	Given I am at the "meus cartões" page
	When I select "pen" option at "cartão_1"
	Then I am at "edição de cartão" page

Scenario: editing info of a card (incompleto) 
	Given I am at the "edição de cartão" page
	When I erase nome de cartão "Higgins claudiano" 
	Then I "Save" the information
	And I can see a message of "Informações incompletas" there is not a valid "nome de cartão"

Scenario: registering info about a new card (payment method) 
	Given I am at the "cadastro de cartão" page
	When I add nome de cartão "Higgins claudiano" 
	And I add numero de cartão "1234123412341234"
	And I add data de validade "12/29"
	And I add código de segurança (cvv) "000"
	And I select "débito" option
	Then I "Save" the information
	And I can see a message of "Sucesso"

Scenario: registering info about a new card (incompleto)
	Given I am at the "cadastro de cartão" page
	When I add nome de cartão "Higgins claudiano" 
	And I add numero de cartão "1234123412341234"
	And I add data de validade "12/29"
	And I select "débito" option
	Then I "Save" the information
	And I can see a message of "Informações incompletas" 
	And Its showed that there is not a valid "codigo de segurança" 
