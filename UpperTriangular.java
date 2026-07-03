import java.util.Scanner;

public class UpperTriangular{
    public static void main(String[] args){
        Scanner scanner = new Scanner(System.in);
      int m,n;
      System.out.print("Enter the Row Limit (m):");;
      m = scanner.nextInt();
      System.out.print("Enter the Column Limit (n):");
      n = scanner.nextInt();
        if(m !=n){
            System.err.println("Please enter a square Matrix (Rowa and Column Limits must be the same). ");
            scanner.close();
            return;

        } 
        int[][] array = new int [m][n];
        System.err.println("Enter the Elements of the Matrix :");
        for (int i =0; i<m; i++){
            for (int j=0; j<n; j++){
                System.out.print("Enter the Element at Array: ");
                array[i][j] = scanner.nextInt();
            }
            }
            System.err.println("The Upper Triangular Elements are:");
            for(int i= 0; i<m; i++){
                for(int j=0; j<n; j++){
                    if(j>=i){
                        System.out.print(array[i][j] + " ");
                    }else{
                        System.out.print("");
                    }
                }
                System.err.println();

            }
            scanner.close();
        }
    }
