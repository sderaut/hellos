package hello_Java;

/**
 * This is the Javadoc for a command line Hello World program in Java.
 * @author sde
 */
public class HelloTemplate {

    /**
     * @param args does little with the command line arguments
     */
    public static void main(String[] args) {
        for (String arg : args) {
            if (arg.equals("-h")) {
                System.out.println("This program provides little help yet.");
                System.exit(0);
            }
        }
        
        System.out.println("\"Hello\" from Java.");
        
    }
}
