/**
 * 
 */
package com.gtids.mint.util;

/**
 * @author Acharya K
 *
 */
public class StringUtil {

	public static String generateRandom(int noChars) {
		char[] password = new char[noChars];
		int seedChar = 'A';
		int randomInt = 0;
		for (int i = 0; i < noChars; i++) {
			randomInt = (int) (Math.random() * 3);
			switch (randomInt) {
			case 0:
				seedChar = '0' + (int) (Math.random() * 10);
				break;
			case 1:
				seedChar = '0' + (int) (Math.random() * 10);
				break;
			case 2:
				seedChar = '0' + (int) (Math.random() * 10);
				break;
			/*
			 * case 1: seedChar = 'a' + (int) (Math.random() * 26); break; case 2: seedChar
			 * = 'A' + (int) (Math.random() * 26); break;
			 */
			}
			password[i] = (char) seedChar;
		}
		return new String(password);
	}

	public static String generateRandomUnique(int noChars) {
		char[] password = new char[noChars];
		int seedChar = 'A';
		int randomInt = 0;
		for (int i = 0; i < noChars; i++) {
			randomInt = (int) (Math.random() * 3);
			switch (randomInt) {
			case 0:
				seedChar = '0' + (int) (Math.random() * 10);
				break;
			case 1:
				seedChar = 'A' + (int) (Math.random() * 26);
				break;
			}
			password[i] = (char) seedChar;
		}
		return new String(password);
	}
}
