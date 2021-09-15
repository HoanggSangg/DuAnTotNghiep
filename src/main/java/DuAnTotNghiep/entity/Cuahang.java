package DuAnTotNghiep.entity;

import java.io.Serializable;
import java.util.List;

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
@Table(name = "Cuahang")
public class Cuahang  implements Serializable{
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	Integer id;
	String tencuahang;
	
	@ManyToOne @JoinColumn(name = "Username")
	private Account account;
	
	Boolean trangthai;
	
	@JsonIgnore
	@OneToMany(mappedBy = "cuahang")
	List<Product> product;
}
