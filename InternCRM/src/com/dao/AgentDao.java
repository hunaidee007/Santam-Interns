package com.dao;


import java.util.List;

import com.bean.AgentBean;


public interface AgentDao {
	
	public void Create(AgentBean agent);
	
	public List<AgentBean> getAllAgents();
	
	public AgentBean getAgent(AgentBean agent);
	
	public void updateAgent(AgentBean agent);
	
	public void deleteAgent(AgentBean agent);
}
