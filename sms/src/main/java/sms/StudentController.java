package sms;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.Query;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class StudentController{

    @Autowired
    EntityManager em;

    @RequestMapping("/createpage")
    public ModelAndView createPage() {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("create.jsp");
        System.out.println("Create student page");
        return mv;
    }

    @RequestMapping("/save")
    public ModelAndView saveStudent(
            @RequestParam String sname,
            @RequestParam long phone,
            @RequestParam String email,
            @RequestParam String city,
            @RequestParam char gender,
            @RequestParam String course,
            @RequestParam int sem,
            @RequestParam String intDomain
     ) {

        Student s = new Student();
        s.setSname(sname);
        s.setPhone(phone);
        s.setEmail(email);
        s.setCity(city);
        s.setGender(gender);
        s.setCourse(course);
        s.setSem(sem);
        s.setIntDomain(intDomain);

        System.out.println("Save page");
        System.out.println(em);
        
        EntityTransaction et = em.getTransaction();
       
        et.begin();
        em.merge(s);
        et.commit();

        Query q = em.createQuery("from Student");
        List<Student> students = q.getResultList();

        ModelAndView mv = new ModelAndView();
        mv.setViewName("allstudents.jsp");
        mv.addObject("msg", "Student Created Successfully...");
        mv.addObject("students", students);
        return mv;
    }

    @RequestMapping("/allstudents")
    public ModelAndView findAllVisitors() {
        Query q = em.createQuery("from Student");
        List<Student> students = q.getResultList();
        ModelAndView mv = new ModelAndView();
        mv.setViewName("allstudents.jsp");
        mv.addObject("students", students);
        return mv;
    }

    @RequestMapping("/delete")
    public ModelAndView deleteVisitorById(@RequestParam int id) {
        Student s = em.find(Student.class, id);
        ModelAndView mv = new ModelAndView();
        mv.setViewName("allstudents.jsp");
        if (s != null) {
            EntityTransaction et = em.getTransaction();
            et.begin();
            em.remove(s);
            et.commit();

            Query q = em.createQuery("from Student");
            List<Student> students = q.getResultList();
            mv.addObject("students", students);
            mv.addObject("msg", "Student Deleted Successfully");
        } else {
            Query q = em.createQuery("from Student");
            List<Student> students = q.getResultList();
            mv.addObject("students", students);
            mv.addObject("msg", "Unable to Delete The Student");
        }
        return mv;
    }

    @RequestMapping("/updatepage")
    public ModelAndView updatePage(@RequestParam int id) {
        Student s = em.find(Student.class, id);
        ModelAndView mv = new ModelAndView();
        mv.setViewName("update.jsp");
        mv.addObject("s", s);
        System.out.println(s);
        return mv;
    }

    @RequestMapping("/update")
    public ModelAndView updateVisitorById(
            @RequestParam int sid,
            @RequestParam String sname,
            @RequestParam long phone,
            @RequestParam String email,
            @RequestParam String city,
            @RequestParam char gender,
            @RequestParam String course,
            @RequestParam int sem,
            @RequestParam String intDomain) {

        Student s = em.find(Student.class, sid);
        s.setSname(sname);
        s.setPhone(phone);
        s.setEmail(email);
        s.setCity(city);
        s.setGender(gender);
        s.setCourse(course);
        s.setSem(sem);
        s.setIntDomain(intDomain);

        EntityTransaction et = em.getTransaction();
        et.begin();
        em.merge(s);
        et.commit();

        Query q = em.createQuery("from Student");
        List<Student> students = q.getResultList();

        ModelAndView mv = new ModelAndView();
        mv.setViewName("allstudents.jsp");
        mv.addObject("students", students);
        mv.addObject("msg", "Student Updated Successfully");
        return mv;
    }

    @RequestMapping("/search")
    public ModelAndView search(@RequestParam String sq) {
        Query q = em.createQuery("from Student");
        List<Student> sl = q.getResultList();
        ArrayList<Student> students = new ArrayList<Student>();
        for (Student s : sl) {
            if ((s.getSid() + "").equalsIgnoreCase(sq) ||
                (s.getSname() + "").equalsIgnoreCase(sq) ||
                (s.getPhone() + "").equalsIgnoreCase(sq) ||
                (s.getEmail() + "").equalsIgnoreCase(sq) ||
                (s.getCourse() + "").equalsIgnoreCase(sq)) {
                students.add(s);
            }
        }
        ModelAndView mv = new ModelAndView();
        mv.setViewName("allstudents.jsp");
        mv.addObject("students", students);
        return mv;
    }
}