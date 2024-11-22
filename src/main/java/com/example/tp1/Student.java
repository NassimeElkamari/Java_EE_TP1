package com.example.tp1;

public class Student {
    private String firstName;
    private String lastName;
    private double averageGrade;

    public Student(String firstName, String lastName, double averageGrade) {
        this.firstName = firstName;
        this.lastName = lastName;
        this.averageGrade = averageGrade;
    }

    public String getFirstName() {
        return firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public double getAverageGrade() {
        return averageGrade;
    }
}
