package DuAnTotNghiep.entity;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.Id;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Entity
@Data
@AllArgsConstructor
@NoArgsConstructor
public class Total implements Serializable{
	
	@Id
	String cuahang;
	String username;
	double tong;
	long soluong;
	
	public Total(String cuahang, String username, double tong, int soluong) {
        this.cuahang = cuahang;
        this.username = username;
        this.tong = tong;
        this.soluong = soluong;
    }
}
