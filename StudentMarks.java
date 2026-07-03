/*
=====================================================
PRACTICAL: Student Marks using Array of Objects in Java
=====================================================

AIM:
- To write a Java program that stores marks of multiple students 
  and calculates total marks and percentage.

OBJECTIVE:
- To create a Student class with roll number, name, and marks.
- To accept details of multiple students using array of objects.
- To calculate total and percentage for each student.
- To display all student details in tabular format.

TOOLS:
- JDK 8+ (javac, java)
- Any IDE or text editor

ALGORITHM:
1) Create Student class with fields: rollNo, name, marks[].
2) Create methods to input details and calculate total & percentage.
3) In main(), read number of students n and number of subjects m.
4) Create array of Student objects.
5) For each object, input details and marks.
6) Calculate total and percentage.
7) Display student details in tabular form.

STEPS TO RUN:
- Save as: StudentMarks.java
- Compile: javac StudentMarks.java
- Run:     java StudentMarks

=====================================================
*/

import java.util.Scanner;

class Student {
    int rollNo;
    String name;
    int[] marks;
    int total;
    double percentage;

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
    }

    void displayDetails() {
        System.out.printf("%-10d %-15s %-10d %-10.2f%n", rollNo, name, total, percentage);
    }
}

public class StudentMarks {
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
        System.out.printf("%-10s %-15s %-10s %-10s%n", "RollNo", "Name", "Total", "Percentage");
        System.out.println("------------------------------------------");
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
Enter marks for Subject 1: 75
Enter marks for Subject 2: 80
Enter marks for Subject 3: 70

Enter details for Student 2
Enter Roll Number: 2
Enter Name: Ravi
Enter marks for Subject 1: 65
Enter marks for Subject 2: 60
Enter marks for Subject 3: 55

============= Student Report =============
RollNo     Name            Total      Percentage
------------------------------------------
1          Aman            225        75.00
2          Ravi            180        60.00

=================================================

RESULT:
- Successfully implemented program to store multiple student marks.
- Program calculates total and percentage for each student.
- Data is displayed in neat tabular format.
=================================================
*/
