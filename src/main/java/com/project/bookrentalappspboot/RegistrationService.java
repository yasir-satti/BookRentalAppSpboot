package com.project.bookrentalappspboot;

import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class RegistrationService implements RegistrationServiceInterface {

    RegistrationMapper registrationMapper;

    public RegistrationService(RegistrationMapper registrationMapper) {

        this.registrationMapper = registrationMapper;
    }

    @Override
    public long createNewRegistration(RegistrationRequest registrationRequest) {

        Registration registration = new Registration(registrationRequest.getFirstName(),
                registrationRequest.getMiddleNames(),
                registrationRequest.getSurName(),
                registrationRequest.getEmail(),
                registrationRequest.getAddress1(),
                registrationRequest.getAddress2(),
                registrationRequest.getCityTown(),
                registrationRequest.getPostcode(),
                registrationRequest.getPassword()
        );
        return registrationMapper.insert(registration);
    }

    @Override
    public List<Registration> getAllRegistrations() {

        return registrationMapper.findAll();
    }

    @Override
    public Registration getRegistrationById(Long id) {

        Optional<Registration> requestedRegistration = Optional.ofNullable(registrationMapper.findById(id));

        if(requestedRegistration.isEmpty()) {
            throw new RegistrationNotFoundException(String.format("Registration with id: '%s' not found", id));
        }

        return requestedRegistration.get();
    }

    @Override
    public Long updateRegistration(Long id, RegistrationRequest registrationToUpdateRequest) {

        Optional<Registration> registrationFromDatabase = Optional.ofNullable(registrationMapper.findById(id));

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

//        return registrationRepository.save(registrationToUpdate);
        return registrationMapper.update(registrationToUpdate);
    }

    @Override
    public void deleteRegistrationById(Long id) {

        registrationMapper.deleteById(id);
    }
}
