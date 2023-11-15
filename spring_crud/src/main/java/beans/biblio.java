package beans;

public class biblio {
	int id;
	String title;
	String author;
	String coauthor;
	String physicaldesc;
	String summary;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getAuthor() {
		return author;
	}
	public void setAuthor(String author) {
		this.author = author;
	}
	public String getCoauthor() {
		return coauthor;
	}
	public void setCoauthor(String coauthor) {
		this.coauthor = coauthor;
	}
	public String getPhysicaldesc() {
		return physicaldesc;
	}
	public void setPhysicaldesc(String physicaldesc) {
		this.physicaldesc = physicaldesc;
	}
	
	public String getSummary() {
		return summary;
	}
	public void setSummary(String summary) {
		this.summary = summary;
	}
	
	public biblio(int id, String title, String author, String coauthor, String physicaldesc, String summary) {
		super();
		this.id = id;
		this.title = title;
		this.author = author;
		this.coauthor = coauthor;
		this.physicaldesc = physicaldesc;
		this.summary = summary;
	}
	public biblio() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
}
