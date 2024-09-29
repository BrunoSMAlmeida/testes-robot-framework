*** Settings ***
Documentation    Essa suite teste o site do ebay.com
Resource         ebay_resources.robot
Test Setup       Abrir o navegador
Test Teardown    Fechar o navegador


*** Test Cases ***  
Caso de Teste 01 - Acesso ao menu "Eletronics"
    [Documentation]    Esse teste irá acessar o menu de eletrônicos do site 
    ...                e acessar uma categoria dentro do eletrônicos.
    
    [Tags]             acessar site acessar seção acessar categoria
    Acessar a home page do site www.ebay.com
    Entrar no menu "Eletronics"
    Verificar se o título da página fica "Eletronics"
    Verificar se aparece a frase "Eletronics products for sale"
    Verificar se aparece a categoria "Headphones"


Caso de Teste 02 - Pesquisa de produto
    [Documentation]    Esse teste irá acessar a home page do site 
    ...                e fazer uma pesquisa no campo de pesquisa.
    
    [Tags]             acessar site pesquisar
    Acessar a home page do site ebay.com
    Digitar o nome de produto "Xbox Series S" no campo de pesquisa
    Clicar no botão de pesquisa
    Verificar o resultado da pesquisa e se está listando o produto especificado

