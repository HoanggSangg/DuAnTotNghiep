package DuAnTotNghiep.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import DuAnTotNghiep.entity.Authority;

public interface AuthorityDao extends JpaRepository<Authority, Integer>{

	/*
	 * @Query("SELECT DISTINCT a FROM Authority a WHERE a.account IN ?1")
	 * List<Authority> authoritiesOf(List<Account> accounts);
	 */
}
