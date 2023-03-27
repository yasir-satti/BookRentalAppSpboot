package com.project.bookrentalappspboot;

import jakarta.inject.Inject;
import org.junit.Before;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.junit.runner.RunWith;
import org.mockito.InjectMocks;
import org.mybatis.spring.boot.test.autoconfigure.AutoConfigureMybatis;
import org.mybatis.spring.boot.test.autoconfigure.MybatisTest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.junit.jupiter.SpringExtension;
import org.springframework.test.context.junit4.SpringRunner;

import java.util.List;


import static org.assertj.core.api.Assertions.assertThat;

@RunWith(SpringRunner.class)
@MybatisTest
public class DBIntegrationTest {

//    @Inject
    @Autowired
    private RegistrationMapper registrationMapper;

//    private RegistrationService registrationService;

    @BeforeEach
    public void insertRecord() {
        RegistrationRequest registrationRequest = new RegistrationRequest();
        registrationRequest.setFirstName("Yasir");
        registrationRequest.setMiddleNames("Kamal Mohamed Hamad");
        registrationRequest.setSurName("Satti");
//        registrationRequest.setDateOfBirth(06/04/1972);
        registrationRequest.setEmail("zxc@hotmail.com");
        registrationRequest.setAddress1("7 Upland Drive");
        registrationRequest.setAddress2("Little Hulton");
        registrationRequest.setCityTown("Manchester");
        registrationRequest.setPostcode("M38 9UD");
        registrationRequest.setPassword("230e9i@");

//        registrationService.createNewRegistration(registrationRequest);
    }

    @Test
    public void dbConnectionEstablishedTest() {

        List<Registration> registration = registrationMapper.findAll();
        assertThat(registration).isNotNull();
    }
}
