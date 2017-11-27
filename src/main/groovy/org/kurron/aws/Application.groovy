package org.kurron.aws

import org.springframework.boot.SpringApplication
import org.springframework.boot.autoconfigure.SpringBootApplication
import org.springframework.context.annotation.Bean

@SpringBootApplication
class Application {

	static void main(String[] args) {
		SpringApplication.run Application, args
	}

	@Bean
	AwsInfoContributor awsInfoContributor() {
		new AwsInfoContributor()
	}
}
