package com.example.liquibasebug;

import lombok.SneakyThrows;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
public class LiquibaseBugApplication {

	@SneakyThrows
	public static void main(String[] args) {
		System.out.println("Waiting 20 seconds to make sure db is up");
		Thread.sleep(20000);
		SpringApplication.run(LiquibaseBugApplication.class, args);
	}
}
