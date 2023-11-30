package com.project.bookrentalappspboot.HttpIntegrationTest;

import org.apache.http.HttpResponse;
import org.apache.http.HttpStatus;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.impl.client.HttpClientBuilder;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.mybatis.spring.boot.test.autoconfigure.AutoConfigureMybatis;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit.jupiter.SpringExtension;

import static org.hamcrest.MatcherAssert.assertThat;
import static org.hamcrest.Matchers.equalTo;

@SpringBootTest
@ExtendWith(SpringExtension.class)
@AutoConfigureMybatis
public class HttpIntegrationTest {

    @Test
    public void testHttpResponse() throws Exception {

        String url = "http://localhost:5000/api/registration";

        HttpUriRequest request = new HttpGet( url );
        HttpResponse httpResponse = HttpClientBuilder
                .create()
                .build()
                .execute( request );
        assertThat(
                httpResponse.getStatusLine().getStatusCode(),
                equalTo(HttpStatus.SC_OK));
    };
};
