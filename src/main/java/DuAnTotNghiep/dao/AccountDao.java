package DuAnTotNghiep.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import DuAnTotNghiep.entity.Account;

public interface AccountDao extends JpaRepository<Account, String>{

	/*
	 * @Query("SELECT DISTINCT ar.account FROM Authority ar WHERE ar.role.id IN ('DIRE', 'STAF')"
	 * ) List<Account> getAdministrators();
	 */
	
}
