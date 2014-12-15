package cn.jpush.service;

import java.util.ArrayList;
import java.util.List;

public interface ScanHTabelService {
	public List<?> list();

	public List<?> get(String tableName);
	
	public List<?> get(String tableName, String rowKey);

	public List<?> get(String tableName, String rowKey, String columnFamily);

	public Object get(String tableName, String rowKey, String columnFamily, String qualifier);

	public void delete(String tableName, String rowKey);

	public void delete(String tableName, String[] rowKey);

	public void insert(String tableName, ArrayList<?> alists);

	public void insert(String tableName, String rowKey, String columnFamily, String column, String value);

	public void drop(String tableName);
	
	public void create(String tableName,String[] columnFamily);
}
