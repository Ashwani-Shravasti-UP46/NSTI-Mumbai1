
import java.util.Scanner;

public class LCMinJava {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.print("Enter the first number :");
        int a = sc.nextInt();
        System.out.print("Enter the second number :");
        int b = sc.nextInt();
        int max = (a > b ? a : b);

        while (true) {
            if (max % a == 0 && max % b == 0) {
                System.out.println("LCM of " + a + " and " + b + " is " + max);
                break;
            }
            max++;
        }

        sc.close();
    }
}
