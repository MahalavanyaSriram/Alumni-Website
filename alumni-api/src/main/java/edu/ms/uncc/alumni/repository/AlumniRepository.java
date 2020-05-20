package edu.ms.uncc.alumni.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import edu.ms.uncc.alumni.model.Alumni;

@Repository
public interface AlumniRepository extends JpaRepository<Alumni, Integer> {
	
	@Query(value = "select * from Alumni_details where Alumni_id != ?1" , nativeQuery = true)
    public List<Alumni> findByAlumniIdNotQuery(@Param("Alumni_id") int userid);

}
