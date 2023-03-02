package com.boots.entity;

import java.util.Scanner;

public class Calc {

    private double r_rub = 1;
    private double b_rub = 1;
    private double dollars = 1;

    private int choice;


    void conv(){

        Scanner scanner = new Scanner(System.in);

        while (true){

            System.out.println("Выберите валюту: ");
            System.out.println("1. Доллары");
            System.out.println("2. Российский рубль");
            System.out.println("3. Беларусский рубль");
            choice = scanner.nextInt();

            switch (choice){
                case 1:
                    System.out.print("$: ");
                    dollars = scanner.nextDouble();
                    r_rub = dollars * 60;
                    b_rub = dollars * 3;
                    System.out.println("RUB: " + r_rub);
                    System.out.println("BYN: " + b_rub);
                    break;
                case 2:
                    System.out.print("RUB: ");
                    r_rub = scanner.nextDouble();
                    dollars = dollars / 60;
                    b_rub = dollars / 3;
                    System.out.println("$: " + dollars + "$");
                    System.out.println("BYN: " + b_rub);
                    break;
                case 3:
            }
        }

    }
}
