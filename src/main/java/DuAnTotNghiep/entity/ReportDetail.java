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
public class ReportDetail implements Serializable{
	
	@Id
	private String name;
	private double doanhThu;
	private long soLuong;
}
