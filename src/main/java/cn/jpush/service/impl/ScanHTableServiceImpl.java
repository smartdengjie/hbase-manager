package cn.jpush.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Service;

import cn.jpush.service.ScanHTabelService;
import cn.jpush.utils.HBaseFactory;

@Service
public class ScanHTableServiceImpl implements ScanHTabelService{

	public List<?> list() {
		return HBaseFactory.list();
	}

	public List<?> get(String tableName) {
		return HBaseFactory.get(tableName);
	}

	public List<?> get(String tableName, String rowKey) {
		// TODO Auto-generated method stub
		return null;
	}

	public List<?> get(String tableName, String rowKey, String columnFamily) {
		// TODO Auto-generated method stub
		return null;
	}

	public Object get(String tableName, String rowKey, String columnFamily, String qualifier) {
		// TODO Auto-generated method stub
		return null;
	}

	public void delete(String tableName, String rowKey) {
		// TODO Auto-generated method stub
		
	}

	public void delete(String tableName, String[] rowKey) {
		// TODO Auto-generated method stub
		
	}

	public void insert(String tableName, ArrayList<?> alists) {
		// TODO Auto-generated method stub
		
	}

	public void insert(String tableName, String rowKey, String columnFamily, String column, String value) {
		// TODO Auto-generated method stub
		
	}

	public void drop(String tableName) {
		// TODO Auto-generated method stub
		
	}

	public void create(String tableName, String[] columnFamily) {
		// TODO Auto-generated method stub
		
	}

}
