package com.project.bookrentalappspboot;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import java.util.List;

@Mapper
public interface RegistrationMapper {
    @Select("SELECT * FROM customers")
    List<Registration> findAll();

    @Select("SELECT * FROM customers WHERE id = #{id}")
    Registration findById(long id);

    @Insert("INSERT INTO customers(firstName, middleNames, surName, email, " +
            " address1, address2, cityTown, postcode, password) " +
            " VALUES (#{firstName}, #{middleNames}, #{surName}, " +
                    " #{email}, #{address1}, #{address2}, #{cityTown}, " +
                    " #{postcode}, #{password})")
    long insert(Registration registration);

    @Select("UPDATE customers SET firstName=#{firstName}, " +
    " middleNames=#{middleNames}, surName=#{surName}, email=#{email}, " +
            "address1=#{address1}, address2=#{address2}, cityTown=#{cityTown}, " +
            "postcode=#{postcode}, password=#{password}" +
    " WHERE id=#{id}")
    Long update(Registration registration);

    @Delete("DELETE FROM customers WHERE id=#{id}")
    long deleteById(long id);

}
