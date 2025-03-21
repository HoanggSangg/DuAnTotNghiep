package DuAnTotNghiep.entity;

import java.io.Serializable;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonIgnore;

import lombok.Data;

@SuppressWarnings("serial")
@Data
@Entity
@Table(name = "Cuahang")
public class Store implements Serializable {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	Integer id;
	String tencuahang;

	@OneToOne
	@JoinColumn(name = "Username")
	Account account;

	@Column(columnDefinition = "TINYINT(1)")
	Boolean trangthai;
	String image;

	@JsonIgnore
	@OneToMany(mappedBy = "cuahang", cascade = CascadeType.REMOVE)
	List<Order> order;
	
	@JsonIgnore
	@OneToMany(mappedBy = "cuahang", cascade = CascadeType.REMOVE)
	List<Product> product;
	
	@JsonIgnore
	@OneToMany(mappedBy = "cuahang", cascade = CascadeType.REMOVE)
	List<Cmtstore> cmtstore;
	
	@JsonIgnore
	@OneToMany(mappedBy = "cuahang", cascade = CascadeType.REMOVE)
	List<Codesale> codesale;
}
