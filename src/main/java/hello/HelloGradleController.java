package hello;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController("/")
public class HelloGradleController {

    @GetMapping
    public String helloGradle() {
        return "Hello world! I am a Java application and was built with Gradle.";
    }

}