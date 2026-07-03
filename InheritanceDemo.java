/*
=====================================================
PRACTICAL: Inheritance (Single & Multilevel) in Java
=====================================================

AIM:
- To write a Java program that demonstrates single and multilevel inheritance.

OBJECTIVE:
- To understand reusability of code using inheritance.
- To show how properties and methods of a parent class are accessible to child classes.
- To demonstrate both single-level and multilevel inheritance.

TOOLS:
- JDK 8+ (javac, java)
- Any IDE or text editor

ALGORITHM:
1) Create a base class Person with method display().
2) Create a derived class Student (inherits Person) [Single Inheritance].
3) Create another derived class CollegeStudent (inherits Student) [Multilevel Inheritance].
4) Each class should have its own data and method.
5) In main(), create objects of Student and CollegeStudent.
6) Display their details using inherited methods.

STEPS TO RUN:
- Save as: InheritanceDemo.java
- Compile: javac InheritanceDemo.java
- Run:     java InheritanceDemo

=====================================================
*/

class Person {
    String name;
    int age;

    void setPerson(String name, int age) {
        this.name = name;
        this.age = age;
    }

    void displayPerson() {
        System.out.println("Name: " + name);
        System.out.println("Age: " + age);
    }
}

class Student extends Person {
    String course;

    void setStudent(String name, int age, String course) {
        setPerson(name, age);
        this.course = course;
    }

    void displayStudent() {
        displayPerson();
        System.out.println("Course: " + course);
    }
}

class CollegeStudent extends Student {
    String college;

    void setCollegeStudent(String name, int age, String course, String college) {
        setStudent(name, age, course);
        this.college = college;
    }

    void displayCollegeStudent() {
        displayStudent();
        System.out.println("College: " + college);
    }
}

public class InheritanceDemo {
    public static void main(String[] args) {
        // Single Inheritance Example
        System.out.println("=== Single Inheritance ===");
        Student s1 = new Student();
        s1.setStudent("Amit", 20, "BCA");
        s1.displayStudent();

        System.out.println();

        // Multilevel Inheritance Example
        System.out.println("=== Multilevel Inheritance ===");
        CollegeStudent cs1 = new CollegeStudent();
        cs1.setCollegeStudent("Rohit", 21, "MCA", "Delhi University");
        cs1.displayCollegeStudent();
    }
}

/*
================= SAMPLE OUTPUT =================

=== Single Inheritance ===
Name: Amit
Age: 20
Course: BCA

=== Multilevel Inheritance ===
Name: Rohit
Age: 21
Course: MCA
College: Delhi University

=================================================

RESULT:
- Successfully demonstrated Single Inheritance using Person → Student.
- Successfully demonstrated Multilevel Inheritance using Person → Student → CollegeStudent.
=================================================
*/
