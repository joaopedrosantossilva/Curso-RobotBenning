***Settings***

Resource                            base.robot

Test Setup                          Nova Sessão
Test Teardown                       Encerra Sessão
                    
***Test Cases***
Selecionando por ID
    Go To                           ${url}/radios
    Select Radio Button             movie       thor 
    Radio Button Should Be Set To   movie       thor

Selecionando por Value
    Go To                           ${url}/radios
    Select Radio Button             movie       guardians
    Radio Button Should Be Set To   movie       guardians
