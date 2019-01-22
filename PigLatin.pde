public void setup() {
	// String[] list = loadStrings("words.txt");
	// ArrayList <String> lines = new ArrayList <String>();
	// for (String word: list) {
	// 	lines.add(word);
	// }
	// for (String temp1: lines) {
	// 	if (temp1.contains(" ")) {
	// 		String[] temp2 = split(temp1, ' ');
	// 		for (int i = 0; i < temp2.length - 1; i++) {
	// 			lines.set(lines.indexOf(temp1), temp2[i]);
	// 			lines.add(lines.indexOf(temp1) + 1, temp2[i+1]);
	// 		}
	// 	}
	// 	// lines.add(temp1);
	// }
	// System.out.println("there are " + lines.size() + " lines");
	// for (int i = 0 ; i < lines.size(); i++) {
	// 	System.out.println(pigLatin(lines.get(i)));
	// }

	String[] lines = loadStrings("words.txt");
	System.out.println("there are " + lines.length + " lines");
	for (int i = 0 ; i < lines.length; i++) {
		System.out.println(pigLatin(lines[i]));
	}
}

public void draw() {
    //not used
}

public int findFirstVowel(String sWord) {
	//precondition: sWord is a valid String of length greater than 0.
	//postcondition: returns the position of the first vowel in sWord.  If there are no vowels, returns -1
	char[] vowels = new char[]{'a','e','i','o','u'};
	if (sWord.length() > 0) {
		for (int i = 0; i < sWord.length(); i++) {
			for (char temp: vowels) {
				if (sWord.charAt(i) == temp) {
					return i;
				}
			}
		}
	}

	return -1;
}

public String pigLatin(String sWord) {
	//precondition: sWord is a valid String of length greater than 0
	//postcondition: returns the pig latin equivalent of sWord

	if (sWord.length() > 0) {
		if (findFirstVowel(sWord) == -1) {
			// println(findFirstVowel(sWord));
			return sWord + "ay";
		}
		if (findFirstVowel(sWord) == 0) {
			return sWord + "way";
		}
		if (findFirstVowel(sWord) > 0 && (findFirstVowel(sWord) != 0 || findFirstVowel(sWord) != 1)) {
			// println(findFirstVowel(sWord));
			return sWord.substring(findFirstVowel(sWord)) + sWord.substring(0,findFirstVowel(sWord)) + "ay";
		}
		
	}
	return "ERROR!";
}
