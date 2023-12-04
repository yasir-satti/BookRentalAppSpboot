package com.project.bookrentalappspboot.DbIntegrationTest;

import com.project.bookrentalappspboot.Registration;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.ListCrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface MySQLRepository extends JpaRepository<Registration, Long> {
}
