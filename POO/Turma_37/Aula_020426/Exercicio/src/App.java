import java.util.Scanner;
public class App {
    public static void main(String[] args) throws Exception {

        Scanner sc = new Scanner(System.in);

        // Exercício 1
        Exercicio1 pessoa = new Exercicio1();

        pessoa.nome = "Lucas";
        pessoa.ano_atual = 2026;
        pessoa.ano_nascimento = 1996;
        pessoa.altura = 1.73;
        pessoa.peso = 76.0;

        System.out.println(pessoa.nome + " tem " + pessoa.idade() + " anos e imc igual a " + String.format("%.2f",pessoa.imc()));
        System.err.println("");

        // Exercício 2
        Exercicio2 valor = new Exercicio2();
        
        System.out.println("Digite um número: ");
        valor.numero = sc.nextInt();

        System.out.println("O número digitado é : " + valor.numero);
        System.out.println("O número antecessor de " + valor.numero +" é : " + valor.antecessor());
        System.out.println("O número sucessor de " + valor.numero +" é : " + valor.sucessor());
        System.err.println("");
     
        //Exercício 3
        String nome_pessoa_peso = "", nome_pessoa_altura = "";
        double maior_peso = 0, maior_altura = 0, media_altura = 0, media_peso = 0;

       Exercicio1[] pessoas = new Exercicio1[4];

        for(int i = 0; i < 4; i++) {

            pessoas[i] = new Exercicio1();

            System.out.println("Digite o nome da " + (i+1) + "ª Pessoa: ");
            pessoas[i].nome = sc.next();

            System.out.println("Digite altura da " + (i+1) + "ª Pessoa: ");
            pessoas[i].altura = sc.nextDouble();

            System.out.println("Digite o peso da " + (i+1) + "ª Pessoa: ");
            pessoas[i].peso = sc.nextDouble();

             if(maior_peso <= pessoas[i].peso){
                nome_pessoa_peso = pessoas[i].nome;
                maior_peso = pessoas[i].peso;
            }

            if(maior_altura <= pessoas[i].altura){
                nome_pessoa_altura = pessoas[i].nome;
                maior_altura = pessoas[i].altura;
            }

            media_altura += pessoas[i].altura;
            media_peso += pessoas[i].peso;
        }

        System.out.println(" -------------- ");
        System.out.println("");
        System.out.println("A pessoa com maior peso é " + nome_pessoa_peso +" com " + maior_peso +"Kg");
        System.out.println("A pessoa com maior altura é " + nome_pessoa_altura +" com " + maior_altura +"m");
        System.out.println("");

        System.out.println("A média de peso é: " +  String.format("%.2f",(media_peso/4)) +"Kg");
        System.out.println("A média de altura é: " +  String.format("%.2f",(media_altura/4)) +"Kg");
        
   
      
        //Exercício4
        int numero = 10;
        long fatorial = 1;

        for (int i = 1; i <= numero; i++) {
            
            fatorial *= i;
            System.out.println("O fatorial de " + i + " é: " + fatorial);
        }

        
        
        sc.close();
    }
}
