package edu.ms.uncc.alumni.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import edu.ms.uncc.alumni.model.JobPosting;

@Repository
public interface JobPostingRepository extends JpaRepository<JobPosting, Integer> {

}
