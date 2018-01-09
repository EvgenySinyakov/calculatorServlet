package ru.finalCalc.servlet;


import java.io.*;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

@WebServlet("/finalCalc")
public class finalCalc extends HttpServlet
{
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {

        try {
            String stringVar = req.getParameter("nameResult"); //taking values from nameResult
            String[] arrayVar = stringVar.split(" "); //making stringVar into array; elements divides by  " "

            Double num1 = Double.parseDouble(arrayVar[0]); //parse into Double array[0]
            Double num2 = Double.parseDouble(arrayVar[2]); //parse into Double array[2]

            Double finalRes = calcResult(num1, num2, arrayVar[1]); //using function of calculation

            req.setAttribute("finalRes", finalRes); //set into var finalRes value of finalRes

        } catch (Exception e) {
            req.setAttribute("finalRes", "Error! Wrong type of input! Try again!"); //if it was wrong type of input

        } finally {
            req.getRequestDispatcher("startCalc.jsp").forward(req, res); //return startCalc page;
        }
    }

    private Double calcResult(Double x, Double y, String operation) { //function for calculation

        double result = 0;
        switch (operation) {
            case "+":
                result = x + y;
                break;
            case "-":
                result = x - y;
                break;
            case "*":
                result = x * y;
                break;
            case "/":
                result = x / y;
                break;
        }
        return result;
    }



}
