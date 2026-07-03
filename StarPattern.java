/*
=====================================================
PRACTICAL: Star Pattern in Java
=====================================================

AIM:
- To write a Java program that prints a simple star pattern of 5 rows.

OBJECTIVE:
- To use nested loops in Java.
- To display stars in increasing order row by row.
- To understand control of rows and columns using loops.

TOOLS:
- JDK 8+ (javac, java)
- Any IDE or text editor

ALGORITHM:
1) Import Scanner class (optional if dynamic input).
2) Fix number of rows = 5.
3) Loop i = 1 to 5:
       Inner loop j = 1 to i:
           print "*"
       After inner loop, print new line.
4) End program.

STEPS TO RUN:
- Save as: StarPattern.java
- Compile: javac StarPattern.java
- Run:     java StarPattern

=====================================================
*/

public class StarPattern {
    public static void main(String[] args) {
        int rows = 5;

        for (int i = 1; i <= rows; i++) {
            for (int j = 1; j <= i; j++) {
                System.out.print("* ");
            }
            System.out.println();
        }
    }
}

/*
================= SAMPLE OUTPUT =================

* 
* * 
* * * 
* * * * 
* * * * * 

=================================================

RESULT:
- Successfully implemented star pattern program in Java.
- Program uses nested loops to display stars in 5 rows.
=================================================
*/
