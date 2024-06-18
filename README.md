# Implementação da Sequência de Fibonacci

## Descrição do Projeto

Neste trabalho será implementada a sequência de Fibonacci, que é uma série de números na qual cada número é a soma dos dois antecessores, começando com 0 e 1. 
A razão áurea, uma constante matemática, pode ser obtida pela divisão de dois números consecutivos da sequência de Fibonacci.

## Objetivos

Os objetivos deste exercício são:

1. Implementar uma função que calcule o n-ésimo termo da sequência de Fibonacci;
2. Calcular o 30º, 40º e 41º termos da sequência;
3. Armazenar os resultados dos termos nos registradores `$s1`, `$s2` e `$s3`, respectivamente;
4. Calcular a razão áurea utilizando os termos 41º e 40º da sequência e armazenar no registrador `$f0`;
5. Imprimir os resultados do 30º termo e da razão áurea.

## Instruções

### Implementação da Função de Fibonacci
- A função deve calcular o n-ésimo termo da sequência de Fibonacci.

### Cálculo dos Termos Específicos
- Calcular o 30º termo e armazenar em `$s1`.
- Calcular o 41º termo e armazenar em `$s2`.
- Calcular o 40º termo e armazenar em `$s3`.

### Cálculo da Razão Áurea
- Utilizar os termos armazenados em `$s2` (41º termo) e `$s3` (40º termo) para calcular a razão áurea.
- Armazenar o resultado no registrador `$f0`.

### Impressão dos Resultados
- Imprimir o valor armazenado em `$s1` (30º termo).
- Imprimir o valor da razão áurea armazenado em `$f0`.

## Rodando o Projeto no MARS

1. Baixe e instale o MARS (MIPS Assembler and Runtime Simulator) a partir do link (http://courses.missouristate.edu/KenVollmar/MARS/download.htm).
2. Abra o MARS.
3. Carregue o arquivo do projeto (arquivo `.asm`) no MARS.
4. Monte o programa clicando no botão "Assemble" ou pressionando `F3`.
5. Execute o programa clicando no botão "Go" ou pressionando `F5`.
6. Verifique os resultados nas janelas de registros e de saída de console.
   - O 30º termo da sequência de Fibonacci deve estar armazenado no registrador `$s1`.
   - O valor da razão áurea deve estar armazenado no registrador `$f0`.

## Exemplo de Saída

- 30º termo da sequência de Fibonacci: `832040`
- Razão Áurea (41º termo / 40º termo): `1.61803398875`


