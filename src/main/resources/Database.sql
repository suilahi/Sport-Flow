
create database sport_Flow;

use sport_Flow;

create table users(
                      id int primary key auto_increment,
                      name varchar(100) not null,
                      email varchar(100) not null,
                      password varchar(100) not null,
                      role enum('entraineur','Membre')
);

create table member (
                        id_member int primary key auto_increment,
                        user_id int ,
                        sport varchar (250) not null,
                        date_de_naissance varchar (250) not null ,
                        FOREIGN key (user_id) references users(id)
);

create table coach (
                       coach_id int primary key auto_increment,
                       user_id int ,
                       specialite varchar (300) not null,
                       FOREIGN KEY (user_id) references users(id)
);

create table seance (
                        id_seance int primary key auto_increment,
                        id_coach int  ,
                        id_member int ,
                        Date_seance date not null ,
                        time_seance time not null,
                        foreign key (id_member) references member (id_member),
                        foreign key (id_coach) references coach (coach_id)
);
