## Frontend Repository for our project in Large Sytems on Cphbusiness, PBA in software development (fall 2017).

## Github links of authors

[Frederik Larsen](https://github.com/lalelarsen)

[Anders Bjergfelt](https://github.com/andersbjergfelt)

[Emil Gräs](https://github.com/emilgras)

[Daniel Hillmann](https://github.com/hilleer)

## Notes

[Hacker news](https://news.ycombinator.com/)

In this project we are using Spring Framework

[Spring Framework](https://spring.io/)

The Spring Framework is an application framework and inversion of control container for the Java platform. The framework's core features can be used by any Java application,
but there are extensions for building web applications on top of the Java EE (Enterprise Edition) platform.

A particularly interesting module that it provides is Model-view-controller. The module is an HTTP- and servlet-based framework providing hooks for extension and customization
for web applications and RESTful (representational state transfer) Web services.

Another thing is that although it is possible to package this service as a traditional WAR file for deployment to an external application server,
you package everything in a single, executable JAR file, driven by a good old Java main() method. Along the way, you use Spring’s support for embedding the Tomcat servlet container as the HTTP runtime.

```java
package com.daef.hackernewsclone;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;


@Configuration
@ComponentScan
@EnableAutoConfiguration
@SpringBootApplication
public class HackernewsCloneApplication {

	public static void main(String[] args) {
		SpringApplication.run(HackernewsCloneApplication.class, args);
	}
        
    @RestController
    class GreetingController {

        @RequestMapping("/hello/{name}")
        String hello(@PathVariable String name) {
            return "Hello, " + name + "!";
        }
    }        
}
```
## Deploying Spring Boot Applications
The Maven build depends on Spring Boot started dependencies.
if you want to build a web application, then simple depend on the Spring Boot starter web dependency, like this:

```java
 <dependency> 
   <groupId>org.springframework.boot</groupId>
   <artifactId>spring-boot-starter-web</artifactId>
 </dependency>
```

For the purpose of demonstration, we’ll add in a RESTful Spring MVC controller as example.
```java
@RestController
class GreetingController {
    
    @RequestMapping("/hello/{name}")
    String hello(@PathVariable String name) {
        return "Hello, " + name + "!";
    }
```
Out of the box, Spring Boot uses a public static void main entry-point that launches an embedded web server for you.

If you use the Maven build (mvn clean install) provided by the Spring Boot Initialzr, you’ll get a fat jar. This jar is handy because it includes all the other dependencies and things like your web server inside the archive. You can give anybody this one .jar and they can run your entire Spring application with no fuss: 
no build tool required, 
no setup, 
no web server configuration, 
etc: just java -jar ...your.jar.


When you run your application, Spring Boot will detect that you have a Spring MVC controller and start up an embedded Apache Tomcat 7 instance, by default. 
You should be able to test the REST endpoint by opening up your browser and hitting [http://localhost:8080/hello/World](http://localhost:8080/hello/World)
