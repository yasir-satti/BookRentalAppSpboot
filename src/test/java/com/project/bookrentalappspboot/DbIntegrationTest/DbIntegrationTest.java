package com.project.bookrentalappspboot.DbIntegrationTest;

import com.project.bookrentalappspboot.RegistrationRequest;
import org.apache.http.HttpResponse;
import org.apache.http.HttpStatus;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.impl.client.HttpClientBuilder;
import org.junit.jupiter.api.Test;
import org.springframework.boot.test.autoconfigure.orm.jpa.DataJpaTest;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.stereotype.Service;
import org.springframework.test.context.TestPropertySource;

import static org.hamcrest.MatcherAssert.assertThat;
import static org.hamcrest.Matchers.equalTo;

@SpringBootTest
//@DataJpaTest
public class DbIntegrationTest {

    @Test
    public void testHttpResponse() throws Exception {

        String url = "http://localhost:8080/api/registration";

        HttpUriRequest request = new HttpGet( url );
        HttpResponse httpResponse = HttpClientBuilder
                                        .create()
                                        .build()
                                        .execute( request );
        assertThat(
                httpResponse.getStatusLine().getStatusCode(),
                equalTo(HttpStatus.SC_NOT_FOUND));
    }

    @Test
    public void postingANewMemberRegistrationShouldCreateANewMemberEntryInDatabase() throws Exception {

        RegistrationRequest registrationRequest = new RegistrationRequest();
        registrationRequest.setFirstName("Yasir");
        registrationRequest.setMiddleNames("Kamal Mohamed Hamad");
        registrationRequest.setSurName("Satti");
//        registrationRequest.setDateOfBirth(06/04/1972);
        registrationRequest.setEmail("yassir_satti@hotmail.com");
        registrationRequest.setAddress1("7 Upland Drive");
        registrationRequest.setAddress2("Little Hulton");
        registrationRequest.setCityTown("Manchester");
        registrationRequest.setPostcode("M38 9UD");
        registrationRequest.setPassword("230e9i@");

//        long id = registrationService.createNewRegistration(argumentCaptor.capture());

//        mockMvc
//                .perform(post("http://localhost/api/registration/")
//                        .contentType(MediaType.APPLICATION_JSON)
//                        .content(objectMapper.writeValueAsString(registrationRequest))
//                )
//                .andExpect(status().isCreated())
//                .andExpect(header().exists("Location"))
//                .andExpect(header().string("Location", "http://localhost/api/registration/1"));
//

//        bookRepository.save(registrationRequest);
//
//        RegistrationRequest regRequest = bookRepository.findById();
//
//        assertThat(regRequest).isNotNull();
//        assertThat(savedRegistration.getFirstName()).isEqualTo("Yasir");

    };
}
