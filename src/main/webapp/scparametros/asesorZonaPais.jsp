<%@page import="java.util.GregorianCalendar"%>
<%@page import="java.util.Calendar"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

/*importamos las librer�as de JasperReports*/
<%@ page import="java.io.*" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@page import="net.sf.jasperreports.engine.JasperRunManager"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.HashMap"%>
<%@page import="net.sf.jasperreports.engine.JasperPrint"%>
<%@page import="net.sf.jasperreports.engine.JasperFillManager"%>
<%@page import="net.sf.jasperreports.engine.JasperFillManager"%>
<%@page import="net.sf.jasperreports.engine.JRExporterParameter"%>
<%@page import="net.sf.jasperreports.engine.export.JRPdfExporter"%>
<%@page import="net.sf.jasperreports.engine.JRExporter"%>
<%@page import="net.sf.jasperreports.engine.JRExporter"%>
<%@page import="net.sf.jasperreports.engine.util.JRLoader"%>
<%@page import="net.sf.jasperreports.engine.JasperReport"%>

<html>
    <%
        /*Parametros para realizar la conexi�n*/
        String inicial=request.getParameter("municipio");
        String fin=request.getParameter("departamento");
        String driver = "com.mysql.jdbc.Driver";
        String connectString = "jdbc:mysql://localhost:3306/aseguradora";
        String user = "admin";
        String password = "master";
        Map parametros = new HashMap();
         Calendar fecha = new GregorianCalendar();
        //Obtenemos el valor del a�o, mes, d�a,
        //hora, minuto y segundo del sistema
        //usando el m�todo get y el par�metro correspondiente
        int a�o = fecha.get(Calendar.YEAR);
        int mes = fecha.get(Calendar.MONTH);
        int dia = fecha.get(Calendar.DAY_OF_MONTH);
        int hora = fecha.get(Calendar.HOUR_OF_DAY);
        int minuto = fecha.get(Calendar.MINUTE);
        int segundo = fecha.get(Calendar.SECOND);
        String fechaReporte = +dia + "/" + (mes + 1) + "/" + a�o;
        String horaReporte = hora + ":" + minuto + ":" + segundo;
        System.out.println("Fecha Actual: "
                + dia + "/" + (mes + 1) + "/" + a�o);
        System.out.printf("Hora Actual: %02d:%02d:%02d %n",
                hora, minuto, segundo);

        //Integer id2=Integer.parseInt(id);
        parametros.put("municipio", inicial);
        parametros.put("departamento",fin);
        parametros.put("fechaRep", fechaReporte);
        parametros.put("horaRep", horaReporte);
        
        //System.out.println(id);
        Connection conexion;
        Class.forName(driver);
        conexion = DriverManager.getConnection(connectString, user, password);
        System.out.println(application.getRealPath("/reportes/ReporteasesorZonaPais.jasper"));
        File file=new File(application.getRealPath("/reportes/ReporteasesorZonaPais.jasper"));
        JasperReport reporte = (JasperReport) JRLoader.loadObject(file);
        byte[] bytes = JasperRunManager.runReportToPdf(reporte, parametros, conexion);
        response.setContentType("application/pdf");
        response.setContentLength(bytes.length);
        ServletOutputStream ouputStream = response.getOutputStream();
        ouputStream.write(bytes, 0, bytes.length);
        ouputStream.flush();
        ouputStream.close();
    %>
</html>