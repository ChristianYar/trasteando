package proyecto.utils;

public class AlertsJsp {
	
	public static String ERROR = "error";
	public static String WARNING = "warning";
	public static String SUCCESS = "success";
	public static String INFO = "info";
	
	
	private String errorType;
	private String errorKey;
	
	
	public String getErrorType() {
		return errorType;
	}
	
	public void setErrorType(String errorType) {
		this.errorType = errorType;
	}
	
	public String getErrorKey() {
		return errorKey;
	}
	
	public void setErrorKey(String errorKey) {
		this.errorKey = errorKey;
	}
	
	public AlertsJsp(String errorType, String errorKey) {
		this.errorType = errorType;
		this.errorKey = errorKey;
	}
	

}
