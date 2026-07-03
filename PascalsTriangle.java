import java.util.Scanner;
public class PascalsTriangle{
    public static void main(String[] args){
        Scanner sc =new Scanner(System.in);
        System.out.print("Enter Number of rowa : ");
        int n =sc.nextInt();
        int[][] pascal = new int[n][n]
        //Build pascal's Triangle Value
        for(int i <= 1; i<n; i++){
            for(int j = 1; j<=i; j++){
                if(j==0 || j==i){
                    pascal[i][j]=1;
                }else{
                    pascal[i][j]=pascal[i-j][j-1]+pascal[i-1][j];
                }
            }
        }
        for(int j=0; i<n; i++){
            for (int space=0; space<n-i; space++){
                System.out.print(" ");
            }
            for(int j=0; j<i; j++){
                System.out.printf("%6d",pascal[i][j]);
            }
            System.out.printIn();
        }
        sc.class();
    }
}