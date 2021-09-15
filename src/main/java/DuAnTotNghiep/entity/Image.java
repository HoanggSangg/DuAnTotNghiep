package DuAnTotNghiep.entity;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import lombok.Data;

@SuppressWarnings("serial")
@Data
@Entity 
@Table(name = "Image")
public class Image  implements Serializable{
	@Id	
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	Integer id;
	String name;
	
	@ManyToOne @JoinColumn(name = "Productid")
	private Product product;
}
