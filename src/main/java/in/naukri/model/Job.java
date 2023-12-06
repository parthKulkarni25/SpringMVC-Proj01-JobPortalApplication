package in.naukri.model;

import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.SequenceGenerator;

import lombok.Data;

@Entity
@Data
public class Job {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY, generator = "jobCodeGenerator")
    @SequenceGenerator(name = "jobCodeGenerator", sequenceName = "job_code_seq", initialValue = 100)
	private Integer jobCode;
	
	private String jobProfile;
	private Integer availableSeats;
	private Integer experience;
	private Float salary;
	private String company;
	
	@OneToMany(mappedBy = "job")
	List<Candidate> candidates;

}
