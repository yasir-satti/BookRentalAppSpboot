package com.project.bookrentalappspboot;

import java.util.List;

public interface RegistrationServiceInterface {
    long createNewRegistration(RegistrationRequest registrationRequest);

    List<Registration> getAllRegistrations();

    Registration getRegistrationById(Long id);

    Long updateRegistration(Long id, RegistrationRequest registrationToUpdateRequest);

    void deleteRegistrationById(Long id);
}
