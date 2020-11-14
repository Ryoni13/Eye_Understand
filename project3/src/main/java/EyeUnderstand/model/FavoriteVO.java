package EyeUnderstand.model;

public class FavoriteVO {
   
	private String ID;
	private String FAVORITEWORD;
	private int POINT;
	
	
	public FavoriteVO() {
	}
	
	public FavoriteVO(String iD, String fAVORITEWORD) {
		ID = iD;
		FAVORITEWORD = fAVORITEWORD;
	}

	public FavoriteVO(String iD, String fAVORITEWORD, int pOINT) {
		ID = iD;
		FAVORITEWORD = fAVORITEWORD;
		POINT = pOINT;
	}
	public String getID() {
		return ID;
	}
	public void setID(String iD) {
		ID = iD;
	}
	public String getFAVORITEWORD() {
		return FAVORITEWORD;
	}
	public void setFAVORITEWORD(String fAVORITEWORD) {
		FAVORITEWORD = fAVORITEWORD;
	}
	public int getPOINT() {
		return POINT;
	}
	public void setPOINT(int pOINT) {
		POINT = pOINT;
	}
	
}