package com.project.bookrentalappspboot;

import org.junit.Test;
import static org.assertj.core.api.Assertions.assertThat;
import org.junit.runner.RunWith;
import org.mybatis.spring.boot.test.autoconfigure.MybatisTest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.mock.mockito.MockBean;
import org.springframework.test.context.junit4.SpringRunner;

import java.util.List;

@RunWith(SpringRunner.class)
@MybatisTest
public class RegistrationServiceTest {

    @MockBean
    private RegistrationMapper registrationMapper;

    private RegistrationService registrationService = new RegistrationService(registrationMapper);

    @Test
    public void getRegistrationDataByIdTest() {
//        Registration registration = registrationService.getRegistrationById(21L);
//        assertThat(registration.getFirstName()).isEqualTo("Yasir");
        assertThat(registrationMapper.findById(21L).getFirstName()).isEqualTo("Yasir");
    }
}
