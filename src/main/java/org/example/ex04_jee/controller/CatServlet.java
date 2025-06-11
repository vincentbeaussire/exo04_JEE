package org.example.ex04_jee.controller;

import jakarta.servlet.ServletConfig;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.example.ex04_jee.model.Cat;

import java.io.IOException;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

@WebServlet(value = "/cats")
public class CatServlet extends HttpServlet {

    private List<Cat> catList;

    @Override
    public void init(ServletConfig config) throws ServletException {
        this.catList = new ArrayList<>();
        catList.add(new Cat("Mistigri", "British shorthair", "fish", LocalDate.of(2015, 3, 15)));
        catList.add(new Cat("Bianca", "Maine coon", "meat", LocalDate.of(2018, 10, 22)));
        catList.add(new Cat("Polin", "American shorthair","fish", LocalDate.of(2022, 8, 12)));
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setAttribute("cats", catList);
        req.getRequestDispatcher("/WEB-INF/cat/list.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String name = req.getParameter("name");
        String breed = req.getParameter("breed");
        String favoriteMeal = req.getParameter("favoritemeal");
        LocalDate birthDate = LocalDate.parse(req.getParameter("birthdate"));

        System.out.println("name :" + name);
        System.out.println("breed :" + breed);
        System.out.println("favoritemeal :" + favoriteMeal);
        System.out.println("birthdate :" + birthDate);
        doGet(req, resp);
    }
}
