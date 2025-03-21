package DuAnTotNghiep.entity;

import java.io.Serializable;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
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
@Table(name = "Catesmall")
public class Catesmall implements Serializable{
	@Id
	String id;
	String name;
	
	@JsonIgnore
	@OneToMany(mappedBy = "catesmall", cascade = CascadeType.REMOVE)
	List<Product> products;
	
	public int getSize() {
        return products != null ? products.size() : 0;
    }
	
	@ManyToOne
	@JoinColumn(name = "Categoryid")
	Category category;
}
