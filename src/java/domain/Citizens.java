/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package domain;

import java.io.Serializable;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 *
 * @author Edison
 */
@Entity
public class Citizens implements Serializable {

    @Id
    private String identityNo;
    private String firstName;
    private String lastName;
    private double weight;
    private double height;
    private String healthCondition;

    public String getIdentityNo() {
        return identityNo;
    }

    public void setIdentityNo(String identityNo) {
        this.identityNo = identityNo;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public double getWeight() {
        return weight;
    }

    public void setWeight(double weight) {
        this.weight = weight;
    }

    public Double getHeight() {
        return height;
    }

    public void setHeight(Double height) {
        this.height = height;
    }

    public String getHealthCondition() {
        return healthCondition;
    }

    public void setHealthCondition(String healthCondition) {
        this.healthCondition = healthCondition;
    }

    public Citizens() {
    }

    public Citizens(String identityNo, String firstName, String lastName, double weight, double height, String healthCondition) {
        this.identityNo = identityNo;
        this.firstName = firstName;
        this.lastName = lastName;
        this.weight = weight;
        this.height = height;
        this.healthCondition = healthCondition;
    }

    @Override
    public String toString() {
        return "Citizens{" + "identityNo=" + identityNo + ", firstName=" + firstName + ", lastName=" + lastName + ", weight=" + weight + ", height=" + height + ", healthCondition=" + healthCondition + '}';
    }

    public String findHealthCondition(double weight, double height) {
        double bmi = weight / Math.pow(height, 2);
        if (bmi < 18.5) {
            return "Underweight";
        } else if (bmi >= 18.5 && bmi < 25) {
            return "Normal";
        } else if (bmi >= 25 && bmi < 30) {
            return "Overweight";
        } else if (bmi >= 30) {
            return "Obese";
        } else {
            return null;
        }
    }

    public double findBodyMassIndex(double weight, double height) {
        double bmi = weight / Math.pow(height, 2);
        return bmi;
    }
    

}
