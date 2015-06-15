<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

/*importamos las librerías de JasperReports*/
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
        /*Parametros para realizar la conexión*/
        String inicial=request.getParameter("municipio");
        String fin=request.getParameter("departamento");
        String driver = "com.mysql.jdbc.Driver";
        String connectString = "jdbc:mysql://localhost:3306/aseguradora";
        String user = "admin";
        String password = "master";
        Map parametros = new HashMap();
        //Integer id2=Integer.parseInt(id);
        parametros.put("municipio", inicial);
        parametros.put("departamento",fin);
        //System.out.println(id);
        Connection conexion;
        Class.forName(driver);
        conexion = DriverManager.getConnection(connectString, user, password);
        System.out.println(application.getRealPath("/reportes/ReporteComUsados.jasper"));
        File file=new File(application.getRealPath("/reportes/ReporteComUsados.jasper"));
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