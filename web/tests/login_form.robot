***Settings***

Resource                            base.robot

Test Setup                          Nova Sessão
Test Teardown                       Encerra Sessão

***Test Cases***
Login com sucesso
    Go To                       ${url}/login
    Login With                  stark  jarvis!
    Should See Logged username  Tony Stark

Senha inválida
    [tags]                      login_error
    Go To                       ${url}/login
    Login With                  stark  jarvis
    Should Contain Login Alert  Senha é invalida!     

Usuário não existe
    [tags]                      login_user_404
    Go To                       ${url}/login
    Login With                  joao  123456
    Should Contain Login Alert  O usuário informado não está cadastrado!        

***Keywords***
Login With
    [Arguments]         ${username}        ${password}

    Input Text          css:input[name=username]        ${username}
    Input Text          css:input[name=password]        ${password}
    Click Element       class:btn-login

Should Contain Login Alert
    [Arguments]         ${expect_message}

    ${message}=         GetWebELement       id:flash
    Should Contain      ${message}          ${expect_message}

Should See Logged username
    [Arguments]     ${full_name}

    Page Should Contain         Olá, ${full_name}. Você acessou a área logada!