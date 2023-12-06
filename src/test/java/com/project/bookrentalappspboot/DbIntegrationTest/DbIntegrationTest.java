package com.project.bookrentalappspboot.DbIntegrationTest;

import com.project.bookrentalappspboot.Entity.Registration;
import com.project.bookrentalappspboot.Service.RegistrationService;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.springframework.test.context.junit.jupiter.SpringExtension;

import static org.assertj.core.api.BDDAssertions.then;

@ExtendWith(SpringExtension.class)
public class DbIntegrationTest {

    private RegistrationService registrationService;

    @Test
    public void tesInsertNewCustomer_ReturnsCustomerId() {
        Registration Yasir = Registration
                .builder()
                .firstName("Yasir")
                .surName("Satti")
                .email("c@c.com")
                .address1("1 X")
                .cityTown("Manchester")
                .postcode("M1 3ER")
                .password("wecwW@£EDxe")
                .build();

        long response = registrationService.createNewRegistration(Yasir);
        then(response).isEqualTo(1L);
    };

    @Test
    public void testGetCustomerById_ReturnsCustomerDetails() {
        Registration Yasir = Registration
                .builder()
                .firstName("Yasir")
                .surName("Satti")
                .email("c@c.com")
                .address1("1 X")
                .cityTown("Manchester")
                .postcode("M1 3ER")
                .password("wecwW@£EDxe")
                .build();

        Registration customer = registrationService.getRegistrationById(1L);
        then(customer).isEqualTo(Yasir);
    };
};