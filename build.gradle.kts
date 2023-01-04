plugins {
	java
	war
	id("org.springframework.boot") version "2.7.8-SNAPSHOT"
	id("io.spring.dependency-management") version "1.0.15.RELEASE"
}

group = "org.popcon"
version = "0.0.1-SNAPSHOT"
java.sourceCompatibility = JavaVersion.VERSION_11

configurations {
	compileOnly {
		extendsFrom(configurations.annotationProcessor.get())
	}
}

repositories {
	mavenCentral()
	maven { url = uri("https://repo.spring.io/milestone") }
	maven { url = uri("https://repo.spring.io/snapshot") }
}

dependencies {
	implementation("org.mybatis.spring.boot:mybatis-spring-boot-starter:3.0.1")
	implementation("org.springframework.boot:spring-boot-starter-data-jpa")
	implementation("org.springframework.boot:spring-boot-starter-web")
	implementation("org.springframework.boot:spring-boot-starter-jdbc")
	implementation("org.apache.tomcat.embed:tomcat-embed-jasper")
	implementation("javax.servlet:jstl")
	implementation("org.apache.directory.studio:org.apache.commons.io:2.4")
	implementation("org.springframework.boot:spring-boot-starter-thymeleaf")

	compileOnly("org.projectlombok:lombok")
	testImplementation("org.projectlombok:lombok")
	developmentOnly("org.springframework.boot:spring-boot-devtools")
	annotationProcessor("org.projectlombok:lombok")
	providedRuntime("org.springframework.boot:spring-boot-starter-tomcat")
	testImplementation("org.springframework.boot:spring-boot-starter-test")
	runtimeOnly ("com.oracle.database.jdbc:ojdbc8")

	implementation("org.springframework.security:spring-security-core")
	implementation("org.springframework.security:spring-security-web")
	implementation("org.springframework.security:spring-security-config")


}

tasks.withType<Test> {
	useJUnitPlatform()
}
