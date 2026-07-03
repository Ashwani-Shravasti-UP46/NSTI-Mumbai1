/*
=====================================================
PRACTICAL: Student Grade Calculation in Java
=====================================================

AIM:
- To write a Java program that calculates total, percentage,
  and grade of multiple students.

OBJECTIVE:
- To create a Student class with roll number, name, and marks.
- To calculate total and percentage of marks.
- To assign grade based on percentage:
     • >= 75 → Grade A
     • >= 60 → Grade B
     • >= 40 → Grade C
     • < 40 → Fail
- To display student report in tabular form.

TOOLS:
- JDK 8+ (javac, java)
- Any IDE or text editor

ALGORITHM:
1) Create Student class with fields: rollNo, name, marks[], total, percentage, grade.
2) Input student details and marks using array of objects.
3) Calculate total = sum of marks.
4) Calculate percentage = total / subjects.
5) Assign grade according to rules.
6) Display Roll No, Name, Total, Percentage, and Grade.
7) End program.

STEPS TO RUN:
- Save as: StudentGrade.java
- Compile: javac StudentGrade.java
- Run:     java StudentGrade

=====================================================
*/

import java.util.Scanner;

class Student {
    int rollNo;
    String name;
    int[] marks;
    int total;
    double percentage;
    String grade;

    Student(int subjects) {
        marks = new int[subjects];
    }

    void inputDetails(Scanner sc, int subjects) {
        System.out.print("Enter Roll Number: ");
        rollNo = sc.nextInt();
        sc.nextLine(); // consume newline
        System.out.print("Enter Name: ");
        name = sc.nextLine();

        total = 0;
        for (int i = 0; i < subjects; i++) {
            System.out.print("Enter marks for Subject " + (i + 1) + ": ");
            marks[i] = sc.nextInt();
            total += marks[i];
        }
        percentage = (double) total / subjects;

        if (percentage >= 75) {
            grade = "A";
        } else if (percentage >= 60) {
            grade = "B";
        } else if (percentage >= 40) {
            grade = "C";
        } else {
            grade = "Fail";
        }
    }

    void displayDetails() {
        System.out.printf("%-10d %-15s %-10d %-12.2f %-10s%n",
                          rollNo, name, total, percentage, grade);
    }
}

public class StudentGrade {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        System.out.print("Enter number of students: ");
        int n = sc.nextInt();
        System.out.print("Enter number of subjects: ");
        int m = sc.nextInt();

        Student[] students = new Student[n];
        for (int i = 0; i < n; i++) {
            System.out.println("\nEnter details for Student " + (i + 1));
            students[i] = new Student(m);
            students[i].inputDetails(sc, m);
        }

        System.out.println("\n============= Student Report =============");
        System.out.printf("%-10s %-15s %-10s %-12s %-10s%n",
                          "RollNo", "Name", "Total", "Percentage", "Grade");
        System.out.println("---------------------------------------------------------");
        for (Student s : students) {
            s.displayDetails();
        }

        sc.close();
    }
}

/*
================= SAMPLE OUTPUT =================

Enter number of students: 2
Enter number of subjects: 3

Enter details for Student 1
Enter Roll Number: 1
Enter Name: Aman
Enter marks for Subject 1: 80
Enter marks for Subject 2: 70
Enter marks for Subject 3: 75

Enter details for Student 2
Enter Roll Number: 2
Enter Name: Ravi
Enter marks for Subject 1: 35
Enter marks for Subject 2: 40
Enter marks for Subject 3: 38

============= Student Report =============
RollNo     Name            Total      Percentage   Grade     
---------------------------------------------------------
1          Aman            225        75.00        A         
2          Ravi            113        37.67        Fail      

=================================================

RESULT:
- Successfully implemented program for student grade calculation.
- Program calculates total, percentage, and assigns correct grade.
=================================================
*/
