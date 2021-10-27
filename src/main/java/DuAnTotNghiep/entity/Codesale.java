package DuAnTotNghiep.entity;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import com.fasterxml.jackson.annotation.JsonIgnore;

import lombok.Data;

@SuppressWarnings("serial")
@Data
@Entity 
@Table(name = "Codesale")
public class Codesale implements Serializable{

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	Long id;
	String code;
	
	@Temporal(TemporalType.DATE)
	@Column(name = "starday")
	Date starday = new Date();
	
	@Temporal(TemporalType.DATE)
	@Column(name = "endday")
	Date endday = new Date();
	
	Integer percents;
	
	@JsonIgnore
	@OneToMany(mappedBy = "codesale")
	List<Order> order;
}
