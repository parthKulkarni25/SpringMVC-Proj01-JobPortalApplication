package in.naukri.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import in.naukri.model.Candidate;
import in.naukri.model.Job;


public interface ICandidateDao extends JpaRepository<Candidate, Integer> {
	
	public List<Candidate> findByCname(String cname);
	public List<Candidate> findByJob(Job job);
}
