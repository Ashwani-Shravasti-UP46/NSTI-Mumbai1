/*
=====================================================
PRACTICAL: Method Overloading and Overriding in Java
=====================================================
*/

class Calculator {
    // Overloaded method for integers
    int add(int a, int b) {
        return a + b;
    }

    // Overloaded method for doubles
    double add(double a, double b) {
        return a + b;
    }

    // Overloaded method for three integers
    int add(int a, int b, int c) {
        return a + b + c;
    }

    // Overloaded method for long values
    long add(long a, long b) {
        return a + b;
    }
}

class Animal {
    protected String name;

    public Animal(String name) {
        this.name = name;
    }

    void sound() {
        System.out.println(name + " makes a sound");
    }

    void eat() {
        System.out.println(name + " is eating");
    }
}

class Dog extends Animal {
    public Dog(String name) {
        super(name);
    }

    @Override
    void sound() {
        System.out.println(name + " barks: Woof! Woof!");
    }

    @Override
    void eat() {
        System.out.println(name + " eats dog food");
    }

    void fetch() {
        System.out.println(name + " fetches the ball");
    }
}

class Cat extends Animal {
    public Cat(String name) {
        super(name);
    }

    @Override
    void sound() {
        System.out.println(name + " meows: Meow! Meow!");
    }

    @Override
    void eat() {
        System.out.println(name + " eats cat food");
    }

    void scratch() {
        System.out.println(name + " scratches the furniture");
    }
}

public class OverloadOverrideDemo {
    public static void main(String[] args) {
        System.out.println("========================================");
        System.out.println("METHOD OVERLOADING DEMONSTRATION");
        System.out.println("========================================\n");

        Calculator calc = new Calculator();
        System.out.println("Adding integers (10 + 20): " + calc.add(10, 20));
        System.out.println("Adding doubles (5.5 + 4.5): " + calc.add(5.5, 4.5));
        System.out.println("Adding three integers (10 + 20 + 30): " + calc.add(10, 20, 30));
        System.out.println("Adding long values (100L + 200L): " + calc.add(100L, 200L));

        System.out.println("\n========================================");
        System.out.println("METHOD OVERRIDING DEMONSTRATION");
        System.out.println("========================================\n");

        // Base class instance
        Animal animal = new Animal("Generic Animal");
        animal.sound();
        animal.eat();

        System.out.println("\n--- Dog Instance ---");
        Dog dog = new Dog("Buddy");
        dog.sound();
        dog.eat();
        dog.fetch();

        System.out.println("\n--- Cat Instance ---");
        Cat cat = new Cat("Whiskers");
        cat.sound();
        cat.eat();
        cat.scratch();

        System.out.println("\n--- Polymorphism Example ---");
        Animal dog2 = new Dog("Max");
        Animal cat2 = new Cat("Mittens");

        dog2.sound();
        dog2.eat();

        cat2.sound();
        cat2.eat();

        System.out.println("\n========================================");
        System.out.println("PROGRAM COMPLETED SUCCESSFULLY");
        System.out.println("========================================");
    }
}
