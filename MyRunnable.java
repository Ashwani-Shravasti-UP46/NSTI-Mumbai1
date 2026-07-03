
class MyRunnable implements Runnable {      

    private String name;

    public MyRunnable(String name) {
        this.name = name;
    }

    public void run() {
        for (int i = 0; i < 5; i++) {
            System.out.println(name + " - Count: " + i);
            try {
                Thread.sleep(500);
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
        }
        System.out.println(name + " finished!");
    }

    public static void main(String[] args) {
        Thread t1 = new Thread(new MyRunnable("Thread-1"));
        Thread t2 = new Thread(new MyRunnable("Thread-2"));

        t1.start();
        t2.start();
    }
}
