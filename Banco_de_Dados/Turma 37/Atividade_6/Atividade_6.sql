--- ATIVIDADE 6 ---

/*
1. Crie um índice na tabela livro para melhorar a busca pelo campo titulo.
*/

  -- Cria um CAMINHO para onde deve ser feito a 'pesquisa'
  CREATE INDEX index_livro_titulo ON livro (titulo);

  -- LISTA TODOS OS VALORES relacionado ao index INFORMADO
  SELECT *
  FROM pg_indexes --> pg_indexes : localização pardão do index criado
  WHERE indexname = 'index_livro_titulo'; --> indexname : nome da index
  ---
  EXPLAIN ANALYZE --> Comando para verificar a query plan do index criado
    -- Utiliza o método padrão para verificar se foi ou não utilizado
    SELECT * FROM livro WHERE titulo = 'O Hobbit'



/*
 2. Crie um índice na tabela emprestimo para otimizar a busca por data_emprestimo. 
*/


  CREATE INDEX index_data_emprestimo ON emprestimo (data_emprestimo);

  EXPLAIN ANALYZE
    SELECT * FROM emprestimo WHERE data_emprestimo = '2026-03-02'


/*
3. Crie uma VIEW chamada vw_historico_emprestimos que exiba o nome do usuário, título do livro, data do empréstimo e data de devolução. 
*/


  --> Cria a view w_historico_emprestimos
  CREATE VIEW vw_historico_emprestimos AS 
    --> Seleciona os campos necessario  
    SELECT 
      usr.nome AS cliente, --> nome de cliente
      lvr.titulo AS livro, --> titulo do livro
      emp.data_emprestimo AS emprestimo, --> data do emprestimo do livro
      emp.data_devolucao AS devolucao --> data da devolução do livro
    FROM emprestimo emp --> com base na tabela emprestimo
    JOIN livro lvr --> 'combina' os dados da tabela livro com emprestimo...
      ON lvr.id_livro = emp.id_livro --> com base no id_livro de ambas as tabelas
    JOIN usuario usr --> 'combina' os dados da tabelea usuario com emprestimo...
      ON usr.id_usuario = emp.id_usuario;--> com base no id_usuario de ambas as tabelas


  SELECT * FROM vw_historico_emprestimos;

  /*
   4. Explique como um índice pode melhorar a performance de uma consulta e quais são os impactos negativos de usar muitos índices. 
  */

  /*
    Os índices ajudam a acelerar as consultas no banco, evitando a leitura completa das tabelas, tornando buscas, ordenações e junções mais rápidas, mas vale ressaltar que, o índice pode prejudicar o desempenho, deixam inserções, atualizações e exclusões mais lentas, ocupam mais espaço e podem aumentar a necessidade de manutenção.
  */