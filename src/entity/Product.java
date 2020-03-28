package entity;
/**
 * 供应商表
 * @author Zylyyqx
 * @创建时间 2020年3月28日下午7:15:28
 */
public class Product {
	private int id;
	private String pname;
	private String paddress;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getPname() {
		return pname;
	}
	public void setPname(String pname) {
		this.pname = pname;
	}
	public String getPaddress() {
		return paddress;
	}
	public void setPaddress(String paddress) {
		this.paddress = paddress;
	}
	
}
