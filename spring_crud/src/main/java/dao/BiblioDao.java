package dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;
import beans.biblio;
@Repository
public class  BiblioDao{
	JdbcTemplate template;

	public void setTemplate(JdbcTemplate template) {
		this.template = template;	
	}
	public int save(biblio b) {
		String sql ="INSERT INTO bibliobook(title,author,coauthor,physicaldesc,summary) VALUES(?,?,?,?,?)";
		return template.update(sql,
				new Object[] { b.getTitle(), b.getAuthor(), b.getCoauthor(), b.getPhysicaldesc(), b.getSummary()});
	}
	
}
