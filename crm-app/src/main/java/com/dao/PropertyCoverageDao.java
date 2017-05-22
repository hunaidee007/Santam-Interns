package com.dao;

import com.bean.PropertyBean;
import com.bean.PropertyCoveragesBean;

public interface PropertyCoverageDao {
	public boolean createProperty(PropertyBean propertyBean,PropertyCoveragesBean coverages);

}
