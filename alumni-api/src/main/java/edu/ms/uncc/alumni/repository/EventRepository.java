package edu.ms.uncc.alumni.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import edu.ms.uncc.alumni.model.Event;

@Repository
public interface EventRepository extends JpaRepository<Event, Integer> {

}
