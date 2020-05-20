package edu.ms.uncc.alumni.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import edu.ms.uncc.alumni.model.Participant;

@Repository
public interface ParticipantRepository extends JpaRepository<Participant, Integer> {
	
	@Query(value = "select * from Participants where User_id = ?1" , nativeQuery = true)
    public List<Participant> findByUserId(@Param("User_id") int userid);

	@Transactional
	@Modifying
	@Query(value = "insert into Participants values (?,?)", nativeQuery = true)
    public int saveParticipant(@Param("Event_id") int eventId, @Param("User_id") int userid);
}
