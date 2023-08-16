*** Settings ***
Documentation    Testando lacos(FOR) com robot
Library    Collections

*** Variables ***


*** Test Cases ***
Contando ate 9
    Contar    0    9

*** Keywords ***
Contar
    [Arguments]    ${num_inicial}    ${num_final}
    FOR    ${count}    IN RANGE    ${num_inicial}    ${num_final}
        Log To console    ${\n}Estou no numero: ${count}
    END