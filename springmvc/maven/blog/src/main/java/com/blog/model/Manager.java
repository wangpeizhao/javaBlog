package com.blog.model;

public class Manager {
	private Integer managerId;

    private String account;

    private String password;

    private String managerName;

    public Integer getManagerId() {
        return managerId;
    }

    public void setManagerId(Integer managerId) {
        this.managerId = managerId;
    }

    public String getAccount() {
        return account;
    }

    public void setAccount(String account) {
        this.account = account == null ? null : account.trim();
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password == null ? null : password.trim();
    }

    public String getManagerName() {
        return managerName;
    }

    public void setManagerName(String managerName) {
        this.managerName = managerName == null ? null : managerName.trim();
    }
    
    @Override
    public String toString(){
    	return "Manager[managerId = "+managerId+",account = "+account+",password = "+password+
				",managerName = "+managerName+"]";
    }
}
