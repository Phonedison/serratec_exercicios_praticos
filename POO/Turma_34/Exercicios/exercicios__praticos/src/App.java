
import java.util.Scanner;

public class App {
    //Declarando classe para leitura de valor por parte de usuário
    
    public static void main(String[] args) throws Exception {
        exercicio.exercicio_1();
    }
    
    /*
    1. Olá Mundo personalizado
    
    - Peça o nome do usuário
    - Exiba: `Olá, [nome]! Seja bem-vindo.`
    */ 
   public class exercicio {
    public static void exercicio_1() throws Exception {
        // Criando um objeto Scanner para ler a entrada do usuário
        Scanner sc = new Scanner(System.in);
        // Solicitando ao usuário que digite seu nome
        System.out.println("Digite seu nome: ");
        // Lendo o nome do usuário e armazenando em uma variável
        String nome = sc.nextLine();
        // Exibindo a mensagem personalizada de boas-vindas
        System.out.println("Olá, " + nome + "! Seja bem-vindo.");
        }


    /*
    2. Soma de dois números
    - Peça dois números ao usuário
    - Mostre a soma deles
    */ 

    public static void exercicio_2() throws Exception {
         int[] numeroArray = new int[2];
       Scanner sc = new Scanner(System.in);
       
       for (int i = 0; i < 2; i++) {
       System.out.println("Digite o"+ ( i + 1 ) +"º número: ");
        numeroArray[i] = sc.nextInt();
       }

        }
    }
}