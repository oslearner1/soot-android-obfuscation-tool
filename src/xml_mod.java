import java.io.File;
import java.io.FileNotFoundException;
import java.util.ArrayList;

import javax.xml.transform.*;
import javax.xml.transform.dom.*;
import javax.xml.transform.stream.*;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;

import org.w3c.dom.*;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
public class xml_mod {
	public static void main(String[] args) {
		File newfile=new File("E:\\new.xml");		
		try{
		DocumentBuilder builder= DocumentBuilderFactory.newInstance().newDocumentBuilder();
		Document doc=builder.parse(newfile);
		doc.setXmlStandalone(true);
		Node father=doc.getFirstChild();
		NamedNodeMap attr=father.getAttributes();
		int count=0;
		for(int i=0;i<attr.getLength();i++)
			if(attr.item(i).getNodeName().contains("xmlns"))
				count++;
		System.out.println(count);
			//System.out.println(attr.item(i).getNodeName()+attr.item(i).getNodeValue());
	/*	Node father=doc.getFirstChild();
		NamedNodeMap in=father.getAttributes();
		//System.out.println(in.item(4).getNodeValue());
		NodeList p=doc.getChildNodes();
		//System.out.println(p.item(0).getNodeName());
		//System.out.println(father.getNodeName());
		NodeList q=father.getChildNodes();
		//System.out.println(q.getLength());
		Node child=q.item(0);
		for(int i=0;i<q.getLength();i++){
		//	System.out.println(child.getNodeName());
			child=child.getNextSibling();
		}
		child=q.item(1);
		//System.out.println(child.getAttributes().getLength());
		//System.out.println(doc.getOwnerDocument());
		//System.out.println(doc.getElementById("RelativeLayout"));
		NodeList nodes=doc.getElementsByTagName("RelativeLayout");
		System.out.println(nodes.getLength());
		Element ite=(Element)nodes.item(0);
		ite.removeChild(nodes.item(1));
		/*Transformer former=TransformerFactory.newInstance().newTransformer();
		former.setParameter("version", "1.0");
		former.setParameter("encoding", "utf-8");
		DOMSource xml=new DOMSource(doc);
		StreamResult ooutputt=new StreamResult(new File("E:\\new3.xml"));
		former.transform(xml, ooutputt);*/
		//String qu=ite.getAttribute("android:layout_width");
		//NamedNodeMap qu=ite.getAttributes();	
		//System.out.println(qu.getLength());
	/*	DocumentBuilder builder2= DocumentBuilderFactory.newInstance().newDocumentBuilder();
		Document dom=builder2.newDocument();
		Element elem=dom.createElement("name");
		elem.setAttribute("name", "new");
		elem.setTextContent("This is a new xml");
		dom.appendChild(elem);
		TransformerFactory factory =TransformerFactory.newInstance();
		Transformer transformer=factory.newTransformer();
		//transformer.setOutputProperty(arg0, arg1);
		Source xmls=
		transformer.transform(xmlSource, outputTarget);; */
	/*	 DocumentBuilderFactory dbf=DocumentBuilderFactory.newInstance();
	        DocumentBuilder db=dbf.newDocumentBuilder();
	        Document document=db.newDocument();
	        document.setXmlStandalone(true);
	        Element root=document.createElement("RelativeLayout");
	        for (int i = 0; i < 2; i++) {
	            Element student=document.createElement("android:student");
	            Element name=document.createElement("android:name"),
	                    age=document.createElement("android:age"),
	                    grade=document.createElement("android:grade");
	                student.setAttribute("id", i+"");
	                name.setTextContent("уе"+i);
	                age.setTextContent(""+i*5);
	                grade.setTextContent(""+i*20);
	                student.appendChild(name);
	                student.appendChild(age);
	                student.appendChild(grade);
	            root.appendChild(student);
	        }
	        document.appendChild(root);     
	        TransformerFactory tff=TransformerFactory.newInstance();
	        Transformer tf=tff.newTransformer();
	        tf.setOutputProperty(OutputKeys.INDENT, "yes");
	        tf.transform(new DOMSource(document), new StreamResult("E:\\new4.xml")); */
		}catch (Exception e){
			
		}
	}

	
}
