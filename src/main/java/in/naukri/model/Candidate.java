package in.naukri.model;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

import lombok.Data;

@Entity
@Data
public class Candidate {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer cid;
	
	private String cname;
	private String experiance;
	private Integer expSalary;
	
	@ManyToOne(cascade = CascadeType.MERGE)
	@JoinColumn(name = "jobCode")
	private Job job;
	
}
