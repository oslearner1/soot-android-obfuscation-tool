import java.io.File;
import java.util.LinkedList;
import java.util.Scanner;
public class cmd{
	
	public static void main(String[] args) {
	System.out.println("Please input the file derectory:");
	Scanner in=new Scanner(System.in);
	String path=in.nextLine();
	//String path="E:/apktool2/AndroidDaemon/res/layout";
	readFilesDir(path);
	System.out.println("modify finished");
	}
	 public static void readFilesDir(String path){
	        LinkedList<File> Dirlist = new LinkedList<File>();
	        LinkedList<String> Filelist = new LinkedList<String>();
	        File dir = new File(path);
	        File[] files = dir.listFiles(); 

	        for(File file : files){
	            if(file.isDirectory()){
	                Dirlist.add(file);
	            }else{
	                Filelist.add(file.getAbsolutePath());
	                //System.out.println(file.getAbsolutePath());
	            }
	        }
	       for(int i=0;i<files.length;i++)
	       {
	    	   xml2 newxml=new xml2();
               newxml.xml_modify(files[i].getPath(),files[i].getName());
	       }
	    	   //System.out.println(files[i].getPath());
	    /*    File temp;
	        while(!Dirlist.isEmpty()){
	            temp = Dirlist.removeFirst();
	            if(temp.isDirectory()){
	                files = temp.listFiles();
	                if(files == null) continue;
	                for(File file : files){
	                    if(file.isDirectory()){
	                        Dirlist.add(file);
	                    }else{
	                        Filelist.add(file.getAbsolutePath());
	                        //System.out.println(file.getAbsolutePath());
	                    }	                      
	                }
	            }else{
	                System.out.println("-------------");
	            }
	        } */
	    }
}
