/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package main;

import dao.HibernateUtil;
import domain.Citizens;

/**
 *
 * @author Edison
 */
public class MainClass {
    public static void main(String[] args) {
//        HibernateUtil.getSessionFactory().openSession();
//        HibernateUtil.getSessionFactory().close();

        String result=new Citizens().findHealthCondition(61,1.7);
        System.out.println(result);
        
        
    }
}
