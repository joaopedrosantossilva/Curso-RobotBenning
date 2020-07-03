
*** Settings ***
Library     app.py


*** Test Cases ***
Deve retornar mensagem de boas vindas
    ${result}=          Welcome     Joao
    Should Be Equal     ${result}  Olá Joao, Bem vindo ao Curso básico de Robot Framework!