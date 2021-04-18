import java.text.NumberFormat;
import java.util.Scanner;

public class NumberToWordsConverter {

public static final String[] units = { "Zero", "One", "Two", "Three", "Four",
"Five", "Six", "Seven", "Eight", "Nine", "Ten", "Eleven", "Twelve",
"Thirteen", "Fourteen", "Fifteen", "Sixteen", "Seventeen",
"Eighteen", "Nineteen" };

public static final String[] tens = { 
		"", 		// 0
		"",			// 1
		"Twenty", 	// 2
		"Thirty", 	// 3
		"Forty", 	// 4
		"Fifty", 	// 5
		"Sixty", 	// 6
		"Seventy",	// 7
		"Eighty", 	// 8
		"Ninety" 	// 9
};

public static String convert(final int n) {
	
	if (n < 20) {
		return units[n];
	}

	if (n < 100) {
		return tens[n / 10] + ((n % 10 != 0) ? " " : "") + units[n % 10];
	}

	if (n < 1000) {
		return units[n / 100] + " Hundred" + ((n % 100 != 0) ? " " : "") + convert(n % 100);
	}

	if (n < 1000000) {
		return convert(n / 1000) + " Thousand" + ((n % 10000 != 0) ? " " : "") + convert(n % 1000);
	}

	if (n <= 100000000) {
		return convert(n / 1000000) + " Million" + ((n % 100000 != 0) ? " " : "") + convert(n % 100000);
	}
	 else if (n > 100000000)
        System.out.println("Input must be less than 100 million");
	return  "";
}

public static void main(final String[] args) {

	int n;
	Scanner s=new Scanner(System.in);
    System.out.print("Enter a number to convert into word format= ");
	System.out.print(new NumberToWordsConverter().convert(s.nextInt()));
}
}