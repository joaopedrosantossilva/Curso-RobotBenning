*** Settings ***
Resource        base.robot

Test Setup      Nova sessão            
Test Teardown   Encerra sessão

*** Variables ***
${check_thor}=      id:thor
${check_iron}=      css:input[value='iron-man']
${check_panther}=   xpath://input[@value='black-panther']

*** Test Cases ***
Marcando opção com Id
    [tags]      thor
    Go To                           ${url}/checkboxes
    Select Checkbox                 ${check_thor}
    Checkbox Should Be Selected     ${check_thor}

Marcando opçao com CSS Selector
    [tags]      iron
    Go To                           ${url}/checkboxes
    Select Checkbox                 ${check_iron}
    Checkbox Should Be Selected     ${check_iron}

Marcando opcao com Xpath
    [tags]      panther
    Go To                           ${url}/checkboxes
    Select Checkbox                 ${check_panther}
    Checkbox Should Be Selected     ${check_panther}
