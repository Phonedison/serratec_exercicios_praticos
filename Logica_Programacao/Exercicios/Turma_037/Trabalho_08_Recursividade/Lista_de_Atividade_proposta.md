## #Trabalho 08 – Recursividade

### Atividade 1 – Calcular o Fatorial de um Número

- Crie uma função recursiva chamada fatorial(n) que retorna o fatorial de n.
- O fatorial de um número é definido como:
  - n! = n \* (n - 1)!
  - Com o caso base:
  - 1! = 1 e 0! = 1

---

### Atividade 2 – Somar os Números de 1 até N

- Crie uma função recursiva chamada soma(n), que retorna a soma de todos os números de 1 até n.
- Caso base: Se n == 1, a soma é 1.
- Caso recursivo: soma(n) = n + soma(n - 1).

---

### Atividade 3 – Sequência de Fibonacci

- Crie uma função recursiva chamada fibonacci(n), que retorna o n-ésimo termo da sequência de Fibonacci.
- A sequência de Fibonacci é definida como:
  - fibonacci(0) = 0
  - fibonacci(1) = 1
  - fibonacci(n) = fibonacci(n-1) + fibonacci(n-2)

---

### Atividade 4 – Contagem Regressiva

- Crie uma função recursiva chamada contagemRegressiva(n), que imprime os números de n até 0.
- Caso base: Quando n == 0, pare a recursão.
- Caso recursivo: Exiba n e chame contagemRegressiva(n - 1).

---

### Atividade 5 – Inverter uma String Recursivamente

- Crie uma função recursiva chamada inverterString(texto), que recebe uma string e a retorna invertida.
- Caso base: Se a string tem 1 ou 0 caracteres, retorne ela mesma.
- Caso recursivo: Pegue o último caractere e chame inverterString()
  para o restante da string.
