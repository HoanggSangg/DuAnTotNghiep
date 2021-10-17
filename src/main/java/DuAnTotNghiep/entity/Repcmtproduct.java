package DuAnTotNghiep.entity;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonIgnore;

import lombok.Data;

@SuppressWarnings("serial")
@Data
@Entity
@Table(name = "Repcmtproduct")
public class Repcmtproduct implements Serializable {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	Integer id;
	String comment;
	@Column(name = "date")
	Date date = new Date();
	
	@ManyToOne
	@JoinColumn(name = "Cmtid")
	Cmtproduct cmtproduct;
	
	@ManyToOne
	@JoinColumn(name = "Userrep")
	private Account account;
}
