package DuAnTotNghiep.entity;

import java.io.Serializable;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonIgnore;

import lombok.Data;

@SuppressWarnings("serial")
@Data
@Entity 
@Table(name = "Accounts")
public class Account  implements Serializable{
	@Id
	String username;
	String password;
	String fullname;
	String email;
	String photo;
	
	@Column(columnDefinition = "TINYINT(1)")
	Boolean trangthai;
	
	@JsonIgnore
	@OneToMany(mappedBy = "account")
	List<Order> orders;
	
	@JsonIgnore
	@OneToMany(mappedBy = "account", fetch = FetchType.EAGER, cascade = CascadeType.REMOVE)
	List<Authority> authorities;
	
	@JsonIgnore
	@OneToOne(mappedBy = "account", cascade = CascadeType.REMOVE)
	Store cuahang;
	
	@JsonIgnore
	@OneToMany(mappedBy = "account", cascade = CascadeType.REMOVE)
	List<tintuc> tintuc;
	
	@JsonIgnore
	@OneToMany(mappedBy = "account", cascade = CascadeType.REMOVE)
	List<Likes> likes;
	
	@JsonIgnore
	@OneToMany(mappedBy = "account", cascade = CascadeType.REMOVE)
	List<Cmtstore> cmtstore;
	
	@JsonIgnore
	@OneToMany(mappedBy = "account", cascade = CascadeType.REMOVE)
	List<Cmtproduct> cmtproduct;
	
	@JsonIgnore
	@OneToMany(mappedBy = "account", cascade = CascadeType.REMOVE)
	List<Codedmk> codedmk;
	
	@JsonIgnore
	@OneToMany(mappedBy = "account", cascade = CascadeType.REMOVE)
	List<Saleuser> sale;
}
