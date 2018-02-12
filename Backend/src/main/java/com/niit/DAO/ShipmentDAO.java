package com.niit.DAO;

import java.util.List;

import com.niit.Model.Shipment;

public interface ShipmentDAO {
	
public Shipment getByShipmentId(int shipmentId);
	
	public void saveOrUpdate(Shipment ship);
	
	public List<Shipment> list();
	
	public void delete(int id);
	
	public Shipment getByUserName(String userName);
	
	public List<Shipment> getByUserId(int id);
}
