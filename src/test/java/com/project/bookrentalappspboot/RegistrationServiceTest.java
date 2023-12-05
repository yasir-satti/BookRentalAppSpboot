package com.project.bookrentalappspboot;

import org.junit.Test;
import static org.assertj.core.api.Assertions.assertThat;
import static org.mockito.ArgumentMatchers.anyLong;
import static org.mockito.Mockito.when;
import org.junit.jupiter.api.BeforeEach;
import org.junit.runner.RunWith;
import org.mockito.Mock;
import org.springframework.test.context.junit4.SpringRunner;

@RunWith(SpringRunner.class)
public class RegistrationServiceTest {

    @Mock
    private RegistrationMapper registrationMapper;

    @Mock
    private RegistrationService registrationService;

    private Registration registration;

    @BeforeEach
    public void setup(){
        registration = Registration.builder()
                .id(1L)
                .firstName("Yasir")
                .middleNames("Kamal")
                .surName("Satti")
                .email("yassir_satti@hotmail.com")
                .address1("wecwecwe")
                .address2("wecwecwe")
                .cityTown("Manchester")
                .postcode("M1 3ER")
                .password("wecE$3ed32e")
                .build();
    };

    @Test
    public void getRegistrationIdTest() {

        when(registrationService.createNewRegistration(registration))
                .thenReturn(1L);

        long id = registrationService.createNewRegistration(registration);

        assertThat(id).isEqualTo(1L);;
    };

    @Test
    public void getRegistrationDataByIdTest() {

        when(registrationService.getRegistrationById(anyLong()))
                .thenReturn(registration);

        Registration reg = registrationService.getRegistrationById(1L);

        assertThat(reg).isEqualTo(registration);
    };
}
