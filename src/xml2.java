import java.io.File;
import java.io.FileNotFoundException;
import java.util.ArrayList;
import java.math.*;

import javax.xml.transform.*;
import javax.xml.transform.dom.*;
import javax.xml.transform.stream.*;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;

import org.w3c.dom.*;
public class xml2 {
	
	public static void xml_modify(String args,String args2) {

		File newfile=new File(args);		
		try{
		DocumentBuilder builder= DocumentBuilderFactory.newInstance().newDocumentBuilder();
		Document doc=builder.parse(newfile);
		doc.setXmlStandalone(true);
		Node father=doc.getFirstChild();
		
		//exchange
		search_exchange(father);
		
		//new xmls
		NamedNodeMap attr=father.getAttributes();
		int count=0;
		for(int i=0;i<attr.getLength();i++)
			if(attr.item(i).getNodeName().contains("xmlns"))
				count++;
		if(count>=2)
			return;  
		//if fathernode contains more than one namespace,don't depart  
			
		NodeList nodes=father.getChildNodes();
		Node del=null;
		for(int i=0;i<nodes.getLength();i++){
			if((nodes.item(i).getNodeName()!="#text")&&(nodes.item(i).getNodeName()!="include"))
			{
				del=nodes.item(i);
				if(del.hasChildNodes()==true)
					break;
			}
		}
		if(del.hasChildNodes()==false)
			return;
		//if this node doesn't contains any node,don't depart
		
		System.out.println(args2);
		Element inc=doc.createElement("include");
		String newname=args2.substring(0, args2.lastIndexOf(".xml"))+"_1";
		String newaddr=args.substring(0, args.lastIndexOf(".xml"))+"_1.xml";
		inc.setAttribute("layout", "@layout/"+newname);
		//father.appendChild(inc); 
		father.insertBefore(inc, del);
		father.removeChild(del);
		
		 DocumentBuilderFactory dbf=DocumentBuilderFactory.newInstance();
	     DocumentBuilder db=dbf.newDocumentBuilder();
	     Document doc2=db.newDocument();
	     doc2.setXmlStandalone(true);
	     Node father_last=father.getAttributes().getNamedItem("xmlns:android");
	     doc2.setDocumentURI(father_last.getNodeValue());
	     Element root=doc2.createElement(del.getNodeName());
	     copy(del,root,doc2,father_last.getNodeValue());
	     doc2.appendChild(root);
	     
	     TransformerFactory tff2=TransformerFactory.newInstance();
	     Transformer tf2=tff2.newTransformer();
	     tf2.setOutputProperty(OutputKeys.INDENT, "yes");
	     tf2.transform(new DOMSource(doc2), new StreamResult(newaddr)); 
	    
        TransformerFactory tff=TransformerFactory.newInstance();
        Transformer tf=tff.newTransformer();
        tf.setOutputProperty(OutputKeys.INDENT, "yes");
        tf.transform(new DOMSource(doc), new StreamResult(args));
	}catch (Exception e){
		e.printStackTrace();
	}
	}
	public static void search_exchange (Node  head){
		if(head.hasChildNodes()==false)return;
		NodeList children=head.getChildNodes();
		for(int i=0;i<children.getLength()-1;i++){
			for(int j=i+1;j<children.getLength();j++){
				int rand=1+(int)(Math.random()*100);
				if(attrequal(children.item(i),children.item(j))==true&&rand>50){
					if(children.item(i).hasChildNodes()){
					Node temp=head.replaceChild(children.item(i),children.item(j));
					head.insertBefore(temp, children.item(i));
					System.out.println("exchange success");
					}
				}
			}
		}
		for(int i=0;i<children.getLength();i++)
			search_exchange(children.item(i));
	}
	public static boolean attrequal(Node L1,Node L2){
		if(L1.getNodeName()==L2.getNodeName()){
			if(L1.getNodeName()!="#text"){
			NamedNodeMap L1_attr=L1.getAttributes();
			NamedNodeMap L2_attr=L2.getAttributes();
			if(L1_attr.getLength()==L2_attr.getLength()){
				for(int i1=0;i1<L1_attr.getLength();i1++){
					if(L1_attr.item(i1).getNodeName()!=L2_attr.item(i1).getNodeName()){
						return false;
					}
				}
				if(L1.hasChildNodes()==L2.hasChildNodes()==false)return true;
				else{
					NodeList L1_child=L1.getChildNodes();
					NodeList L2_child=L2.getChildNodes();
					boolean p=false;
					for(int i=0;i<L1_child.getLength();i++){
						p=attrequal(L1_child.item(i),L2_child.item(i));
					}
					return p;
				}
			}
			return false;
			}
			else
				return true;
		}
		return false;
	}
	public static double attrequal2(Node L1,Node L2){
		double result=0;
		if(L1.getNodeName()==L2.getNodeName()){
			if(L1.getNodeName()!="#text"){
			NamedNodeMap L1_attr=L1.getAttributes();
			NamedNodeMap L2_attr=L2.getAttributes();
			}
		}
		return 0;
	}
	public static void copy(Node del,Element root,Document doc,String te){
		for(int i=0;i<del.getAttributes().getLength();i++){
			String t=del.getAttributes().item(i).getNodeName();
			if(t.startsWith("android")){
				root.setAttributeNS(te,t, del.getAttributes().item(i).getNodeValue());
			}
			else
				root.setAttribute(t, del.getAttributes().item(i).getNodeValue());
			//System.out.println(t);
		}
		if(del.hasChildNodes()==false)
			return;
		for(int i=0;i<del.getChildNodes().getLength();i++){
			if(del.getChildNodes().item(i).getNodeName()!="#text"){
			Element temp=doc.createElement(del.getChildNodes().item(i).getNodeName());
			//System.out.println(temp.getNodeName());
			copy(del.getChildNodes().item(i),temp,doc,te);
			root.appendChild(temp);
			} 
		}
	}
}
