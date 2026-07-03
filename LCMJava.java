
import java.util.Scanner;

public class LCMJava {

    // Method to find GCD using Euclidean algorithm
    public static int findGCD(int a, int b) {
        while (b != 0) {
            int temp = b;
            b = a % b;
            a = temp;
        }
        return a;
    }

    // Method to find LCM using formula: LCM(a,b) = (a*b)/GCD(a,b)
    public static int findLCM(int a, int b) {
        return (a * b) / findGCD(a, b);
    }

    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        System.out.println("=== LCM (Least Common Multiple) Calculator ===");
        System.out.print("Enter first number: ");
        int num1 = sc.nextInt();

        System.out.print("Enter second number: ");
        int num2 = sc.nextInt();

        int lcm = findLCM(num1, num2);
        System.out.println("\nLCM of " + num1 + " and " + num2 + " is: " + lcm);

        sc.close();
    }
}
