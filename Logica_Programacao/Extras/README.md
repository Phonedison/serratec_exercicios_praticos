# Exercício de Lógica de Programação – Controle de Estoque

Desenvolva um programa simples para simular o controle de estoque de um produto.

### Considere que:

- Existe uma quantidade fixa N de produtos disponíveis em estoque.
- Cada produto possui um preço unitário X (em reais).

### O programa deve:

1. Informar ao usuário a quantidade disponível em estoque e o preço unitário.
2. Solicitar que o usuário digite a quantidade que deseja comprar.
3. Validar o valor informado:

- Se a quantidade for menor que zero, exibir:
  - "Quantidade inválida. Não é possível comprar um valor negativo."

- Se a quantidade for maior que a disponível em estoque, exibir:
  - "Quantidade indisponível em estoque."

- Caso seja um valor válido:
  - Calcular o valor total da compra.
  - Exibir o valor total ao usuário.

### Regra de Desconto:

- Se o valor total da compra for maior que R$ 100,00, aplicar 10% de desconto.
- Fórmula para cálculo de porcentagem:
  - Desconto = ValorTotal × (Porcentagem / 100)
    > Exemplo para 10%:
    > Desconto = ValorTotal × (10 / 100)
    > ValorFinal = ValorTotal - Desconto

### O programa deve exibir:

- O valor total da compra.
- O valor do desconto (se houver).
- O valor final a pagar.

### Objetivo do Exercício:

- Praticar entrada e saída de dados.
- Estruturas condicionais (if / else).
- Operações matemáticas.
- Validação de dados.
