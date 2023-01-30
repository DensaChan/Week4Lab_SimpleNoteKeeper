package servlets;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import models.Note;

/**
 *
 * @author Densa
 */
public class NoteServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        // file path of the note.text file
        String path = getServletContext().getRealPath("/WEB-INF/note.txt");
        
        // file io class
        BufferedReader br = new BufferedReader(new FileReader(new File(path)));
        
        // reads file io 
        String title = br.readLine();
        String contents = br.readLine();
        Note note = new Note();
        note.setTitle(title);
        note.setContents(contents);
        request.setAttribute("note", note);
        
        // requests either viewnote.jsp or editnote.jsp
        if (request.getParameter("Edit") !=null) {
            getServletContext().getRequestDispatcher("/WEB-INF/eiewnote.jsp").forward(request, response);
        } else {
            getServletContext().getRequestDispatcher("/WEB-INF/viewnote.jsp").forward(request, response);
        }
    }
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       getServletContext().getRequestDispatcher("/WEB-INF/viewnote.jsp").forward(request, response);
    }

}
