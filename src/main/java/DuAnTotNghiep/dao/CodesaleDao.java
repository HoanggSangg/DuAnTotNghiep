package DuAnTotNghiep.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import DuAnTotNghiep.entity.Codesale;

public interface CodesaleDao extends JpaRepository<Codesale, Integer>{

	@Query("SELECT p FROM Codesale p WHERE p.code=?1 ")
	Codesale findByCode(String code);

}
