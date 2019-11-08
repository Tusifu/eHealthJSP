/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import domain.Citizens;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;

/**
 *
 * @author Edison
 */
public class CitizenDAO {

    //  METHOD TO ADD THE CITIZEN TO THE DATABASE
    public String addCitizen(Citizens ct) {
        if (findById(ct.getIdentityNo()) == null) {
            try {
                Session s = HibernateUtil.getSessionFactory().openSession();
                s.beginTransaction();
                s.save(ct);
                s.getTransaction().commit();
                s.close();
                
                return "the Citizen added successfully";
            } catch (Exception e) {
                return "failed to add citizen";
            }
        } else {
            return "that id is already used";
        }
    }

    public Citizens findById(String id) {
        Session s = HibernateUtil.getSessionFactory().openSession();
        Citizens cit = (Citizens) s.get(Citizens.class, id);
        s.close();
        return cit;
    }

    public List<Citizens> findAll() {
        Session s = HibernateUtil.getSessionFactory().openSession();
        Query q=s.createQuery("from Citizens");
        List<Citizens> li=q.list();
        return li;
    }
}
