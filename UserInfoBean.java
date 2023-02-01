package test;

import java.io.Serializable;
import java.util.ArrayList;
public class UserInfoBean implements Serializable{
	private ArrayList<UserRecordBean> userRecordArray;
	public UserInfoBean() {
		userRecordArray = new ArrayList<UserRecordBean>();
		// コンストラクタ
		// userRecordArrayをnewする
	}
	public void addUserRecord(UserRecordBean obj) {
		userRecordArray.add(obj);
		// リストにレコードを1件追加する
	}
	public int getArraySize() {
		return userRecordArray.size();
		// リストのサイズを返す
	}
	public ArrayList<UserRecordBean> getUserRecordArray(){
		return userRecordArray;
		// リスト全体を返す
	}
	public void setUserRecordArray(ArrayList<UserRecordBean> userRecordArray) {
		this.userRecordArray = userRecordArray;
		// 受け取った値をリストに代入
	}

}
