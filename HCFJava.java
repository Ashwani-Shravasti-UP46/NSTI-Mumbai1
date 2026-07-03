
import java.util.Scanner;

public class HCFJava {

    // Method to find HCF (GCD) using Euclidean algorithm
    public static int findHCF(int a, int b) {
        // Make both numbers positive
        a = Math.abs(a);
        b = Math.abs(b);

        // Euclidean algorithm
        while (b != 0) {
            int temp = b;
            b = a % b;
            a = temp;
        }
        return a;
    }

    // Alternative method using recursion
    public static int findHCFRecursive(int a, int b) {
        if (b == 0) {
            return a;
        }
        return findHCFRecursive(b, a % b);
    }

    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        System.out.println("=== HCF (Highest Common Factor) / GCD Calculator ===");
        System.out.print("Enter first number: ");
        int num1 = sc.nextInt();

        System.out.print("Enter second number: ");
        int num2 = sc.nextInt();

        int hcf = findHCF(num1, num2);
        System.out.println("\nHCF/GCD of " + num1 + " and " + num2 + " is: " + hcf);

        sc.close();
    }
}
