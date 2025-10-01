# Estudos de Flex e Bison

Este repositório serve como um registro dos meus estudos e trabalhos práticos envolvendo as ferramentas `flex` e `bison`, fundamentais para a disciplina de compiladores, desde exemplos básicos até trabalhos mais complexos, cobrindo análise léxica e sintática.

## Breve Descrição

O objetivo deste projeto é aprofundar o conhecimento sobre a construção de analisadores léxicos e sintáticos. O repositório está organizado em diferentes pastas, cada uma contendo exemplos, exercícios de listas e trabalhos acadêmicos desenvolvidos ao longo da disciplina.

-   **Flex:** Ferramenta para gerar analisadores léxicos (scanners), que reconhecem padrões em textos (tokens).
-   **Bison:** Ferramenta para gerar analisadores sintáticos (parsers), que verificam se a sequência de tokens segue uma gramática definida.

## Estrutura do Repositório

O projeto está dividido nas seguintes pastas principais:

-   `estudo_prova/`: Contém uma variedade de exemplos e exercícios resolvidos como preparação para avaliações. Inclui:
    -   `Bison/`: Foco em exemplos que utilizam `bison` para análise sintática, incluindo uma calculadora simples.
    -   `exemploAula/`: Códigos desenvolvidos e demonstrados em sala de aula.
    -   `listaAnaliseLexica/`: Resoluções de exercícios de listas focadas em análise léxica com `flex`.
    -   Outras pastas com diferentes fontes de estudo.

-   `trabalho_1/`: Primeiro trabalho prático da disciplina, que consiste em um analisador léxico para uma linguagem específica (`.nag`).

-   `trabalho_nocao/`: Projeto que explora a integração de conceitos de agentes inteligentes (usando a plataforma JaCaMo/Jason) com a análise de linguagens, utilizando `gradle` para gerenciamento de dependências.

## Como Compilar e Executar

A maioria dos projetos neste repositório segue um fluxo de compilação padrão para `flex` e `bison`.

### Pré-requisitos

-   **Flex:** `sudo apt-get install flex`
-   **Bison:** `sudo apt-get install bison`
-   **Compilador C/C++:** `sudo apt-get install build-essential` (geralmente `gcc` ou `g++`)

### Passos para Compilação (Exemplo Geral)

1.  **Navegue até a pasta do projeto desejado:**
    ```bash
    cd estudo_prova/Bison/calculadoraSimples/
    ```

2.  **Execute o Bison para gerar o parser:** O `-d` cria um arquivo de header (`.h`) com as definições dos tokens.
    ```bash
    bison -d nome_do_arquivo.y
    ```

3.  **Execute o Flex para gerar o scanner:**
    ```bash
    flex nome_do_arquivo.l
    ```

4.  **Compile os arquivos C gerados com um compilador C:** O `-lfl` é necessário para vincular a biblioteca do Flex.
    ```bash
    gcc *.c -o executavel -lfl
    ```

5.  **Execute o programa:**
    ```bash
    ./executavel
    ```

**Observação:** Alguns diretórios podem conter um `Makefile` que automatiza esse processo. Nesses casos, basta executar o comando `make`.
