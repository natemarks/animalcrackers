package com.thiscantfail.animalcrackers;

import lombok.Getter;
import lombok.Setter;
import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.context.annotation.Configuration;

@Configuration
@ConfigurationProperties
public class AnimalcrackersConfigurationProperties {

    @Getter
    @Setter
    private String response;
}
