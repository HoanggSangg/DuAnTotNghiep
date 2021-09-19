package DuAnTotNghiep.service;

import java.util.List;

import DuAnTotNghiep.entity.Account;

public interface AccountService {

	Account findById(String username);
	
	List<Account> findAll();
	
//	List<Account> getAdministrators();

	Account update(Account account);

	void delete(String username);

	Account create(Account account);
}
