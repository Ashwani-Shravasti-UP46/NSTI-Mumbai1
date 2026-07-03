/*
=====================================================
PRACTICAL: Multithreaded Program using Runnable
=====================================================

AIM:
- To write a multithreaded Java program using Runnable interface 
  to print numbers from 1 to 10.

OBJECTIVE:
- To implement Runnable interface in a class.
- To override run() method to print numbers.
- To create and start threads using Thread class.
- To demonstrate basic concept of multithreading in Java.

TOOLS:
- JDK 8+ (javac, java)
- Any IDE or text editor

ALGORITHM:
1) Create a class NumberPrinter that implements Runnable.
2) Define run() method → loop from 1 to 10 and print numbers.
3) In main(), create object of NumberPrinter.
4) Create two Thread objects with same Runnable.
5) Start both threads to run concurrently.
6) Observe multithreaded output.
7) End program.

STEPS TO RUN:
- Save as: NumberPrinterDemo.java
- Compile: javac NumberPrinterDemo.java
- Run:     java NumberPrinterDemo

=====================================================
*/

class NumberPrinter implements Runnable {
    private String threadName;

    NumberPrinter(String name) {
        this.threadName = name;
    }

    public void run() {
        for (int i = 1; i <= 10; i++) {
            System.out.println(threadName + " prints: " + i);
            try {
                Thread.sleep(200); // pause to simulate concurrency
            } catch (InterruptedException e) {
                System.out.println(threadName + " interrupted.");
            }
        }
    }
}

public class NumberPrinterDemo {
    public static void main(String[] args) {
        NumberPrinter np1 = new NumberPrinter("Thread-1");
        NumberPrinter np2 = new NumberPrinter("Thread-2");

        Thread t1 = new Thread(np1);
        Thread t2 = new Thread(np2);

        t1.start();
        t2.start();
    }
}

/*
================= SAMPLE OUTPUT =================

Thread-1 prints: 1
Thread-2 prints: 1
Thread-1 prints: 2
Thread-2 prints: 2
Thread-1 prints: 3
Thread-2 prints: 3
...
Thread-1 prints: 10
Thread-2 prints: 10

(Note: Order may vary due to multithreading.)

=================================================

RESULT:
- Successfully implemented multithreading in Java using Runnable interface.
- Program prints numbers from 1 to 10 concurrently by multiple threads.
=================================================
*/
