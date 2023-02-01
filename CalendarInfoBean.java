package test;

import java.io.Serializable;
import java.util.ArrayList;

public class CalendarInfoBean implements Serializable{
	private ArrayList<CalendarRecordBean> calendarRecordArray;
	public CalendarInfoBean() {
		calendarRecordArray = new ArrayList<CalendarRecordBean>();
		// コンストラクタ
		// userRecordArrayをnewする
	}
	public void addCalendarRecord(CalendarRecordBean obj) {
		calendarRecordArray.add(obj);
		// リストにレコードを1件追加する
	}
	public int getArraySize() {
		return calendarRecordArray.size();
		// リストのサイズを返す
	}
	public ArrayList<CalendarRecordBean> getCalendarRecordArray(){
		return calendarRecordArray;
		// リスト全体を返す
	}
	public void setCalendarRecordArray(ArrayList<CalendarRecordBean> calendarRecordArray) {
		this.calendarRecordArray = calendarRecordArray;
		// 受け取った値をリストに代入
	}
}
