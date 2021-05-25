import java.io.File;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;

import org.w3c.dom.Document;
import org.w3c.dom.NamedNodeMap;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

public class XMLFilter {
	public final static String[] Accept_Layout_Widget = { "LinearLayout", "RelativeLayout", "FrameLayout",
			"PercentFrameLayout", "Button", "ImageView", "TextView", "ImageView" };
	public final static List<String> Accept_View = Arrays.asList(Accept_Layout_Widget);
	public final static List<String> LinearLayout_attr = new ArrayList<String>(
			Arrays.asList("id","gravity", "orientation", "layout_width", "layout_height", "background","layout_alignParentBottom"));
	public final static List<String> RelativeLayout_attr = new ArrayList<String>(
			Arrays.asList("id","gravity", "orientation", "layout_width", "layout_height", "layout_weight","background","layout_above","layout_below","layout_centerHorizontal"));
	public final static List<String> FrameLayout_attr = new ArrayList<String>(
			Arrays.asList("id","gravity", "orientation", "layout_width", "layout_height", "background"));
	public final static List<String> PercentFrameLayout_attr = new ArrayList<String>(
			Arrays.asList("id","gravity", "orientation", "layout_width", "layout_height", "background"));
	public final static List<String> Button_attr = new ArrayList<String>(
			Arrays.asList("id","gravity", "orientation", "layout_width", "layout_height", "background", "text"));
	public final static List<String> TextView_attr = new ArrayList<String>(
			Arrays.asList("id", "layout_below","layout_above","layout_centerHorizontal", "layout_width", "layout_height", "background", "text"));
	public final static List<String> EditText_attr = new ArrayList<String>(
			Arrays.asList("id","gravity", "orientation", "layout_width", "layout_height", "background", "text"));
	public final static List<String> ImageView_attr = new ArrayList<String>(
			Arrays.asList("id", "layout_width", "layout_height", "background", "src","layout_alignParentBottom","layout_centerHorizontal"));

	public static List<String> toresolveresource=new ArrayList<String>();
	public static void main(String[] args) throws Exception {
		// TODO Auto-generated method stub
		/*
		 * Class cl=XMLFilter.class; System.out.println(cl.getName()); Field ff =
		 * cl.getField("Accept_View"); List<String> temp = (List<String>) ff.get(null);
		 * System.out.println(temp.toString()); Field[] field=cl.getFields();
		 * 
		 * for(Field f:field) { f.setAccessible(true); System.out.println(f.getName() +
		 * f.get(null)); if (f.getName().equals("Accept_View")) { List<String> tempp =
		 * (List<String>) f.get(null); System.out.println(temp.toString()); } }
		 */
		File file = new File("E:/layout/activity_assistant_main.xml");
		try {
			DocumentBuilder builder = DocumentBuilderFactory.newInstance().newDocumentBuilder();
			Document doc = builder.parse(file);
			doc.setXmlStandalone(true);
			toresolveresource=new ArrayList<String>();
			Node father = doc.getFirstChild();
			filter(father);
			printNode(father);
			System.out.println(toresolveresource.toString());
			String srcdir="E:\\apktool2\\AndroidDaemon\\res";
			checkres(srcdir,toresolveresource);
		} catch (Exception e) {
			e.printStackTrace();
			// TODO: handle exception
		}
	}

	public static Node filter(Node n) throws Exception {
		if (n != null) {
			if (Accept_View.contains(n.getNodeName())) {
				checkAttr(n);
				NodeList childs = n.getChildNodes();
				for (int i = childs.getLength() - 1; i >= 0; i--) {
					if (filter(childs.item(i)) == null) {
						n.removeChild(childs.item(i));
					}
				}
				return n;
			} else {
				return null;
				// n.getParentNode().removeChild(n);
			}
		} else {
			return null;
		}
	}

	public static void checkAttr(Node n) throws Exception {
		Class cl = XMLFilter.class;
		String fieldname = n.getNodeName() + "_attr";
		Field field = cl.getField(fieldname);
		List<String> temp = (List<String>) field.get(null);
		List<String> attrs_names = new ArrayList<String>();
		NamedNodeMap attrs = n.getAttributes();
		for (int i = 0; i < attrs.getLength(); i++) {
			/*
			 * if (!temp.contains(attrs.item(i).getNodeName().replaceFirst("android:", "")))
			 * { attrs.removeNamedItem(attrs.item(i).getNodeName()); }
			 */
			attrs_names.add(attrs.item(i).getNodeName());
		}
		for (String aName : attrs_names) {
			if (!temp.contains(aName.replaceFirst("android:", "")))
				attrs.removeNamedItem(aName);
			else {
			String value=attrs.getNamedItem(aName).getNodeValue();
			if(value.startsWith("@dimen"))
				toresolveresource.add(value);
			}
		}
	}

	public static void printNode(Node n) {
		if (n != null) {
			if (n.getNodeName().startsWith("#text")) {
				System.out.println(n.getNodeName() + " " + n.getNodeValue());
				return;
			}
			System.out.print(n.getNodeName() + " ");
			NamedNodeMap attrs = n.getAttributes();
			for (int i = 0; i < attrs.getLength(); i++) {
				System.out.print(attrs.item(i).getNodeName() + ":" + attrs.item(i).getNodeValue() + " ");
			}
			System.out.println();
			NodeList childs = n.getChildNodes();
			for (int i = 0; i < childs.getLength(); i++) {
				System.out.print(" ");
				printNode(childs.item(i));
			}
		}
	}
	public static Map<String,String> checkres(String srcdir,List<String> checkname) {
		Map<String,String> result=new HashMap<String, String>();
		for(String name:checkname)
			result.put(name, null);
		LinkedList<File> Dirlist = new LinkedList<File>();
        LinkedList<File> Filelist = new LinkedList<File>();       
        File dir = new File(srcdir);
        Dirlist.add(dir);
        while(!Dirlist.isEmpty()) {
        	File file=Dirlist.poll();
        	File[] files = file.listFiles(); 
        	for(File mfile : files){
                if(mfile.isDirectory()){
                    Dirlist.add(mfile);
                    //System.out.println(file.getAbsolutePath());
                }
                else {
                	if(mfile.getName().contains("dimen"))
					Filelist.add(mfile);
				}
            }
        }
        try {
        	DocumentBuilder builder=DocumentBuilderFactory.newInstance().newDocumentBuilder();
        	for(File cfile:Filelist) {
        		Document doc=builder.parse(cfile);
        		doc.setXmlStandalone(true);
        		Node father=doc.getFirstChild();
        		NodeList children=father.getChildNodes();
        		for(int i=0;i<children.getLength();i++) {
        			Node n=children.item(i);
        			if(n.getNodeName().equals("dimen")) {
        				String name=n.getAttributes().item(0).getNodeValue();
        				
        				for(String allname: checkname){
        					if(allname.contains(name)) {
        						result.put(allname, n.getChildNodes().item(0).getNodeValue());
        						break;
        					}
        				}
        				
        			}
        		}
        	}
		
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
        return result;
	}
}
