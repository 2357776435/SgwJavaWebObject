package stu.sgw.bll;

public class T_flow_step_def {
	private int Step_no;
	private String Step_name;
	private int Limit_time;
	private String Step_des;
	public T_flow_step_def(int step_no, String step_name, int limit_time,
			String step_des, String uRL) {
		super();
		Step_no = step_no;
		Step_name = step_name;
		Limit_time = limit_time;
		Step_des = step_des;
		URL = uRL;
	}
	public int getStep_no() {
		return Step_no;
	}
	public void setStep_no(int step_no) {
		Step_no = step_no;
	}
	public String getStep_name() {
		return Step_name;
	}
	public void setStep_name(String step_name) {
		Step_name = step_name;
	}
	public int getLimit_time() {
		return Limit_time;
	}
	public void setLimit_time(int limit_time) {
		Limit_time = limit_time;
	}
	public String getStep_des() {
		return Step_des;
	}
	public void setStep_des(String step_des) {
		Step_des = step_des;
	}
	public String getURL() {
		return URL;
	}
	public void setURL(String uRL) {
		URL = uRL;
	}
	private String URL;
}
