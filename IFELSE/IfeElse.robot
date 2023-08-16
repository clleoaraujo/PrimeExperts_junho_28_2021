*** Settings ***
Documentation    Testando laços(IF) com robot
Library    Collections
Library    XML

*** Variables ***


*** Test Cases ***
Jogo do adivinha
    Eu tenho o numero    5

*** Keywords ***
Eu tenho o numero
    [Arguments]    ${possuo_o_numero}
    Ganhei o jogo "${possuo_o_numero}"

Ganhei o jogo "${numero_recebido}"
    ${mensagem_vencedora}    Set Variable    voce ganhou o jogo
    IF    ${numero_recebido} == ${5}
        Log To console    ${mensagem_vencedora}
    ELSE IF    ${numero_recebido} == ${8}
        Log To console    ${mensagem_vencedora}
    ELSE
        Log To console    voce perdeu...
    END