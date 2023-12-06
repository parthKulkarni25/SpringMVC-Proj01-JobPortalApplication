package in.naukri.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import in.naukri.model.Job;
import java.util.List;


public interface IJobDAO extends JpaRepository<Job, Integer> {

	public List<Job> findByCompany(String company);
	
}
