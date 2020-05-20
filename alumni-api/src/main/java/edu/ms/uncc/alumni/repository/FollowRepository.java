package edu.ms.uncc.alumni.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import edu.ms.uncc.alumni.model.Follow;

@Repository
public interface FollowRepository extends JpaRepository<Follow, Integer> {
	
	@Query(value = "select * from Follow where Follower_id = ?1" , nativeQuery = true)
    public List<Follow> findByUserId(@Param("User_id") int userid);

	@Transactional
	@Modifying
	@Query(value = "insert into Follow values (?,?)", nativeQuery = true)
    public int saveFollower(@Param("Follower_id") int followerId, @Param("Following_id") int followingId);
}
