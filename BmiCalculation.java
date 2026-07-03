
import java.util.Scanner;

public class BmiCalculation {

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        double height;
        double weight;
        if (args.length >= 2) {
            height = Double.parseDouble(args[0]);
            weight = Double.parseDouble(args[1]);
            if (height <= 0 || weight <= 0) throw new IllegalArgumentException("Height and weight must be positive");
        } else {
            height = readPositiveDouble(scanner);
            weight = readPositiveDouble(scanner);
        }

        double bmi = weight / (height * height);
        System.out.printf("%.2f%n", bmi);
        scanner.close();
    }

    private static double readPositiveDouble(Scanner scanner) {
        while (true) {
            if (!scanner.hasNext()) throw new IllegalStateException("No more input");
            String token = scanner.next();
            try {
                double v = Double.parseDouble(token);
                if (v > 0) return v;
                // continue prompting silently by looping
            } catch (NumberFormatException e) {
                // ignore and continue reading
            }
        }
    }
}
