public class Lasagna {
    private static final int expectedMinutes = 40, preparationTimePerLayer = 2;
    // define the 'expectedMinutesInOven()' method
    public int expectedMinutesInOven() {
        return expectedMinutes;
    }

    // define the 'remainingMinutesInOven()' method
    public int remainingMinutesInOven(int actualMinutesInOven) {
        return (expectedMinutesInOven() - actualMinutesInOven);
    }

    // define the 'preparationTimeInMinutes()' method
    public int preparationTimeInMinutes(int numberOfLayers) {
        return (numberOfLayers * preparationTimePerLayer);
    }

    // define the 'totalTimeInMinutes()' method
    public int totalTimeInMinutes(int numberOfLayers, int actualMinutesInOven) {
        return (preparationTimeInMinutes(numberOfLayers) + actualMinutesInOven);
    }

    public static void main(String[] args) {
        Lasagna lasagna = new Lasagna();
        int actualMinutesInOven = 30;
        int numberOfLayers = 2;
        // Expected minutes in oven
        System.out.println("Expected minutes in oven: " + lasagna.expectedMinutesInOven());

        // Remaining minutes in oven
        System.out.println("Remaining minutes in oven: " + lasagna.remainingMinutesInOven(actualMinutesInOven));

        // Preparation time in minutes
        System.out.println("Preparation time in minutes: " + lasagna.preparationTimeInMinutes(numberOfLayers));

        // Total time in minutes
        System.out.println("Total time in minutes: " + lasagna.totalTimeInMinutes(numberOfLayers, actualMinutesInOven));
    }
}