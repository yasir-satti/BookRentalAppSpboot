package com.project.bookrentalappspboot.DbIntegrationTest;

import com.project.bookrentalappspboot.Registration;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.orm.jpa.DataJpaTest;
import org.springframework.boot.test.autoconfigure.orm.jpa.TestEntityManager;
import org.springframework.test.context.junit.jupiter.SpringExtension;

import java.util.Collections;
import java.util.List;

import static org.assertj.core.api.BDDAssertions.then;

@ExtendWith(SpringExtension.class)
@DataJpaTest
public class DbIntegrationTest {

    @Autowired
    private MySQLRepository mysqlRepository;

    @Autowired
    private TestEntityManager testEntityManager;

    @Test
    public void testGetCustomerByName_ReturnsCustomerDetails() {
        Registration savedCustomer = testEntityManager.persistAndFlush(new Registration());
        savedCustomer.setFirstName("Yasir");
        List<Registration> customer = mysqlRepository.findAll();
        then(customer).isNotNull();
    };

    @Test
    public void testGetCustomerByPostcode_ReturnsCustomerDetails() {
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

        Collections.singletonList(Yasir).forEach(testEntityManager::persistAndFlush);
        long numOfCustomers = mysqlRepository.findAll().size();
        then(numOfCustomers).isZero();
    };
};
