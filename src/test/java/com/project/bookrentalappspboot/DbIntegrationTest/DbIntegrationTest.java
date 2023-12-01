package com.project.bookrentalappspboot.DbIntegrationTest;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.project.bookrentalappspboot.Registration;
import com.project.bookrentalappspboot.RegistrationController;
import com.project.bookrentalappspboot.RegistrationRequest;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.web.servlet.AutoConfigureMockMvc;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit.jupiter.SpringExtension;
import org.springframework.test.web.servlet.MockMvc;

import java.util.List;

import static org.assertj.core.api.Assertions.assertThat;

@ExtendWith(SpringExtension.class)
@SpringBootTest(webEnvironment = SpringBootTest.WebEnvironment.RANDOM_PORT)
@AutoConfigureMockMvc
public class DbIntegrationTest {


    @Autowired
    private MockMvc mockMvc;

    @Autowired
    private UserRepository userRepository;

    @Autowired
    private ObjectMapper objectMapper;

    @BeforeEach
    void setup() {
        userRepository.deleteAll();
    }

    @Test
    public void dbConnectionEstablishedTest() {

        List<Registration> response = userRepository.findAll();
        assertThat(response).isNotNull();
    }

//    @Test
//    public void shouldCreateNewUserRegistrationRecord() {
//        RegistrationRequest registrationRequest = new RegistrationRequest();
//        registrationRequest.setFirstName("Yasir");
//        registrationRequest.setMiddleNames("Kamal Mohamed Hamad");
//        registrationRequest.setSurName("Satti");
////        registrationRequest.setDateOfBirth(06/04/1972);
//        registrationRequest.setEmail("zxc@hotmail.com");
//        registrationRequest.setAddress1("7 Upland Drive");
//        registrationRequest.setAddress2("Little Hulton");
//        registrationRequest.setCityTown("Manchester");
//        registrationRequest.setPostcode("M38 9UD");
//        registrationRequest.setPassword("230e9i@");
//
//        RegistrationController registrationService = null;
//
//        registrationService.createNewRegistration(registrationRequest);
//    };
}
