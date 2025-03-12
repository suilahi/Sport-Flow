package Model;

import java.time.LocalDate;
import java.util.Date;
import Model.User;

public class Member extends User{
    private int id;
    private String sport;
    private Date date;

    public Member(int id,String name,String email,String password, String sport, Date date) {
        super(id,name,email,password,sport,date);
        this.id = id;
        this.sport = sport;
        this.date = date;
    }
    public int getId() {
        return id;
    }
    public void setId(int id) {
        this.id = id;
    }
    public String getSport() {
        return sport;
    }
    public void setSport(String sport) {
        this.sport = sport;
    }
    public Date getDate() {
        return date;
    }
    public void setDate(Date date) {
        this.date = date;
    }

}
