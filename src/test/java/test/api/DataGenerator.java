package test.api;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;

import com.ibm.icu.text.SimpleDateFormat;

import net.datafaker.Faker;

public class DataGenerator {

	/*
	 * In Karate we can call Java methods each method should be static for each data
	 * type we need to generate separate methods
	 */

	public static String getEmail() {
		Faker faker = new Faker();
		String email = faker.name().firstName() + faker.name().lastName() + "@tekschool.us";
		return email;
	}

	public static String getFirstName() {
		Faker faker = new Faker();
		String firstName = faker.name().firstName();
		return firstName;

	}

	public static String getLastName() {
		Faker faker = new Faker();
		String lastName = faker.name().lastName();
		return lastName;
	}

	public static String getTitle() {
		Faker faker = new Faker();
		return faker.name().prefix().toUpperCase();
	}

	public static String getGender() {
		Faker faker = new Faker();
		return faker.dog().gender().toUpperCase();
	}

	public static String getDOB() {
		Faker faker = new Faker();
		Date date = faker.date().birthday();
		SimpleDateFormat formatDate = new SimpleDateFormat("yyyy-MM-dd");
		return formatDate.format(date);
	}

	public static String getEmploymentStatus() {
		Faker faker = new Faker();
		return faker.job().position();
	}

	public static String getMaritalStatus() {
		ArrayList<String> maritalStatus = new ArrayList<String>();
		maritalStatus.add("SINGLE");
		maritalStatus.add("MARRIED");
		maritalStatus.add("DIVORCED");
		maritalStatus.add("WIDOW");
		maritalStatus.add("WIDOWER");
		Collections.shuffle(maritalStatus);
		return maritalStatus.get(0);
	}

	public static String getMake() {
		Faker faker = new Faker();
		return faker.vehicle().make();
	}

	public static String getModel() {
		Faker faker = new Faker();
		return faker.vehicle().model();
	}

}