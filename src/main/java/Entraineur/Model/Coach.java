package Entraineur.Model;

import User.Model.User;

public class Coach extends User {
   private String spacialite;

   public Coach(int id, String name,String email, String password,String role, String spacialite) {
       super(id,name,email,password,role);
       this.spacialite = spacialite;
   }

   public String getSpacialite() {
       return spacialite;
   }

   public void setSpacialite(String spacialite) {
       this.spacialite = spacialite;
   }


}
