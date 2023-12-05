package com.project.bookrentalappspboot.DbIntegrationTest;

import com.project.bookrentalappspboot.Registration;
import com.project.bookrentalappspboot.RegistrationService;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.mybatis.spring.boot.test.autoconfigure.AutoConfigureMybatis;
import org.mybatis.spring.boot.test.autoconfigure.MybatisTest;
import org.springframework.test.context.junit.jupiter.SpringExtension;

import static org.assertj.core.api.BDDAssertions.then;

@ExtendWith(SpringExtension.class)
@MybatisTest
//@AutoConfigureMybatis
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

//    @Autowired
//    private RegistrationRepository registrationRepository;

//    @Autowired
//    private TestEntityManager testEntityManager;

//    @Test
//    public void testGetCustomerByName_ReturnsCustomerDetails() {
//        Registration savedCustomer = testEntityManager.persistAndFlush(new Registration());
//        savedCustomer.setFirstName("Yasir");
//        List<Registration> customer = registrationRepository.findAll();
//        then(customer).isNotNull();
//    };

//    @Test
//    public void testGetCustomerByPostcode_ReturnsCustomerDetails() {
//        Registration Yasir = Registration
//                .builder()
//                    .firstName("Yasir")
//                    .surName("Satti")
//                    .email("c@c.com")
//                    .address1("1 X")
//                    .cityTown("Manchester")
//                    .postcode("M1 3ER")
//                    .password("wecwW@£EDxe")
//                .build();
//
////        Collections.singletonList(Yasir).forEach(testEntityManager::persistAndFlush);
//        long numOfCustomers = registrationRepository.findAll().size();
//        then(numOfCustomers).isZero();
//    };
};
