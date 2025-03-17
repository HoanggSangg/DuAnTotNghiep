package DuAnTotNghiep.entity;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import com.fasterxml.jackson.annotation.JsonIgnore;

import lombok.Data;

@SuppressWarnings("serial")
@Data
@Entity @Table(name = "Products")
public class Product  implements Serializable{
	@Id	
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	Integer id;
	String name;
	Double price;
	Integer soluong;
	@Temporal(TemporalType.DATE)
	@Column(name = "Createdate")
	Date createDate = new Date();
	String image;
	
	@Column(columnDefinition = "TINYINT(1)")
	Boolean available;
	
	@ManyToOne
	@JoinColumn(name = "Cuahangid")
	Store cuahang;
	
	@ManyToOne
	@JoinColumn(name = "Categoryid")
	Catesmall catesmall;
	
	@JsonIgnore
	@OneToMany(mappedBy = "product", cascade = CascadeType.REMOVE)
	List<Orderdetail> orderDetails;	
	
	@JsonIgnore
	@OneToMany(mappedBy = "product", cascade = CascadeType.REMOVE)
	List<Image> images;
	
	@JsonIgnore
	@OneToMany(mappedBy = "product", cascade = CascadeType.REMOVE)
	List<Specification> specification;
	
	@JsonIgnore
	@OneToMany(mappedBy = "product", cascade = CascadeType.REMOVE)
	List<Introduce> introduce;
	
	@JsonIgnore
	@OneToMany(mappedBy = "product", cascade = CascadeType.REMOVE)
	List<Likes> likes;
	
	@JsonIgnore
	@OneToMany(mappedBy = "product", cascade = CascadeType.REMOVE)
	List<Cmtproduct> cmtproduct;
}
