package air.korea.model;
// 출발지(int), 도착지(int), 시간표(String), 비고(String)

public class TimeAirVO {
	   private int start_place;
	   private int end_place;
	   private String parttime;
	   private String bigo;
	   
	
	 
	public TimeAirVO() {
	}
	
	

	public TimeAirVO(int start_place, int end_place, String parttime, String bigo) {
		super();
		this.start_place = start_place;
		this.end_place = end_place;
		this.parttime = parttime;
		this.bigo = bigo;
	}



	public int getStart_place() {
		return start_place;
	}



	public void setStart_place(int start_place) {
		this.start_place = start_place;
	}



	public int getEnd_place() {
		return end_place;
	}



	public void setEnd_place(int end_place) {
		this.end_place = end_place;
	}



	public String getParttime() {
		return parttime;
	}



	public void setParttime(String parttime) {
		this.parttime = parttime;
	}



	public String getBigo() {
		return bigo;
	}



	public void setBigo(String bigo) {
		this.bigo = bigo;
	}



	@Override
	public String toString() {
		return "TimeAirVO [start_place=" + start_place + ", end_place=" + end_place + ", parttime=" + parttime + ", bigo=" + bigo + "]";
	}	   
}
