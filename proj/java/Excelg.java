

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.CellStyle;
import org.apache.poi.ss.usermodel.CreationHelper;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;


/**
 * Servlet implementation class Excelg
 */
@WebServlet("/Excelg")
public class Excelg extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
     protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
      
        try {
            export(request,response);
        } catch (Exception ex) {
            Logger.getLogger(Excelg.class.getName()).log(Level.SEVERE, null, ex);
        }
      
    }
    
    private String getFileName(String baseName) {
        DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd_HH-mm-ss");
        String dateTimeInfo = dateFormat.format(new Date());
        return baseName.concat(String.format("_%s.xlsx", dateTimeInfo));
    }
      public void export(HttpServletRequest request, HttpServletResponse response) throws ClassNotFoundException {
       
 
        String excelFilePath = getFileName("user_Export");
        Class.forName("com.mysql.jdbc.Driver");
        try (Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/userdb","root","")) {
            String sql = "select s.rollno,m.name,f.marks,s.marks as ut2,i.marks as inter  from lp1t AS f INNER JOIN  member AS m ON m.rollno=f.rollno  INNER JOIN  lp2t AS s ON m.rollno=s.rollno INNER JOIN lpft AS i ON m.rollno=i.rollno" ;
 
            Statement statement = connection.createStatement();
 
            ResultSet result = statement.executeQuery(sql);
 
            XSSFWorkbook workbook = new XSSFWorkbook();
            XSSFSheet sheet = workbook.createSheet("abc");
 
            writeHeaderLine(result, sheet);
 
            writeDataLines(result, workbook, sheet);
 
           // FileOutputStream outputStream = new FileOutputStream(excelFilePath);
           response.setContentType("application/vnd.ms-excel");
           response.setHeader("Content-Disposition","attachment;filename=report.xlsx");
           workbook.write(response.getOutputStream());
            workbook.close();
 
            statement.close();
 
        } catch (SQLException e) {
            System.out.println("Datababse error:");
            e.printStackTrace();
        } catch (IOException e) {
            System.out.println("File IO error:");
            e.printStackTrace();
        }
    }
 
    private void writeHeaderLine(ResultSet result, XSSFSheet sheet) throws SQLException {
        // write header line containing column names
        ResultSetMetaData metaData = result.getMetaData();
        int numberOfColumns = metaData.getColumnCount();
 
        Row headerRow = sheet.createRow(0);
 
        // exclude the first column which is the ID field
        for (int i = 2; i <= numberOfColumns; i++) {
            String columnName = metaData.getColumnName(i);
            Cell headerCell = headerRow.createCell(i - 2);
            headerCell.setCellValue(columnName);
        }
    }
 
    private void writeDataLines(ResultSet result, XSSFWorkbook workbook, XSSFSheet sheet)
            throws SQLException {
        ResultSetMetaData metaData = result.getMetaData();
        int numberOfColumns = metaData.getColumnCount();
 
        int rowCount = 1;
 
        while (result.next()) {
            Row row = sheet.createRow(rowCount++);
 
            for (int i = 2; i <= numberOfColumns; i++) {
                Object valueObject = result.getObject(i);
 
                Cell cell = row.createCell(i - 2);
 
                if (valueObject instanceof Boolean)
                    cell.setCellValue((Boolean) valueObject);
                else if (valueObject instanceof Double)
                    cell.setCellValue((double) valueObject);
                else if (valueObject instanceof Float)
                    cell.setCellValue((float) valueObject);
                else if (valueObject instanceof Date) {
                    cell.setCellValue((Date) valueObject);
                    formatDateCell(workbook, cell);
                } else cell.setCellValue( valueObject.toString());
 
            }
 
        }
    }
 
    private void formatDateCell(XSSFWorkbook workbook, Cell cell) {
        CellStyle cellStyle = workbook.createCellStyle();
        CreationHelper creationHelper = workbook.getCreationHelper();
        cellStyle.setDataFormat(creationHelper.createDataFormat().getFormat("yyyy-MM-dd HH:mm:ss"));
        cell.setCellStyle(cellStyle);
    }
       

}
