package com.project.bookrentalappspboot.Service;

import com.project.bookrentalappspboot.Entity.Registration;
import com.project.bookrentalappspboot.RegistrationNotFoundException;
import com.project.bookrentalappspboot.Repository.RegistrationRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class RegistrationService {

    @Autowired
    RegistrationRepository registrationRepository;

    public long createNewRegistration(Registration registration) {
        return registrationRepository.save(registration).getId();

    }

    public List<Registration> getAllRegistrations() {
        return registrationRepository.findAll();
    }

    public Registration getRegistrationById(Long id) {

        Optional<Registration> requestedRegistration = registrationRepository.findById(id);

        if(requestedRegistration.isEmpty()) {
            throw new RegistrationNotFoundException(String.format("Registration with id: '%s' not found", id));
        }
        return requestedRegistration.get();
    }

    public Long updateRegistration(Long id, Registration registrationToUpdateRequest) {

        Optional<Registration> registrationFromDatabase = registrationRepository.findById(id);

        if(registrationFromDatabase.isEmpty()) {
            throw new RegistrationNotFoundException(String.format("Registration with id: '%s' not found", id));
        }

        Registration registrationToUpdate = registrationFromDatabase.get();

        registrationToUpdate.setFirstName(registrationToUpdateRequest.getFirstName());
        registrationToUpdate.setMiddleNames(registrationToUpdateRequest.getMiddleNames());
        registrationToUpdate.setSurName(registrationToUpdateRequest.getSurName());
        registrationToUpdate.setEmail(registrationToUpdateRequest.getEmail());
        registrationToUpdate.setAddress1(registrationToUpdateRequest.getAddress1());
        registrationToUpdate.setAddress2(registrationToUpdateRequest.getAddress2());
        registrationToUpdate.setCityTown(registrationToUpdateRequest.getCityTown());
        registrationToUpdate.setPostcode(registrationToUpdateRequest.getPostcode());
        registrationToUpdate.setPassword(registrationToUpdateRequest.getPassword());

        return registrationRepository.save(registrationToUpdate).getId();
    }

    public void deleteRegistrationById(Long id) {
        registrationRepository.deleteById(id);
    }
}
