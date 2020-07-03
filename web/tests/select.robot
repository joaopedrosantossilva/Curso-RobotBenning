***Settings***
Resource            base.robot

Test Setup          Nova Sessão  
Test Teardown       Encerra Sessão

***Test Cases***
Selecionar por texto e valida pelo valor
    Go To                       ${url}/dropdown
    Select From list By label   class:avenger-list      Scott Lang
    ${select}=                  Get Selected List Value   class:avenger-list
    Should Be Equal             ${select}       7

Selecionar por valor e validar pelo texto
    Go To                       ${url}/dropdown
    Select From list By value   id:dropdown     6
    ${select}=                  Get Selected List Label   id:dropdown
    Should Be Equal             ${select}       Loki
