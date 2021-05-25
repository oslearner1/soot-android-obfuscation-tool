import java.io.File;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;

import org.w3c.dom.Document;
import org.w3c.dom.NamedNodeMap;
import org.w3c.dom.Node;

import soot.Body;
import soot.BodyTransformer;
import soot.IntType;
import soot.Local;
import soot.PackManager;
import soot.PatchingChain;
import soot.RefType;
import soot.Scene;
import soot.SootClass;
import soot.SootField;
import soot.SootMethod;
import soot.Transform;
import soot.Unit;
import soot.jimple.FloatConstant;
import soot.jimple.IntConstant;
import soot.jimple.InvokeExpr;
import soot.jimple.Jimple;
import soot.jimple.SpecialInvokeExpr;
import soot.jimple.StaticInvokeExpr;
import soot.jimple.StringConstant;
import soot.options.Options;
import soot.tagkit.IntegerConstantValueTag;

public class AndroidInstrument {
	private static int butcount = 0;
	private static int textviewcount = 0;
	private static int edittextcount = 0;
	private static int progressbarcount = 0;
	private static int imageviewcount = 0;
	private static int relativelayoutcount = 0;
	private static int linearlayoutcount = 0;
	private static int framelayoutcount = 0;
	private static int percentframelayoutcount = 0;
	private static int paramcount=0;
	private static int countImage=0;
	private static Map<String, Local> idMap=new HashMap<String, Local>();
	private static List<String> acceptable = Arrays.asList("Button", "TextView", "RelativeLayout", "LinearLayout");
	private static Map<String,String> valueMap;
	private static Node insertNode=generateNode();
	
	/**
	 * insert widgets: Button EditText TextView progressbar imageview alertdialog
	 * progressdialog insert layouts: RelativeLayout LinearLayout framelayout
	 * percentframelayout
	 * 
	 * 
	 */
	public static void main(String[] args) {

		// prefer Android APK files// -src-prec apk
		Options.v().set_src_prec(Options.src_prec_apk);
		Options.v().set_force_overwrite(true);

		// output as APK, too//-f J

		Options.v().set_output_format(Options.output_format_dex);

		// resolve the PrintStream and System soot-classes
		Options.v().set_allow_phantom_refs(true);
		Scene.v().addBasicClass("java.io.PrintStream", SootClass.SIGNATURES);
		Scene.v().addBasicClass("java.lang.System", SootClass.SIGNATURES);
		Scene.v().addBasicClass("android.widget.LinearLayout$LayoutParams", SootClass.SIGNATURES);
		Scene.v().addBasicClass("android.widget.RelativeLayout$LayoutParams", SootClass.SIGNATURES);
		Scene.v().addBasicClass("android.widget.EditText", SootClass.SIGNATURES);
		Scene.v().addBasicClass("android.widget.ImageView", SootClass.SIGNATURES);
		Scene.v().addBasicClass("android.widget.RelativeLayout", SootClass.SIGNATURES);
		Scene.v().addBasicClass("android.widget.LinearLayout", SootClass.SIGNATURES);
		
		PackManager.v().getPack("jtp").add(new Transform("jtp.myInstrumenter", new BodyTransformer() {

			@Override
			protected void internalTransform(final Body b, String phaseName,
					@SuppressWarnings("rawtypes") Map options) {
				//String className=b.getMethod().getDeclaringClass().getSuperclass().getName();
//				System.out.println("Name:" + b.getMethod().getName());
//				System.out.println("Class:" + b.getMethod().getDeclaringClass().getName());
//				System.out.println("SuperClass:" + b.getMethod().getDeclaringClass().getSuperclass().getName());
				
				if (b.getMethod().getName().equals("onCreate")
						&& b.getMethod().getDeclaringClass().getSuperclass().getName().contains("Activity")) {
					final PatchingChain<Unit> units = b.getUnits();
					Unit u = units.getLast();
					
					
					addNode(insertNode, units, u, b);
					
					/*
					for(int i=0;i<600;i+=60)
						for(int j=0;j<1200;j+=120)
							add_button(units, u, b, i, j);
							*/
					//add_relative_layout(units, u, b);
					//add_button(units, u, b, 100, 200);
					//add_button(units, u, b, 100, 320);
					//add_button(units, u, b, 100, 440);
					//add_textview(units, u, b, 100, 400);
					//add_edittext(units, u, b, 100, 600);
					//add_imageview(units, u, b, 100, 700);
					System.out.println(b.toString());

					/*
					 * Local self = b.getThisLocal(); SootClass button =
					 * Scene.v().getSootClass("android.widget.Button"); Local button1 =
					 * Jimple.v().newLocal("button1", RefType.v("android.widget.Button"));
					 * b.getLocals().add(button1); SootMethod bButton =
					 * button.getMethod("void <init>(android.content.Context)"); SpecialInvokeExpr
					 * expr = Jimple.v().newSpecialInvokeExpr(button1, bButton.makeRef(), self);
					 * units.insertBefore(Jimple.v().newAssignStmt(button1,
					 * Jimple.v().newNewExpr(RefType.v("android.widget.Button"))), u);
					 * units.insertBefore(Jimple.v().newInvokeStmt(expr), u);
					 * System.out.println("Insert button1 before statement: " + u.toString() +
					 * " at: " + b.getMethod());
					 */

				}
				//access R....
/*
				else {
			
					
					System.out.println("Method:" + b.getMethod().getName() + "  Class:"
							+ b.getMethod().getDeclaringClass().getPackageName());
					SootClass sc = b.getMethod().getDeclaringClass();
					//SootClass sc2 = new SootClass("com.example.tpk.tvt");
					//assert (sc2 == null);
					//sc.getFieldByName("");
					for (Iterator<SootField> tempfield = sc.getFields().iterator(); tempfield.hasNext();) {
						SootField f = tempfield.next();
						System.out.println(f.getName() + " Tag number:" + f.getTags().size());
						if (f.getTags().size() == 1) {
							if (f.getTags().get(0) instanceof IntegerConstantValueTag) {
								IntegerConstantValueTag tg = (IntegerConstantValueTag) f.getTags().get(0);
								System.out.println(tg.getName() + " value:" + tg.getIntValue());
							}
						}
						// f.toString();
						// System.out.println(f.getName() + " " +f.getTags().toString());
						// System.out.println(f.getName() + " " +f.getTags().get(0).getName());
					// if (sc.getName().endsWith("R$drawable")) {
					// List<Tag> tag = f.getTags();
					// for (Tag tg : tag) {
					// System.out.print("Name:" + tg.getName() + " Value:" + tg.getValue() + " ~");
					// }
					// }
					}
				}
*/
				/*
				 * final PatchingChain<Unit> units = b.getUnits();
				 * 
				 * // important to use snapshotIterator here for (Iterator<Unit> iter =
				 * units.snapshotIterator(); iter.hasNext();) { final Unit u = iter.next();
				 * u.apply(new AbstractStmtSwitch() {
				 * 
				 * @Override public void caseInvokeStmt(InvokeStmt stmt) { InvokeExpr invokeExpr
				 * = stmt.getInvokeExpr(); if
				 * (invokeExpr.getMethod().getName().equals("onCreate")) { // Unit u2 =
				 * units.getSuccOf(u); System.out.println("The units with size:" +
				 * units.size()); System.out.println("The first unit of units is:" +
				 * units.getFirst()); System.out.println("The second unit of units is:" +
				 * units.getSuccOf(units.getFirst()));
				 * System.out.println("The third unit of units is:" +
				 * units.getSuccOf(units.getSuccOf(units.getFirst())));
				 * System.out.println("The last unit of units is:" + units.getLast());
				 * System.out.println(b.getMethod().getName()); Unit firstu = units.getFirst();
				 * System.out.println(); List<Tag> tags = firstu.getTags(); for (Tag tag : tags)
				 * { System.out.println(tag.getName() + ": " + tag.getValue()); }
				 * 
				 * System.out.println(u.toString()); Unit temp = u; while (units.getSuccOf(temp)
				 * != null) { temp = units.getSuccOf(temp); System.out.println(temp.toString());
				 * }
				 * 
				 * 
				 * Local self = b.getThisLocal(); SootClass button =
				 * Scene.v().getSootClass("android.widget.Button"); Local button1 =
				 * Jimple.v().newLocal("button1", RefType.v("android.widget.Button"));
				 * b.getLocals().add(button1); SootMethod bButton =
				 * button.getMethod("void <init>(android.content.Context)"); SpecialInvokeExpr
				 * expr = Jimple.v().newSpecialInvokeExpr(button1, bButton.makeRef(), self);
				 * units.insertAfter(Jimple.v().newInvokeStmt(expr), u);
				 * units.insertAfter(Jimple.v().newAssignStmt(button1,
				 * Jimple.v().newNewExpr(RefType.v("android.widget.Button"))), u);
				 * 
				 * // add_button(units, u2, b, 100, 400);
				 * 
				 * Local tmpRef = addTmpRef(b); Local tmpString = addTmpString(b);
				 * 
				 * // insert "tmpRef = java.lang.System.out;" units.insertBefore(
				 * Jimple.v().newAssignStmt(tmpRef, Jimple.v().newStaticFieldRef(Scene.v()
				 * .getField("<java.lang.System: java.io.PrintStream out>").makeRef())), u);
				 * 
				 * // insert "tmpLong = 'HELLO';"
				 * units.insertBefore(Jimple.v().newAssignStmt(tmpString,
				 * StringConstant.v("HELLO")), u);
				 * 
				 * // insert "tmpRef.println(tmpString);" SootMethod toCall =
				 * Scene.v().getSootClass("java.io.PrintStream")
				 * .getMethod("void println(java.lang.String)"); units.insertBefore(
				 * Jimple.v().newInvokeStmt( Jimple.v().newVirtualInvokeExpr(tmpRef,
				 * toCall.makeRef(), tmpString)), u);
				 * 
				 * // check that we did not mess up the Jimple
				 * 
				 * 
				 * b.validate(); System.out.println("this is Body b:");
				 * System.out.println(b.toString()); } } }); }
				 */
			}

		}));

		soot.Main.main(args);
		System.out.println(args[args.length - 1]);
		System.out.println("The total insert num is: " + butcount);
		System.out.println("The image count "+countImage);
	}
	
	private static Node generateNode() {
		File file = new File("apktool\\AndroidDaemon\\res\\layout\\activity_assistant_main.xml");
		String srcdir="apktool\\AndroidDaemon\\res";
		Node father=null;
		try {
			DocumentBuilder builder = DocumentBuilderFactory.newInstance().newDocumentBuilder();
			Document doc = builder.parse(file);
			doc.setXmlStandalone(true);
			father = doc.getFirstChild();
			XMLFilter.filter(father);
			//XMLFilter.printNode(father);
			valueMap=XMLFilter.checkres(srcdir, XMLFilter.toresolveresource);
		} catch (Exception e) {
			e.printStackTrace();
			// TODO: handle exception
		}
		return father;
	}
	
	private static Local addTmpRef(Body body) {
		Local tmpRef = Jimple.v().newLocal("tmpRef", RefType.v("java.io.PrintStream"));
		body.getLocals().add(tmpRef);
		return tmpRef;
	}

	private static Local addTmpString(Body body) {
		Local tmpString = Jimple.v().newLocal("tmpString", RefType.v("java.lang.String"));
		body.getLocals().add(tmpString);
		return tmpString;
	}

	private static void add_button(PatchingChain<Unit> units, Unit u, Body b, float x, float y) {
		String butname = "button" + butcount;
		butcount++;
		Local self = b.getThisLocal();
		SootClass button = Scene.v().getSootClass("android.widget.Button");
		Local button1 = Jimple.v().newLocal(butname, RefType.v("android.widget.Button"));
		b.getLocals().add(button1);
		SootMethod bButton = button.getMethod("void <init>(android.content.Context)");
		SpecialInvokeExpr expr = Jimple.v().newSpecialInvokeExpr(button1, bButton.makeRef(), self);

		SootClass alpha = Scene.v().getSootClass("android.view.View");
		SootMethod set2 = alpha.getMethod("void setAlpha(float)");
		SootMethod setx = alpha.getMethod("void setX(float)");
		SootMethod sety = alpha.getMethod("void setY(float)");
		SootMethod setclick=alpha.getMethod("void setClickable(boolean)");
		InvokeExpr expr3 = Jimple.v().newVirtualInvokeExpr(button1, set2.makeRef(), FloatConstant.v(0.0001f));
		InvokeExpr expr5 = Jimple.v().newVirtualInvokeExpr(button1, setx.makeRef(), FloatConstant.v(x));
		InvokeExpr expr6 = Jimple.v().newVirtualInvokeExpr(button1, sety.makeRef(), FloatConstant.v(y));
		InvokeExpr clickexpr=Jimple.v().newVirtualInvokeExpr(button1, setclick.makeRef(),IntConstant.v(0));
		
		SootClass textv = Scene.v().getSootClass("android.widget.TextView");
		SootMethod set1 = textv.getMethod("void setText(java.lang.CharSequence)");
 
		InvokeExpr expr4 = Jimple.v().newVirtualInvokeExpr(button1, set1.makeRef(),
				StringConstant.v("I am a soot button"));

		String bparam = "butparam" + butcount;
		Local butparam = Jimple.v().newLocal(bparam, RefType.v("android.widget.LinearLayout$LayoutParams"));
		b.getLocals().add(butparam);
		SootClass param = Scene.v().getSootClass("android.widget.LinearLayout$LayoutParams");
		SootMethod initparam = param.getMethod("void <init>(int,int)");
		SpecialInvokeExpr expr7 = Jimple.v().newSpecialInvokeExpr(butparam, initparam.makeRef(), IntConstant.v(-2),
				IntConstant.v(-2));

		SootClass addview = Scene.v().getSootClass("android.app.Activity");
		SootMethod addcontentview = addview
				.getMethod("void addContentView(android.view.View,android.view.ViewGroup$LayoutParams)");
		InvokeExpr expr8 = Jimple.v().newVirtualInvokeExpr(b.getThisLocal(), addcontentview.makeRef(), button1,
				butparam);

		units.insertBefore(Jimple.v().newAssignStmt(button1, Jimple.v().newNewExpr(RefType.v("android.widget.Button"))),
				u);

		units.insertBefore(Jimple.v().newAssignStmt(butparam,
				Jimple.v().newNewExpr(RefType.v("android.widget.LinearLayout$LayoutParams"))), u);

		units.insertBefore(Jimple.v().newInvokeStmt(expr), u);
		units.insertBefore(Jimple.v().newInvokeStmt(expr7), u);
		units.insertBefore(Jimple.v().newInvokeStmt(expr3), u);
		units.insertBefore(Jimple.v().newInvokeStmt(expr4), u);
		units.insertBefore(Jimple.v().newInvokeStmt(expr5), u);
		units.insertBefore(Jimple.v().newInvokeStmt(expr6), u);
		units.insertBefore(Jimple.v().newInvokeStmt(clickexpr), u);
		units.insertBefore(Jimple.v().newInvokeStmt(expr8), u);

		/*String idName="but1";
		Local idn=Jimple.v().newLocal(idName,IntType.v());
		b.getLocals().add(idn);
		SootMethod genId=alpha.getMethod("int generateViewId()");
		StaticInvokeExpr genExpr=Jimple.v().newStaticInvokeExpr(genId.makeRef());
		units.insertBefore(Jimple.v().newAssignStmt(idn,genExpr ),u);
		
		
		SootMethod setId=alpha.getMethod("void setId(int)");
		InvokeExpr setIdExpr=Jimple.v().newVirtualInvokeExpr(button1, setId.makeRef(),idn);
		units.insertBefore(Jimple.v().newInvokeStmt(setIdExpr), u);
		*/
		
		System.out
				.println("Insert " + button1.getName() + " before statement: " + u.toString() + " at:" + b.getMethod());

	}

	private static void add_edittext(PatchingChain<Unit> units, Unit u, Body b, float x, float y) {
		String butname = "edittext" + edittextcount;
		edittextcount++;
		Local self = b.getThisLocal();
		SootClass edittext = Scene.v().getSootClass("android.widget.EditText");
		Local edittext1 = Jimple.v().newLocal(butname, RefType.v("android.widget.EditText"));
		b.getLocals().add(edittext1);
		SootMethod bButton = edittext.getMethod("void <init>(android.content.Context)");
		SpecialInvokeExpr expr = Jimple.v().newSpecialInvokeExpr(edittext1, bButton.makeRef(), self);
		units.insertBefore(
				Jimple.v().newAssignStmt(edittext1, Jimple.v().newNewExpr(RefType.v("android.widget.EditText"))), u);

		SootClass alpha = Scene.v().getSootClass("android.view.View");
		SootMethod set2 = alpha.getMethod("void setAlpha(float)");
		SootMethod setx = alpha.getMethod("void setX(float)");
		SootMethod sety = alpha.getMethod("void setY(float)");
		InvokeExpr expr3 = Jimple.v().newVirtualInvokeExpr(edittext1, set2.makeRef(), FloatConstant.v(1));
		InvokeExpr expr5 = Jimple.v().newVirtualInvokeExpr(edittext1, setx.makeRef(), FloatConstant.v(x));
		InvokeExpr expr6 = Jimple.v().newVirtualInvokeExpr(edittext1, sety.makeRef(), FloatConstant.v(y));

		SootClass textv = Scene.v().getSootClass("android.widget.TextView");
		SootMethod set1 = textv.getMethod("void setText(java.lang.CharSequence)");

		InvokeExpr expr4 = Jimple.v().newVirtualInvokeExpr(edittext1, set1.makeRef(),
				StringConstant.v("I am a soot edittext"));

		String bparam = "ediparam" + edittextcount;
		Local butparam = Jimple.v().newLocal(bparam, RefType.v("android.widget.LinearLayout$LayoutParams"));
		b.getLocals().add(butparam);
		SootClass param = Scene.v().getSootClass("android.widget.LinearLayout$LayoutParams");
		SootMethod initparam = param.getMethod("void <init>(int,int)");
		SpecialInvokeExpr expr7 = Jimple.v().newSpecialInvokeExpr(butparam, initparam.makeRef(), IntConstant.v(-2),
				IntConstant.v(-2));
		units.insertBefore(Jimple.v().newAssignStmt(butparam,
				Jimple.v().newNewExpr(RefType.v("android.widget.LinearLayout$LayoutParams"))), u);

		SootClass addview = Scene.v().getSootClass("android.app.Activity");
		SootMethod addcontentview = addview
				.getMethod("void addContentView(android.view.View,android.view.ViewGroup$LayoutParams)");
		InvokeExpr expr8 = Jimple.v().newVirtualInvokeExpr(b.getThisLocal(), addcontentview.makeRef(), edittext1,
				butparam);

		units.insertBefore(Jimple.v().newInvokeStmt(expr), u);
		units.insertBefore(Jimple.v().newInvokeStmt(expr7), u);
		units.insertBefore(Jimple.v().newInvokeStmt(expr3), u);
		units.insertBefore(Jimple.v().newInvokeStmt(expr4), u);
		units.insertBefore(Jimple.v().newInvokeStmt(expr5), u);
		units.insertBefore(Jimple.v().newInvokeStmt(expr6), u);
		units.insertBefore(Jimple.v().newInvokeStmt(expr8), u);

		System.out.println(
				"Insert " + edittext1.getName() + " before statement: " + u.toString() + " at:" + b.getMethod());

	}

	private static void add_textview(PatchingChain<Unit> units, Unit u, Body b, float x, float y) {
		String tvname = "textview" + textviewcount;
		textviewcount++;
		Local self = b.getThisLocal();
		SootClass textv = Scene.v().getSootClass("android.widget.TextView");
		Local textview1 = Jimple.v().newLocal(tvname, RefType.v("android.widget.TextView"));
		b.getLocals().add(textview1);
		SootMethod ttextv = textv.getMethod("void <init>(android.content.Context)");
		SpecialInvokeExpr expr = Jimple.v().newSpecialInvokeExpr(textview1, ttextv.makeRef(), self);
		units.insertBefore(
				Jimple.v().newAssignStmt(textview1, Jimple.v().newNewExpr(RefType.v("android.widget.TextView"))), u);

		SootClass alpha = Scene.v().getSootClass("android.view.View");
		SootMethod set2 = alpha.getMethod("void setAlpha(float)");
		SootMethod setx = alpha.getMethod("void setX(float)");
		SootMethod sety = alpha.getMethod("void setY(float)");
		InvokeExpr expr3 = Jimple.v().newVirtualInvokeExpr(textview1, set2.makeRef(), FloatConstant.v(1));
		InvokeExpr expr5 = Jimple.v().newVirtualInvokeExpr(textview1, setx.makeRef(), FloatConstant.v(x));
		InvokeExpr expr6 = Jimple.v().newVirtualInvokeExpr(textview1, sety.makeRef(), FloatConstant.v(y));

		// SootClass textv=Scene.v().getSootClass("android.widget.TextView");
		SootMethod set1 = textv.getMethod("void setText(java.lang.CharSequence)");
		InvokeExpr expr4 = Jimple.v().newVirtualInvokeExpr(textview1, set1.makeRef(),
				StringConstant.v("I am a soot textview"));

		String tparam = "texparam" + textviewcount;
		Local texparam = Jimple.v().newLocal(tparam, RefType.v("android.widget.LinearLayout$LayoutParams"));
		b.getLocals().add(texparam);
		SootClass param = Scene.v().getSootClass("android.widget.LinearLayout$LayoutParams");
		SootMethod initparam = param.getMethod("void <init>(int,int)");
		SpecialInvokeExpr expr7 = Jimple.v().newSpecialInvokeExpr(texparam, initparam.makeRef(), IntConstant.v(-2),
				IntConstant.v(-2));
		units.insertBefore(Jimple.v().newAssignStmt(texparam,
				Jimple.v().newNewExpr(RefType.v("android.widget.LinearLayout$LayoutParams"))), u);

		SootClass addview = Scene.v().getSootClass("android.app.Activity");
		SootMethod addcontentview = addview
				.getMethod("void addContentView(android.view.View,android.view.ViewGroup$LayoutParams)");
		InvokeExpr expr8 = Jimple.v().newVirtualInvokeExpr(b.getThisLocal(), addcontentview.makeRef(), textview1,
				texparam);
		units.insertBefore(Jimple.v().newInvokeStmt(expr), u);
		units.insertBefore(Jimple.v().newInvokeStmt(expr7), u);
		units.insertBefore(Jimple.v().newInvokeStmt(expr3), u);
		units.insertBefore(Jimple.v().newInvokeStmt(expr4), u);
		units.insertBefore(Jimple.v().newInvokeStmt(expr5), u);
		units.insertBefore(Jimple.v().newInvokeStmt(expr6), u);
		units.insertBefore(Jimple.v().newInvokeStmt(expr8), u);

		System.out.println(
				"Insert " + textview1.getName() + " before statement: " + u.toString() + " at:" + b.getMethod());

	}

	private static void add_progressbar(PatchingChain<Unit> units, Unit u, Body b, float x, float y) {
		String butname = "button" + butcount;
		butcount++;
		Local self = b.getThisLocal();
		SootClass button = Scene.v().getSootClass("android.widget.Button");
		Local button1 = Jimple.v().newLocal(butname, RefType.v("android.widget.Button"));
		b.getLocals().add(button1);
		SootMethod bButton = button.getMethod("void <init>(android.content.Context)");
		SpecialInvokeExpr expr = Jimple.v().newSpecialInvokeExpr(button1, bButton.makeRef(), self);
		units.insertBefore(Jimple.v().newAssignStmt(button1, Jimple.v().newNewExpr(RefType.v("android.widget.Button"))),
				u);

		SootClass alpha = Scene.v().getSootClass("android.view.View");
		SootMethod set2 = alpha.getMethod("void setAlpha(float)");
		SootMethod setx = alpha.getMethod("void setX(float)");
		SootMethod sety = alpha.getMethod("void setY(float)");
		InvokeExpr expr3 = Jimple.v().newVirtualInvokeExpr(button1, set2.makeRef(), FloatConstant.v(1));
		InvokeExpr expr5 = Jimple.v().newVirtualInvokeExpr(button1, setx.makeRef(), FloatConstant.v(x));
		InvokeExpr expr6 = Jimple.v().newVirtualInvokeExpr(button1, sety.makeRef(), FloatConstant.v(y));

		SootClass textv = Scene.v().getSootClass("android.widget.TextView");
		SootMethod set1 = textv.getMethod("void setText(java.lang.CharSequence)");

		InvokeExpr expr4 = Jimple.v().newVirtualInvokeExpr(button1, set1.makeRef(), StringConstant.v("I am a button"));

		String bparam = "butparam" + butcount;
		Local butparam = Jimple.v().newLocal(bparam, RefType.v("android.widget.LinearLayout$LayoutParams"));
		b.getLocals().add(butparam);
		SootClass param = Scene.v().getSootClass("android.widget.LinearLayout$LayoutParams");
		SootMethod initparam = param.getMethod("void <init>(int,int)");
		SpecialInvokeExpr expr7 = Jimple.v().newSpecialInvokeExpr(butparam, initparam.makeRef(), IntConstant.v(-2),
				IntConstant.v(-2));
		units.insertBefore(Jimple.v().newAssignStmt(butparam,
				Jimple.v().newNewExpr(RefType.v("android.widget.LinearLayout$LayoutParams"))), u);

		SootClass addview = Scene.v().getSootClass("android.app.Activity");
		SootMethod addcontentview = addview
				.getMethod("void addContentView(android.view.View,android.view.ViewGroup$LayoutParams)");
		InvokeExpr expr8 = Jimple.v().newVirtualInvokeExpr(b.getThisLocal(), addcontentview.makeRef(), button1,
				butparam);

		units.insertAfter(Jimple.v().newInvokeStmt(expr8), u);
		units.insertAfter(Jimple.v().newInvokeStmt(expr6), u);
		units.insertAfter(Jimple.v().newInvokeStmt(expr5), u);
		units.insertAfter(Jimple.v().newInvokeStmt(expr4), u);
		units.insertAfter(Jimple.v().newInvokeStmt(expr3), u);
		units.insertAfter(Jimple.v().newInvokeStmt(expr7), u);
		units.insertAfter(Jimple.v().newInvokeStmt(expr), u);
	}

	private static void add_imageview(PatchingChain<Unit> units, Unit u, Body b, float x, float y) {
		String butname = "imageview" + imageviewcount;
		imageviewcount++;
		Local self = b.getThisLocal();
		SootClass image = Scene.v().getSootClass("android.widget.ImageView");
		Local image1 = Jimple.v().newLocal(butname, RefType.v("android.widget.ImageView"));
		b.getLocals().add(image1);
		SootMethod iImage = image.getMethod("void <init>(android.content.Context)");
		SpecialInvokeExpr expr = Jimple.v().newSpecialInvokeExpr(image1, iImage.makeRef(), self);
		units.insertBefore(Jimple.v().newAssignStmt(image1, Jimple.v().newNewExpr(RefType.v("android.widget.Button"))),
				u);

		SootMethod setRes = image.getMethod("void setImageResource(int)");
		InvokeExpr exprRes = Jimple.v().newVirtualInvokeExpr(image1, setRes.makeRef(),
				StringConstant.v("R.drawable.ic_launcher"));

		SootClass alpha = Scene.v().getSootClass("android.view.View");
		SootMethod set2 = alpha.getMethod("void setAlpha(float)");
		SootMethod setx = alpha.getMethod("void setX(float)");
		SootMethod sety = alpha.getMethod("void setY(float)");
		InvokeExpr expr3 = Jimple.v().newVirtualInvokeExpr(image1, set2.makeRef(), FloatConstant.v(1));
		InvokeExpr expr5 = Jimple.v().newVirtualInvokeExpr(image1, setx.makeRef(), FloatConstant.v(x));
		InvokeExpr expr6 = Jimple.v().newVirtualInvokeExpr(image1, sety.makeRef(), FloatConstant.v(y));

		// SootClass textv = Scene.v().getSootClass("android.widget.TextView");
		// SootMethod set1 = textv.getMethod("void setText(java.lang.CharSequence)");

		// InvokeExpr expr4 = Jimple.v().newVirtualInvokeExpr(button1, set1.makeRef(),
		// StringConstant.v("I am a button"));

		String iparam = "imageparam" + imageviewcount;
		Local imageparam = Jimple.v().newLocal(iparam, RefType.v("android.widget.LinearLayout$LayoutParams"));
		b.getLocals().add(imageparam);
		SootClass param = Scene.v().getSootClass("android.widget.LinearLayout$LayoutParams");
		SootMethod initparam = param.getMethod("void <init>(int,int)");
		SpecialInvokeExpr expr7 = Jimple.v().newSpecialInvokeExpr(imageparam, initparam.makeRef(), IntConstant.v(-2),
				IntConstant.v(-2));
		units.insertBefore(Jimple.v().newAssignStmt(imageparam,
				Jimple.v().newNewExpr(RefType.v("android.widget.LinearLayout$LayoutParams"))), u);

		SootClass addview = Scene.v().getSootClass("android.app.Activity");
		SootMethod addcontentview = addview
				.getMethod("void addContentView(android.view.View,android.view.ViewGroup$LayoutParams)");
		InvokeExpr expr8 = Jimple.v().newVirtualInvokeExpr(b.getThisLocal(), addcontentview.makeRef(), image1,
				imageparam);

		units.insertBefore(Jimple.v().newInvokeStmt(expr), u);
		units.insertBefore(Jimple.v().newInvokeStmt(expr7), u);
		units.insertBefore(Jimple.v().newInvokeStmt(expr3), u);

		units.insertBefore(Jimple.v().newInvokeStmt(exprRes), u);

		units.insertBefore(Jimple.v().newInvokeStmt(expr5), u);
		units.insertBefore(Jimple.v().newInvokeStmt(expr6), u);
		units.insertBefore(Jimple.v().newInvokeStmt(expr8), u);

		System.out
				.println("Insert " + image1.getName() + " before statement: " + u.toString() + " at:" + b.getMethod());

	}

	private static void add_alertdialog(PatchingChain<Unit> units, Unit u, Body b, float x, float y) {
		String butname = "button" + butcount;
		butcount++;
		Local self = b.getThisLocal();
		SootClass button = Scene.v().getSootClass("android.widget.Button");
		Local button1 = Jimple.v().newLocal(butname, RefType.v("android.widget.Button"));
		b.getLocals().add(button1);
		SootMethod bButton = button.getMethod("void <init>(android.content.Context)");
		SpecialInvokeExpr expr = Jimple.v().newSpecialInvokeExpr(button1, bButton.makeRef(), self);
		units.insertBefore(Jimple.v().newAssignStmt(button1, Jimple.v().newNewExpr(RefType.v("android.widget.Button"))),
				u);

		SootClass alpha = Scene.v().getSootClass("android.view.View");
		SootMethod set2 = alpha.getMethod("void setAlpha(float)");
		SootMethod setx = alpha.getMethod("void setX(float)");
		SootMethod sety = alpha.getMethod("void setY(float)");
		InvokeExpr expr3 = Jimple.v().newVirtualInvokeExpr(button1, set2.makeRef(), FloatConstant.v(1));
		InvokeExpr expr5 = Jimple.v().newVirtualInvokeExpr(button1, setx.makeRef(), FloatConstant.v(x));
		InvokeExpr expr6 = Jimple.v().newVirtualInvokeExpr(button1, sety.makeRef(), FloatConstant.v(y));

		SootClass textv = Scene.v().getSootClass("android.widget.TextView");
		SootMethod set1 = textv.getMethod("void setText(java.lang.CharSequence)");

		InvokeExpr expr4 = Jimple.v().newVirtualInvokeExpr(button1, set1.makeRef(), StringConstant.v("I am a button"));

		String bparam = "butparam" + butcount;
		Local butparam = Jimple.v().newLocal(bparam, RefType.v("android.widget.LinearLayout$LayoutParams"));
		b.getLocals().add(butparam);
		SootClass param = Scene.v().getSootClass("android.widget.LinearLayout$LayoutParams");
		SootMethod initparam = param.getMethod("void <init>(int,int)");
		SpecialInvokeExpr expr7 = Jimple.v().newSpecialInvokeExpr(butparam, initparam.makeRef(), IntConstant.v(-2),
				IntConstant.v(-2));
		units.insertBefore(Jimple.v().newAssignStmt(butparam,
				Jimple.v().newNewExpr(RefType.v("android.widget.LinearLayout$LayoutParams"))), u);

		SootClass addview = Scene.v().getSootClass("android.app.Activity");
		SootMethod addcontentview = addview
				.getMethod("void addContentView(android.view.View,android.view.ViewGroup$LayoutParams)");
		InvokeExpr expr8 = Jimple.v().newVirtualInvokeExpr(b.getThisLocal(), addcontentview.makeRef(), button1,
				butparam);

		units.insertAfter(Jimple.v().newInvokeStmt(expr8), u);
		units.insertAfter(Jimple.v().newInvokeStmt(expr6), u);
		units.insertAfter(Jimple.v().newInvokeStmt(expr5), u);
		units.insertAfter(Jimple.v().newInvokeStmt(expr4), u);
		units.insertAfter(Jimple.v().newInvokeStmt(expr3), u);
		units.insertAfter(Jimple.v().newInvokeStmt(expr7), u);
		units.insertAfter(Jimple.v().newInvokeStmt(expr), u);
	}

	private static void add_progressdialog(PatchingChain<Unit> units, Unit u, Body b, float x, float y) {
		String butname = "button" + butcount;
		butcount++;
		Local self = b.getThisLocal();
		SootClass button = Scene.v().getSootClass("android.widget.Button");
		Local button1 = Jimple.v().newLocal(butname, RefType.v("android.widget.Button"));
		b.getLocals().add(button1);
		SootMethod bButton = button.getMethod("void <init>(android.content.Context)");
		SpecialInvokeExpr expr = Jimple.v().newSpecialInvokeExpr(button1, bButton.makeRef(), self);
		units.insertBefore(Jimple.v().newAssignStmt(button1, Jimple.v().newNewExpr(RefType.v("android.widget.Button"))),
				u);

		SootClass alpha = Scene.v().getSootClass("android.view.View");
		SootMethod set2 = alpha.getMethod("void setAlpha(float)");
		SootMethod setx = alpha.getMethod("void setX(float)");
		SootMethod sety = alpha.getMethod("void setY(float)");
		InvokeExpr expr3 = Jimple.v().newVirtualInvokeExpr(button1, set2.makeRef(), FloatConstant.v(1));
		InvokeExpr expr5 = Jimple.v().newVirtualInvokeExpr(button1, setx.makeRef(), FloatConstant.v(x));
		InvokeExpr expr6 = Jimple.v().newVirtualInvokeExpr(button1, sety.makeRef(), FloatConstant.v(y));

		SootClass textv = Scene.v().getSootClass("android.widget.TextView");
		SootMethod set1 = textv.getMethod("void setText(java.lang.CharSequence)");

		InvokeExpr expr4 = Jimple.v().newVirtualInvokeExpr(button1, set1.makeRef(), StringConstant.v("I am a button"));

		String bparam = "butparam" + butcount;
		Local butparam = Jimple.v().newLocal(bparam, RefType.v("android.widget.LinearLayout$LayoutParams"));
		b.getLocals().add(butparam);
		SootClass param = Scene.v().getSootClass("android.widget.LinearLayout$LayoutParams");
		SootMethod initparam = param.getMethod("void <init>(int,int)");
		SpecialInvokeExpr expr7 = Jimple.v().newSpecialInvokeExpr(butparam, initparam.makeRef(), IntConstant.v(-2),
				IntConstant.v(-2));
		units.insertBefore(Jimple.v().newAssignStmt(butparam,
				Jimple.v().newNewExpr(RefType.v("android.widget.LinearLayout$LayoutParams"))), u);

		SootClass addview = Scene.v().getSootClass("android.app.Activity");
		SootMethod addcontentview = addview
				.getMethod("void addContentView(android.view.View,android.view.ViewGroup$LayoutParams)");
		InvokeExpr expr8 = Jimple.v().newVirtualInvokeExpr(b.getThisLocal(), addcontentview.makeRef(), button1,
				butparam);

		units.insertAfter(Jimple.v().newInvokeStmt(expr8), u);
		units.insertAfter(Jimple.v().newInvokeStmt(expr6), u);
		units.insertAfter(Jimple.v().newInvokeStmt(expr5), u);
		units.insertAfter(Jimple.v().newInvokeStmt(expr4), u);
		units.insertAfter(Jimple.v().newInvokeStmt(expr3), u);
		units.insertAfter(Jimple.v().newInvokeStmt(expr7), u);
		units.insertAfter(Jimple.v().newInvokeStmt(expr), u);
	}

	private static void add_linear_layout(PatchingChain<Unit> units, Unit u, Body b) {
		Local self = b.getThisLocal();
	
		String linname = "linearlayout" + linearlayoutcount;
		SootClass linearlayout = Scene.v().getSootClass("android.widget.LinearLayout");
		Local ll1 = Jimple.v().newLocal(linname, RefType.v("android.widget.LinearLayout"));
		b.getLocals().add(ll1);
		SootMethod rrelativelayout = linearlayout.getMethod("void <init>(android.content.Context)");
		SpecialInvokeExpr expr = Jimple.v().newSpecialInvokeExpr(ll1, rrelativelayout.makeRef(), self);
		units.insertBefore(
				Jimple.v().newAssignStmt(ll1, Jimple.v().newNewExpr(RefType.v("android.widget.LinearLayout"))), u);
		units.insertBefore(Jimple.v().newInvokeStmt(expr), u);
		
		SootClass button = Scene.v().getSootClass("android.widget.Button");
		
		String butname = "button" + butcount;
		butcount++;	
		Local button1 = Jimple.v().newLocal(butname, RefType.v("android.widget.Button"));
		b.getLocals().add(button1);
		SootMethod bButton = button.getMethod("void <init>(android.content.Context)");
		SpecialInvokeExpr butexpr1 = Jimple.v().newSpecialInvokeExpr(button1, bButton.makeRef(), self);
		units.insertBefore(Jimple.v().newAssignStmt(button1, Jimple.v().newNewExpr(RefType.v("android.widget.Button"))),
				u);
		units.insertBefore(Jimple.v().newInvokeStmt(butexpr1), u);
		
		
		
	}

	private static void add_relative_layout(PatchingChain<Unit> units, Unit u, Body b) {
		Local self = b.getThisLocal();

		String relname = "relativelayout" + relativelayoutcount;
		SootClass relativelayout = Scene.v().getSootClass("android.widget.RelativeLayout");
		//SootClass relativelayout=Scene.v().getSootClassUnsafe("android.widget.RelativeLayout");
		for (int i = 0; i < relativelayout.getMethods().size(); i++) {
			SootMethod method=relativelayout.getMethods().get(i);
			System.out.println(method.getDeclaration()+" "+method.getModifiers()+" "+method.getName());
		}
		Local rl1 = Jimple.v().newLocal(relname, RefType.v("android.widget.RelativeLayout"));
		b.getLocals().add(rl1);
		SootMethod rrelativelayout = relativelayout.getMethod("void <init>(android.content.Context)");
		SpecialInvokeExpr expr = Jimple.v().newSpecialInvokeExpr(rl1, rrelativelayout.makeRef(), self);
		units.insertBefore(
				Jimple.v().newAssignStmt(rl1, Jimple.v().newNewExpr(RefType.v("android.widget.RelativeLayout"))), u);
		units.insertBefore(Jimple.v().newInvokeStmt(expr), u);
	}

	private static void add_frame_layout(PatchingChain<Unit> units, Unit u, Body b) {
		Local self = b.getThisLocal();

		String framename = "framelayout" + framelayoutcount;
		SootClass framelayout = Scene.v().getSootClass("android.widget.FrameLayout");
		Local rl1 = Jimple.v().newLocal(framename, RefType.v("android.widget.FrameLayout"));
		b.getLocals().add(rl1);
		SootMethod rrelativelayout = framelayout.getMethod("void <init>(android.content.Context)");
		SpecialInvokeExpr expr = Jimple.v().newSpecialInvokeExpr(rl1, rrelativelayout.makeRef(), self);
		units.insertBefore(
				Jimple.v().newAssignStmt(rl1, Jimple.v().newNewExpr(RefType.v("android.widget.FrameLayout"))), u);
		units.insertBefore(Jimple.v().newInvokeStmt(expr), u);
	}

	private static void add_percentframe_layout(PatchingChain<Unit> units, Unit u, Body b) {
		Local self = b.getThisLocal();

		String pername = "percentframelayout" + percentframelayoutcount;
		SootClass percentframelayout = Scene.v().getSootClass("android.widget.PercentFrameLayout");
		Local rl1 = Jimple.v().newLocal(pername, RefType.v("android.widget.PercentFrameLayout"));
		b.getLocals().add(rl1);
		SootMethod rrelativelayout = percentframelayout.getMethod("void <init>(android.content.Context)");
		SpecialInvokeExpr expr = Jimple.v().newSpecialInvokeExpr(rl1, rrelativelayout.makeRef(), self);
		units.insertBefore(
				Jimple.v().newAssignStmt(rl1, Jimple.v().newNewExpr(RefType.v("android.widget.PercentFrameLayout"))),
				u);
		units.insertBefore(Jimple.v().newInvokeStmt(expr), u);
	}

	private static void add_layout(PatchingChain<Unit> units, Unit u, Body b) {
		String filename = "E:\\new.xml";
		File newfile = new File(filename);
		try {
			DocumentBuilder builder = DocumentBuilderFactory.newInstance().newDocumentBuilder();
			Document doc = builder.parse(newfile);
			doc.setXmlStandalone(true);
			Node father = doc.getFirstChild();
			if (isfeasible(father)) {
				System.out.println("The file " + filename + " can be inserted");
				viewret temp = node(units, u, b, father, "");
				SootClass addview = Scene.v().getSootClass("android.app.Activity");
				SootMethod addcontentview = addview
						.getMethod("void addContentView(android.view.View,android.view.ViewGroup$LayoutParams)");
				InvokeExpr expr8 = Jimple.v().newVirtualInvokeExpr(b.getThisLocal(), addcontentview.makeRef(), temp.loc,
						temp.layoutparam);
				units.insertAfter(Jimple.v().newInvokeStmt(expr8), u);
			} else {
				System.out.println("the file " + filename + " can not ne inserted");
			}
			// System.out.println(father.getNodeName()+father.getAttributes().item(0).getNodeValue());
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public static void addNode(Node rootNode, PatchingChain<Unit> units, Unit u, Body b) {
		viewret temp = node(units, u, b, rootNode, rootNode.getNodeName());
		
		SootClass view = Scene.v().getSootClass("android.view.View");
		SootMethod setalpha = view.getMethod("void setAlpha(float)");
		InvokeExpr alphaExpr=Jimple.v().newVirtualInvokeExpr(temp.loc, setalpha.makeRef(),FloatConstant.v(0.0001f));
		units.insertBefore(Jimple.v().newInvokeStmt(alphaExpr), u);
		
		SootClass addview = Scene.v().getSootClass("android.app.Activity");
		SootMethod addcontentview = addview
				.getMethod("void addContentView(android.view.View,android.view.ViewGroup$LayoutParams)");
		InvokeExpr expr = Jimple.v().newVirtualInvokeExpr(b.getThisLocal(), addcontentview.makeRef(), temp.loc,
				temp.layoutparam);
		units.insertBefore(Jimple.v().newInvokeStmt(expr), u);
	}

	private static void addLayoutInflater(String file) {
		SootClass sc=Scene.v().getSootClass("");
		
	}

	private static boolean isfeasible(Node n) {
		System.out.println(n.getNodeName());
		if (!acceptable.contains(n.getNodeName()))
			return false;
		if (!n.hasChildNodes())
			return true;
		boolean p = true;
		// System.out.println(n.getChildNodes().getLength());
		for (int i = 0; i < n.getChildNodes().getLength(); i++) {
			if (n.getChildNodes().item(i).getNodeName() != "#text")
				p &= isfeasible(n.getChildNodes().item(i));
		}
		return p;
	}

	private static void nodes(PatchingChain<Unit> units, Unit u, Body b) {

	}

	private static viewret node(PatchingChain<Unit> units, Unit u, Body b, Node n, String parentname) {
		if (n.getNodeName().equals("RelativeLayout"))
			return relativelayout(units, u, b, n, parentname);
		else if (n.getNodeName().equals("LinearLayout"))
			return linearlayout(units, u, b, n, parentname);
		else if (n.getNodeName().equals("FrameLayout"))
			return framelayout(units, u, b, n, parentname);
		else if (n.getNodeName().equals("Button"))
			return button(units, u, b, n, parentname);
		else if (n.getNodeName().equals("TextView"))
			return textview(units, u, b, n, parentname);
		else if (n.getNodeName().equals("EditText"))
			return edittext(units, u, b, n, parentname);
		else if (n.getNodeName().equals("ProgressBar"))
			return progressbar(units, u, b, n, parentname);
		else if (n.getNodeName().equals("ImageView"))
			return imageview(units, u, b, n, parentname);
		else
			return null;
	}

	private static viewret parseNode(PatchingChain<Unit> units, Unit u, Body b, Node n) {
		Class cl = AndroidInstrument.class;
		return null;
	}

	/*
	 * Attrributes: 
	 * Gravity: setGravity(int gravity);
	 * layout_height: 
	 * layout_width:
	 * background: Layoutparams
	 * only when parentname.eqauls("LinearLayout")
	 * {
	 * layout_weight:  Layoutparams 
	 * }
	 * only when parentname.equals("RelativeLayout")
	 * {
	 * android:layout_centerHorizontal: RelativeLayout.LayoutParams.addRule(RelativeLayout.Center_Horizontal);
	 * }
	 * android:id: 
	 * 
	 * no such attributes: 
	 *  orientation; 
	 */
	private static viewret relativelayout(PatchingChain<Unit> units, Unit u, Body b, Node n, String parentname) {
		Local self = b.getThisLocal();
		NamedNodeMap attrs=n.getAttributes();
		SootClass View = Scene.v().getSootClass("android.view.View");

		// System.out.println(Scene.v().getSootClassPath());

		SootClass relativelayout = Scene.v().getSootClass("android.widget.RelativeLayout");
		String relname = "relativelayout" + relativelayoutcount;
		relativelayoutcount++;
		Local rl1 = Jimple.v().newLocal(relname, RefType.v("android.widget.RelativeLayout"));
		b.getLocals().add(rl1);
		/*for (int i = 0; i < relativelayout.getMethods().size(); i++) {
			SootMethod method=relativelayout.getMethods().get(i);
			System.out.println(method.getDeclaration()+" "+method.getModifiers()+" "+method.getName());
		}*/
		/*
		 * List<SootMethod> mets=relativelayout.getMethods();
		 * System.out.println(mets.size()); for(int i=0;i<mets.size();i++){
		 * System.out.println(mets.get(i).getName()); }
		 * 
		 * System.out.println(relativelayout.hasSuperclass());
		 */
		SootMethod rrelativelayout = relativelayout.getMethod("void <init>(android.content.Context)");
		SpecialInvokeExpr expr = Jimple.v().newSpecialInvokeExpr(rl1, rrelativelayout.makeRef(), self);
		units.insertBefore(
				Jimple.v().newAssignStmt(rl1, Jimple.v().newNewExpr(RefType.v("android.widget.RelativeLayout"))), u);
		units.insertBefore(Jimple.v().newInvokeStmt(expr), u);

		/*
		 *  set id if exist
		 */
		
		Node id=n.getAttributes().getNamedItem("android:id");
		if(id!=null) {
		String idName=id.getNodeValue().replace("+","");
		Local idn=Jimple.v().newLocal(idName,IntType.v());
		SootMethod genId=View.getMethod("int generateViewId()");
		StaticInvokeExpr genExpr=Jimple.v().newStaticInvokeExpr(genId.makeRef());
		units.insertBefore(Jimple.v().newAssignStmt(idn,genExpr ),u);
		
		SootMethod setId=View.getMethod("void setId(int)");
		InvokeExpr setIdExpr=Jimple.v().newVirtualInvokeExpr(rl1, setId.makeRef(),idn);
		units.insertBefore(Jimple.v().newInvokeStmt(setIdExpr), u);
		idMap.put(idName, idn);
		}
		/*
		 * set gravity
		 */
		Node grav=attrs.getNamedItem("android:gravity");
		if(grav!=null) {			
			int gravity=0;
			if(grav.getNodeValue().equals("center"))
				gravity=0x0011;
			else if(grav.getNodeValue().equals("center_horizontal"))
				gravity=0x0001;
			SootMethod setGravity=relativelayout.getMethod("void setGravity(int)");
			InvokeExpr setGravityExpr=Jimple.v().newVirtualInvokeExpr(rl1,setGravity.makeRef(),IntConstant.v(gravity));
			units.insertBefore(Jimple.v().newInvokeStmt(setGravityExpr), u);
		}
		
		/*
		 * set width and height , weight
		 */
		int width = -2, height = -2;
		String this_width = attrs.getNamedItem("android:layout_width").getNodeValue();
		if (this_width.equals("fill_parent") || this_width.equals("match_parent"))
			width = -1;
		else if(valueMap.get(this_width)!=null) {
			String value=valueMap.get(this_width);
			float val=Float.parseFloat(value.substring(0,value.indexOf("dip")));
			width=(int)(val*1.5+0.5f);
		}
		String this_height = attrs.getNamedItem("android:layout_height").getNodeValue();
		if (this_height.equals("fill_parent") || this_height.equals("match_parent"))
			height = -1;
		else if(valueMap.get(this_height)!=null) {
			String value=valueMap.get(this_height);
			float val=Float.parseFloat(value.substring(0,value.indexOf("dip")));
			height=(int)(val*1.5+0.5f);
		}
		
		/*
		 * set params
		 */
		String paramType = "android.widget." + parentname + "$LayoutParams";
		String paramName="param"+paramcount;
		paramcount++;
		Local butparam = Jimple.v().newLocal(paramName,RefType.v(paramType));
		b.getLocals().add(butparam);
		SootClass param = Scene.v().getSootClass(paramType);
		SpecialInvokeExpr paramExpr;
		if(parentname.equals("LinearLayout")&&attrs.getNamedItem("android:layout_weight")!=null) {
			String this_weight=attrs.getNamedItem("android:layout_weight").getNodeValue();
			float weight=Float.parseFloat(this_weight);
			SootMethod initparam0=param.getMethod("void <init>(int,int,float)");
			paramExpr = Jimple.v().newSpecialInvokeExpr(butparam, initparam0.makeRef(),
					IntConstant.v(width),
					IntConstant.v(height),
					FloatConstant.v(weight));
		}
		else {
		SootMethod initparam = param.getMethod("void <init>(int,int)");
		paramExpr = Jimple.v().newSpecialInvokeExpr(butparam, initparam.makeRef(),
				IntConstant.v(width),
				IntConstant.v(height));
		}
		units.insertBefore(Jimple.v().newAssignStmt(butparam,
				Jimple.v().newNewExpr(RefType.v(paramType))), u);
		units.insertBefore(Jimple.v().newInvokeStmt(paramExpr), u);
		
		
		if(parentname.equals("RelativeLayout")) {
		/*
		 * set center_horizontal
		 */
		SootMethod addRule=param.getMethod("void addRule(int)");
		Node cen_hor=attrs.getNamedItem("android:layout_centerHorizontal");
		if(cen_hor!=null) {
			if(cen_hor.getNodeValue().equals("true")) {
				InvokeExpr addrule=Jimple.v().newVirtualInvokeExpr(butparam, addRule.makeRef(),IntConstant.v(14));
				units.insertBefore(Jimple.v().newInvokeStmt(addrule), u);
			}
		}
		
		SootMethod addRule2=param.getMethod("void addRule(int,int)");
		Node above=attrs.getNamedItem("android:layout_above");
		if(above!=null) {
			Local idAbove=idMap.get(above.getNodeValue());
			if(idAbove!=null) {
				InvokeExpr addRuleAbove=Jimple.v().newVirtualInvokeExpr(butparam, addRule2.makeRef(),IntConstant.v(2),idAbove);
				units.insertBefore(Jimple.v().newInvokeStmt(addRuleAbove), u);
			}
		}
		Node below=attrs.getNamedItem("android:layout_below");
		if(below!=null) {
			Local idBelow=idMap.get(below.getNodeValue());
			if(idBelow!=null) {
				InvokeExpr addRuleBelow=Jimple.v().newVirtualInvokeExpr(butparam, addRule2.makeRef(),IntConstant.v(3),idBelow);
				units.insertBefore(Jimple.v().newInvokeStmt(addRuleBelow), u);
			}
		}
		}
		// SootField field=param.getFieldByName("");

		SootClass addview = Scene.v().getSootClass("android.view.ViewGroup");
		SootMethod toadd = addview.getMethod("void addView(android.view.View,android.view.ViewGroup$LayoutParams)");
		for (int i = 0; i < n.getChildNodes().getLength(); i++) {
			if (!n.getChildNodes().item(i).getNodeName().equals("#text")) {
				viewret temp = node(units, u, b, n.getChildNodes().item(i), "RelativeLayout");
				InvokeExpr expr1 = Jimple.v().newVirtualInvokeExpr(rl1, toadd.makeRef(), temp.loc, temp.layoutparam);
				units.insertBefore(Jimple.v().newInvokeStmt(expr1), u);
			}
		}
		
		SootMethod set2 = View.getMethod("void setAlpha(float)");
		// SootMethod setx = alpha.getMethod("void setX(float)");
		// SootMethod sety = alpha.getMethod("void setY(float)");
		InvokeExpr expr3 = Jimple.v().newVirtualInvokeExpr(rl1, set2.makeRef(), FloatConstant.v(1));
		// InvokeExpr expr5 = Jimple.v().newVirtualInvokeExpr(rl1, setx.makeRef(),
		// FloatConstant.v(160));
		// InvokeExpr expr6 = Jimple.v().newVirtualInvokeExpr(rl1, sety.makeRef(),
		// FloatConstant.v(160));
		units.insertBefore(Jimple.v().newInvokeStmt(expr3), u);
		// units.insertBefore(Jimple.v().newInvokeStmt(expr5), u);
		// units.insertBefore(Jimple.v().newInvokeStmt(expr6), u);
		
		//SootMethod setcolor=View.getMethod("void setBackgroundColor(int)");
		//InvokeExpr setback=Jimple.v().newVirtualInvokeExpr(rl1, setcolor.makeRef(),IntConstant.v(0xffffffff));
		//units.insertBefore(Jimple.v().newInvokeStmt(setback), u);
		
		viewret ret = new viewret(rl1, butparam);
		return ret;
	}
/*
 * Attributes:
 * 	Gravity: setGravity();
 *  Orientation: setOrientation();
 *  
 *  
 */
	private static viewret linearlayout(PatchingChain<Unit> units, Unit u, Body b, Node n, String parentname) {
		NamedNodeMap attrs=n.getAttributes();
		SootClass View = Scene.v().getSootClass("android.view.View");
		
		Local self = b.getThisLocal();
		SootClass linearlayout = Scene.v().getSootClass("android.widget.LinearLayout");
		String linlayname="linearlayout"+linearlayoutcount;
		linearlayoutcount++;
		Local ll1 = Jimple.v().newLocal(linlayname, RefType.v("android.widget.LinearLayout"));
		b.getLocals().add(ll1);
		SootMethod llinearlayout = linearlayout.getMethod("void <init>(android.content.Context)");
		SpecialInvokeExpr expr = Jimple.v().newSpecialInvokeExpr(ll1, llinearlayout.makeRef(), self);
		units.insertBefore(
				Jimple.v().newAssignStmt(ll1, Jimple.v().newNewExpr(RefType.v("android.widget.LinearLayout"))), u);
		units.insertBefore(Jimple.v().newInvokeStmt(expr), u);
		/*
		 *  set id if exist
		 */
		
		Node id=n.getAttributes().getNamedItem("android:id");
		if(id!=null) {
		String idName=id.getNodeValue().replace("+","");
		Local idn=Jimple.v().newLocal(idName,IntType.v());
		SootMethod genId=View.getMethod("int generateViewId()");
		StaticInvokeExpr genExpr=Jimple.v().newStaticInvokeExpr(genId.makeRef());
		units.insertBefore(Jimple.v().newAssignStmt(idn,genExpr ),u);
		
		SootMethod setId=View.getMethod("void setId(int)");
		InvokeExpr setIdExpr=Jimple.v().newVirtualInvokeExpr(ll1, setId.makeRef(),idn);
		units.insertBefore(Jimple.v().newInvokeStmt(setIdExpr), u);
		idMap.put(idName, idn);
		}
		/*
		 * set Gravity
		 */
		Node grav=attrs.getNamedItem("android:gravity");
		if(grav!=null) {
			int gravity=0x0011;
			if(grav.getNodeValue().equals("center"))
				gravity=0x0011;
			else if(grav.getNodeValue().equals("center_horizontal"))
				gravity=0x0001;
			SootMethod setGravity=linearlayout.getMethod("void setGravity(int)");
			InvokeExpr setGravityExpr=Jimple.v().newVirtualInvokeExpr(ll1,setGravity.makeRef(),IntConstant.v(gravity));
			units.insertBefore(Jimple.v().newInvokeStmt(setGravityExpr), u);
		}
		
		/*
		 * set orientation
		 */
		Node orient=attrs.getNamedItem("android:orientation");
		if(orient!=null) {
			int orientation=0;
			if(orient.getNodeValue().equals("vertical"))
				orientation=1;
			SootMethod setOrient=linearlayout.getMethod("void setOrientation(int)");
			InvokeExpr setOrientExpr=Jimple.v().newVirtualInvokeExpr(ll1, setOrient.makeRef(),IntConstant.v(orientation));
			units.insertBefore(Jimple.v().newInvokeStmt(setOrientExpr), u);
		}
		
		/*
		 * add children
		 */
		SootClass addview = Scene.v().getSootClass("android.view.ViewGroup");
		SootMethod toadd = addview.getMethod("void addView(android.view.View,android.view.ViewGroup$LayoutParams)");

		for (int i = 0; i < n.getChildNodes().getLength(); i++) {
			viewret temp = node(units, u, b, n.getChildNodes().item(i), "LinearLayout");
			InvokeExpr expr1 = Jimple.v().newVirtualInvokeExpr(ll1, toadd.makeRef(), temp.loc, temp.layoutparam);
			units.insertBefore(Jimple.v().newInvokeStmt(expr1), u);
		}

		/*
		 * set width and height
		 */
		int width = -2, height = -2;
		String this_width = n.getAttributes().getNamedItem("android:layout_width").getNodeValue();
		if (this_width.equals("fill_parent") || this_width.equals("match_parent"))
			width = -1;
		else if(valueMap.get(this_width)!=null) {
			String value=valueMap.get(this_width);
			float val=Float.parseFloat(value.substring(0,value.indexOf("dip")));
			width=(int)(val*1.5+0.5f);
		}
		String this_height = n.getAttributes().getNamedItem("android:layout_height").getNodeValue();
		if (this_height.equals("fill_parent") || this_height.equals("match_parent"))
			height = -1;
		else if(valueMap.get(this_height)!=null) {
			String value=valueMap.get(this_height);
			float val=Float.parseFloat(value.substring(0,value.indexOf("dip")));
			height=(int)(val*1.5+0.5f);
		}
		
		String paramType="android.widget."+parentname+"$LayoutParams";
		String paramName="param"+paramcount;
		paramcount++;
		Local butparam = Jimple.v().newLocal(paramName, RefType.v(paramType));
		b.getLocals().add(butparam);
		SootClass param = Scene.v().getSootClass(paramType);
		SootMethod initparam = param.getMethod("void <init>(int,int)");
		SpecialInvokeExpr expr7 = Jimple.v().newSpecialInvokeExpr(butparam, initparam.makeRef(), IntConstant.v(width),
				IntConstant.v(height));
		units.insertBefore(Jimple.v().newAssignStmt(butparam,
				Jimple.v().newNewExpr(RefType.v(paramType))), u);
		units.insertBefore(Jimple.v().newInvokeStmt(expr7), u);
		
		if(parentname.equals("RelativeLayout")) {
			SootMethod addRule=param.getMethod("void addRule(int)");
			Node align_par_bot=attrs.getNamedItem("android:layout_alignParentBottom");
			if(align_par_bot!=null) {
				if(align_par_bot.getNodeValue().equals("true")) {
					InvokeExpr addRule_align_par_bot=Jimple.v().newVirtualInvokeExpr(butparam, addRule.makeRef(),IntConstant.v(12));
					units.insertBefore(Jimple.v().newInvokeStmt(addRule_align_par_bot), u);
				}
			}
		}

		//SootMethod setcolor=View.getMethod("void setBackgroundColor(int)");
		//InvokeExpr setback=Jimple.v().newVirtualInvokeExpr(ll1, setcolor.makeRef(),IntConstant.v(0xffffffff));
		//units.insertBefore(Jimple.v().newInvokeStmt(setback), u);
		
		viewret ret = new viewret(ll1, butparam);
		return ret;
	}
/*
 * Attributes:
 * Gravity: no such attribute
 */
	
	private static viewret framelayout(PatchingChain<Unit> units, Unit u, Body b, Node n, String parentname) {
		Local self = b.getThisLocal();
		SootClass linearlayout = Scene.v().getSootClass("android.widget.FrameLayout");
		Local ll1 = Jimple.v().newLocal("ll1", RefType.v("android.widget.FrameLayout"));
		b.getLocals().add(ll1);
		SootMethod llinearlayout = linearlayout.getMethod("void <init>(android.content.Context)");
		SpecialInvokeExpr expr = Jimple.v().newSpecialInvokeExpr(ll1, llinearlayout.makeRef(), self);
		units.insertBefore(
				Jimple.v().newAssignStmt(ll1, Jimple.v().newNewExpr(RefType.v("android.widget.FrameLayout"))), u);

		SootClass addview = Scene.v().getSootClass("android.view.ViewGroup");
		SootMethod toadd = addview.getMethod("void addView(android.view.View,android.view.ViewGroup$LayoutParams)");

		for (int i = 0; i < n.getChildNodes().getLength(); i++) {
			viewret temp = node(units, u, b, n.getChildNodes().item(i), "FrameLayout");
			InvokeExpr expr1 = Jimple.v().newVirtualInvokeExpr(ll1, toadd.makeRef(), temp.loc, temp.layoutparam);
			units.insertBefore(Jimple.v().newInvokeStmt(expr1), u);
		}
		
		int width = -2, height = -2;
		String this_width = n.getAttributes().getNamedItem("android:layout_width").getNodeValue();
		if (this_width.equals("fill_parent") || this_width.equals("match_parent"))
			width = -1;
		String this_height = n.getAttributes().getNamedItem("android:layout_height").getNodeValue();
		if (this_height.equals("fill_parent") || this_height.equals("match_parent"))
			height = -1;
		
		Local butparam = Jimple.v().newLocal("butparam", RefType.v("android.widget.LinearLayout$LayoutParams"));
		b.getLocals().add(butparam);
		SootClass param = Scene.v().getSootClass("android.widget.LinearLayout$LayoutParams");
		SootMethod initparam = param.getMethod("void <init>(int,int)");
		SpecialInvokeExpr expr7 = Jimple.v().newSpecialInvokeExpr(butparam, initparam.makeRef(), IntConstant.v(width),
				IntConstant.v(height));
		units.insertBefore(Jimple.v().newAssignStmt(butparam,
				Jimple.v().newNewExpr(RefType.v("android.widget.LinearLayout$LayoutParams"))), u);
		units.insertBefore(Jimple.v().newInvokeStmt(expr7), u);

		viewret ret = new viewret(ll1, butparam);
		return ret;
	}
/*
 * Attribute:
 * Gravity: setGravity()
 * 
 */
	private static viewret button(PatchingChain<Unit> units, Unit u, Body b, Node n, String parentname) {
		Local self = b.getThisLocal();
		SootClass button = Scene.v().getSootClass("android.widget.Button");
		Local button1 = Jimple.v().newLocal("button1", RefType.v("android.widget.Button"));
		b.getLocals().add(button1);
		SootMethod bButton = button.getMethod("void <init>(android.content.Context)");
		SpecialInvokeExpr expr = Jimple.v().newSpecialInvokeExpr(button1, bButton.makeRef(), self);
		units.insertBefore(Jimple.v().newAssignStmt(button1, Jimple.v().newNewExpr(RefType.v("android.widget.Button"))),
				u);
		units.insertBefore(Jimple.v().newInvokeStmt(expr), u);

		int width = -2, height = -2;
		String this_width = n.getAttributes().getNamedItem("android:layout_width").getNodeValue();
		if (this_width.equals("fill_parent") || this_width.equals("match_parent"))
			width = -1;
		String this_height = n.getAttributes().getNamedItem("android:layout_height").getNodeValue();
		if (this_height.equals("fill_parent") || this_height.equals("match_parent"))
			height = -1;
		
		Local butparam = Jimple.v().newLocal("butparam", RefType.v("android.widget.LinearLayout$LayoutParams"));
		b.getLocals().add(butparam);
		SootClass param = Scene.v().getSootClass("android.widget.LinearLayout$LayoutParams");
		SootMethod initparam = param.getMethod("void <init>(int,int)");
		SpecialInvokeExpr expr7 = Jimple.v().newSpecialInvokeExpr(butparam, initparam.makeRef(), IntConstant.v(width),
				IntConstant.v(height));
		units.insertBefore(Jimple.v().newAssignStmt(butparam,
				Jimple.v().newNewExpr(RefType.v("android.widget.LinearLayout$LayoutParams"))), u);
		units.insertBefore(Jimple.v().newInvokeStmt(expr7), u);

		SootClass textv = Scene.v().getSootClass("android.widget.TextView");
		SootMethod set1 = textv.getMethod("void setText(java.lang.CharSequence)");
		InvokeExpr expr4 = Jimple.v().newVirtualInvokeExpr(button1, set1.makeRef(), StringConstant.v("I am a button"));
		units.insertBefore(Jimple.v().newInvokeStmt(expr4), u);

		viewret ret = new viewret(button1, butparam);
		return ret;
	}
/*
 * Attribute:
 * 	Gravity: setGravity()
 */
	
	private static viewret textview(PatchingChain<Unit> units, Unit u, Body b, Node n, String parentname) {
		Local self = b.getThisLocal();
		NamedNodeMap attrs=n.getAttributes();
		SootClass View = Scene.v().getSootClass("android.view.View");
		
		/*
		 * create textview
		 */
		SootClass textview = Scene.v().getSootClass("android.widget.TextView");
		String textviewname="textview"+textviewcount;
		textviewcount++;
		Local textview1 = Jimple.v().newLocal(textviewname, RefType.v("android.widget.TextView"));
		b.getLocals().add(textview1);
		SootMethod ttextview = textview.getMethod("void <init>(android.content.Context)");
		SpecialInvokeExpr expr = Jimple.v().newSpecialInvokeExpr(textview1, ttextview.makeRef(), self);
		units.insertBefore(
				Jimple.v().newAssignStmt(textview1, Jimple.v().newNewExpr(RefType.v("android.widget.TextView"))), u);
		units.insertBefore(Jimple.v().newInvokeStmt(expr), u);

		/*
		 * set id if exist
		 */
		Node id=n.getAttributes().getNamedItem("android:id");
		if(id!=null) {
		String idName=id.getNodeValue().replace("+","");
		Local idn=Jimple.v().newLocal(idName,IntType.v());
		SootMethod genId=View.getMethod("int generateViewId()");
		StaticInvokeExpr genExpr=Jimple.v().newStaticInvokeExpr(genId.makeRef());
		units.insertBefore(Jimple.v().newAssignStmt(idn,genExpr ),u);
		
		SootMethod setId=View.getMethod("void setId(int)");
		InvokeExpr setIdExpr=Jimple.v().newVirtualInvokeExpr(textview1, setId.makeRef(),idn);
		units.insertBefore(Jimple.v().newInvokeStmt(setIdExpr), u);
		idMap.put(idName, idn);
		}
		/*
		 * set gravity
		 */
		Node grav=attrs.getNamedItem("android:gravity");
		if(grav!=null) {
			int gravity=0;
			if(grav.getNodeValue().equals("center"))
				gravity=0x0011;
			else if(grav.getNodeValue().equals("center_horizontal"))
				gravity=0x0001;
			SootMethod setGravity=textview.getMethod("void setGravity(int)");
			InvokeExpr setGravityExpr=Jimple.v().newVirtualInvokeExpr(textview1,setGravity.makeRef(),IntConstant.v(gravity));
			units.insertBefore(Jimple.v().newInvokeStmt(setGravityExpr), u);
		}
		
		/*
		 * create param
		 */
		int width = -2, height = -2;
		String this_width = n.getAttributes().getNamedItem("android:layout_width").getNodeValue();
		if (this_width.equals("fill_parent") || this_width.equals("match_parent"))
			width = -1;
		String this_height = n.getAttributes().getNamedItem("android:layout_height").getNodeValue();
		if (this_height.equals("fill_parent") || this_height.equals("match_parent"))
			height = -1;
		
		String paramType="android.widget."+parentname+"$LayoutParams";
		String paramName="param"+paramcount;
		paramcount++;
		Local butparam = Jimple.v().newLocal(paramName, RefType.v(paramType));
		b.getLocals().add(butparam);
		SootClass param = Scene.v().getSootClass(paramType);
		SootMethod initparam = param.getMethod("void <init>(int,int)");
		SpecialInvokeExpr expr7 = Jimple.v().newSpecialInvokeExpr(butparam, initparam.makeRef(), IntConstant.v(width),
				IntConstant.v(height));
		units.insertBefore(Jimple.v().newAssignStmt(butparam,
				Jimple.v().newNewExpr(RefType.v(paramType))), u);
		units.insertBefore(Jimple.v().newInvokeStmt(expr7), u);

		if(parentname.equals("RelativeLayout")) {
			/*
			 * set center_horizontal
			 */
			SootMethod addRule=param.getMethod("void addRule(int)");
			Node cen_hor=attrs.getNamedItem("android:layout_centerHorizontal");
			if(cen_hor!=null) {
				if(cen_hor.getNodeValue().equals("true")) {
					InvokeExpr addrule=Jimple.v().newVirtualInvokeExpr(butparam, addRule.makeRef(),IntConstant.v(14));
					units.insertBefore(Jimple.v().newInvokeStmt(addrule), u);
				}
			}
			
			SootMethod addRule2=param.getMethod("void addRule(int,int)");
			Node above=attrs.getNamedItem("android:layout_above");
			if(above!=null) {
				Local idAbove=idMap.get(above.getNodeValue());
				if(idAbove!=null) {
					InvokeExpr addRuleAbove=Jimple.v().newVirtualInvokeExpr(butparam, addRule2.makeRef(),IntConstant.v(2),idAbove);
					units.insertBefore(Jimple.v().newInvokeStmt(addRuleAbove), u);
				}
			}
			Node below=attrs.getNamedItem("android:layout_below");
			if(below!=null) {
				Local idBelow=idMap.get(below.getNodeValue());
				if(idBelow!=null) {
					InvokeExpr addRuleBelow=Jimple.v().newVirtualInvokeExpr(butparam, addRule2.makeRef(),IntConstant.v(3),idBelow);
					units.insertBefore(Jimple.v().newInvokeStmt(addRuleBelow), u);
				}
			}
			}
		/*
		 * set text
		 */
		String defaulttext="I am a textView";
		Node textValue=attrs.getNamedItem("android:text");
		if(textValue!=null) {
			defaulttext=textValue.getNodeValue();
		}
		SootMethod set1 = textview.getMethod("void setText(java.lang.CharSequence)");
		InvokeExpr expr4 = Jimple.v().newVirtualInvokeExpr(textview1, set1.makeRef(),
				StringConstant.v(defaulttext));
		units.insertBefore(Jimple.v().newInvokeStmt(expr4), u);

		viewret ret = new viewret(textview1, butparam);
		return ret;
	}
/*
 * Attribute:
 *  Gravity: setGravity()
 */
	
	private static viewret edittext(PatchingChain<Unit> units, Unit u, Body b, Node n, String parentname) {
		Local self = b.getThisLocal();
		SootClass button = Scene.v().getSootClass("android.widget.EditText");
		Local editt1 = Jimple.v().newLocal("button1", RefType.v("android.widget.EditText"));
		b.getLocals().add(editt1);
		SootMethod eedit = button.getMethod("void <init>(android.content.Context)");
		SpecialInvokeExpr expr = Jimple.v().newSpecialInvokeExpr(editt1, eedit.makeRef(), self);
		units.insertBefore(
				Jimple.v().newAssignStmt(editt1, Jimple.v().newNewExpr(RefType.v("android.widget.EditText"))), u);

	
		
		int width = -2, height = -2;
		String this_width = n.getAttributes().getNamedItem("android:layout_width").getNodeValue();
		if (this_width.equals("fill_parent") || this_width.equals("match_parent"))
			width = -1;
		String this_height = n.getAttributes().getNamedItem("android:layout_height").getNodeValue();
		if (this_height.equals("fill_parent") || this_height.equals("match_parent"))
			height = -1;
		
		Local butparam = Jimple.v().newLocal("butparam", RefType.v("android.widget.LinearLayout$LayoutParams"));
		b.getLocals().add(butparam);
		SootClass param = Scene.v().getSootClass("android.widget.LinearLayout$LayoutParams");
		SootMethod initparam = param.getMethod("void <init>(int,int)");
		SpecialInvokeExpr expr7 = Jimple.v().newSpecialInvokeExpr(butparam, initparam.makeRef(), IntConstant.v(width),
				IntConstant.v(height));
		units.insertBefore(Jimple.v().newAssignStmt(butparam,
				Jimple.v().newNewExpr(RefType.v("android.widget.LinearLayout$LayoutParams"))), u);
		units.insertBefore(Jimple.v().newInvokeStmt(expr7), u);

		viewret ret = new viewret(editt1, butparam);
		return ret;
	}

	private static viewret progressbar(PatchingChain<Unit> units, Unit u, Body b, Node n, String parentname) {
		Local self = b.getThisLocal();
		SootClass probar = Scene.v().getSootClass("android.widget.ProgressBar");
		Local probar1 = Jimple.v().newLocal("probar1", RefType.v("android.widget.ProgressBar"));
		b.getLocals().add(probar1);
		SootMethod pprobar = probar.getMethod("void <init>(android.content.Context)");
		SpecialInvokeExpr expr = Jimple.v().newSpecialInvokeExpr(probar1, pprobar.makeRef(), self);
		units.insertBefore(
				Jimple.v().newAssignStmt(probar1, Jimple.v().newNewExpr(RefType.v("android.widget.ProgressBar"))), u);

		int width = -2, height = -2;
		String this_width = n.getAttributes().getNamedItem("android:layout_width").getNodeValue();
		if (this_width.equals("fill_parent") || this_width.equals("match_parent"))
			width = -1;
		String this_height = n.getAttributes().getNamedItem("android:layout_height").getNodeValue();
		if (this_height.equals("fill_parent") || this_height.equals("match_parent"))
			height = -1;
		
		Local butparam = Jimple.v().newLocal("butparam", RefType.v("android.widget.LinearLayout$LayoutParams"));
		b.getLocals().add(butparam);
		SootClass param = Scene.v().getSootClass("android.widget.LinearLayout$LayoutParams");
		SootMethod initparam = param.getMethod("void <init>(int,int)");
		SpecialInvokeExpr expr7 = Jimple.v().newSpecialInvokeExpr(butparam, initparam.makeRef(), IntConstant.v(width),
				IntConstant.v(height));
		units.insertBefore(Jimple.v().newAssignStmt(butparam,
				Jimple.v().newNewExpr(RefType.v("android.widget.LinearLayout$LayoutParams"))), u);
		units.insertBefore(Jimple.v().newInvokeStmt(expr7), u);

		viewret ret = new viewret(probar1, butparam);
		return ret;

	}

	/*
	 * Considered attributes: 
	 * layout_width: wrap_content ; match_parent
	 * layout_height: wrap_content ; match_parent 
	 * src: a random picture from R.drawable.*;
	 * 
	 * no such attributes:
	 *  Gravity; 
	 */
	private static viewret imageview(PatchingChain<Unit> units, Unit u, Body b, Node n, String parentname) {
		Local self = b.getThisLocal();
		SootClass View = Scene.v().getSootClass("android.view.View");
		NamedNodeMap attrs=n.getAttributes();
		
		SootClass ImageView = Scene.v().getSootClass("android.widget.ImageView");
		String imagename="imageview"+imageviewcount;
		imageviewcount++;
		Local imageV = Jimple.v().newLocal(imagename, RefType.v("android.widget.ImageView"));
		b.getLocals().add(imageV);
		SootMethod pprobar = ImageView.getMethod("void <init>(android.content.Context)");
		SpecialInvokeExpr expr = Jimple.v().newSpecialInvokeExpr(imageV, pprobar.makeRef(), self);
		units.insertBefore(
				Jimple.v().newAssignStmt(imageV, Jimple.v().newNewExpr(RefType.v("android.widget.ImageView"))), u);
		units.insertBefore(Jimple.v().newInvokeStmt(expr), u);
		/*
		 *  set id if exist
		 */
		
		Node id=n.getAttributes().getNamedItem("android:id");
		if(id!=null) {
		String idName=id.getNodeValue().replace("+","");
		Local idn=Jimple.v().newLocal(idName,IntType.v());
		SootMethod genId=View.getMethod("int generateViewId()");
		StaticInvokeExpr genExpr=Jimple.v().newStaticInvokeExpr(genId.makeRef());
		units.insertBefore(Jimple.v().newAssignStmt(idn,genExpr ),u);
		
		SootMethod setId=View.getMethod("void setId(int)");
		InvokeExpr setIdExpr=Jimple.v().newVirtualInvokeExpr(imageV, setId.makeRef(),idn);
		units.insertBefore(Jimple.v().newInvokeStmt(setIdExpr), u);
		idMap.put(idName, idn);
		}
		/*
		 * set width and height
		 */
		
		int width = -2, height = -2;
		String this_width = attrs.getNamedItem("android:layout_width").getNodeValue();
		if (this_width.equals("fill_parent") || this_width.equals("match_parent"))
			width = -1;
		String this_height =attrs.getNamedItem("android:layout_height").getNodeValue();
		if (this_height.equals("fill_parent") || this_height.equals("match_parent"))
			height = -1;
		
		String paramType="android.widget."+parentname+"$LayoutParams";
		String paramName="param"+paramcount;
		paramcount++;
		Local butparam = Jimple.v().newLocal(paramName, RefType.v(paramType));
		b.getLocals().add(butparam);
		SootClass param = Scene.v().getSootClass(paramType);
		SootMethod initparam = param.getMethod("void <init>(int,int)");
		SpecialInvokeExpr expr7 = Jimple.v().newSpecialInvokeExpr(butparam, initparam.makeRef(), IntConstant.v(width),
				IntConstant.v(height));
		units.insertBefore(Jimple.v().newAssignStmt(butparam,
				Jimple.v().newNewExpr(RefType.v(paramType))), u);
		units.insertBefore(Jimple.v().newInvokeStmt(expr7), u);
		
		if(parentname.equals("RelativeLayout")) {
			/*
			 * set center_horizontal
			 */
			SootMethod addRule=param.getMethod("void addRule(int)");
			Node cen_hor=attrs.getNamedItem("android:layout_centerHorizontal");
			if(cen_hor!=null) {
				if(cen_hor.getNodeValue().equals("true")) {
					InvokeExpr addrule=Jimple.v().newVirtualInvokeExpr(butparam, addRule.makeRef(),IntConstant.v(14));
					units.insertBefore(Jimple.v().newInvokeStmt(addrule), u);
				}
			}
			
			SootMethod addRule2=param.getMethod("void addRule(int,int)");
			Node above=attrs.getNamedItem("android:layout_above");
			if(above!=null) {
				Local idAbove=idMap.get(above.getNodeValue());
				if(idAbove!=null) {
					InvokeExpr addRuleAbove=Jimple.v().newVirtualInvokeExpr(butparam, addRule2.makeRef(),IntConstant.v(2),idAbove);
					units.insertBefore(Jimple.v().newInvokeStmt(addRuleAbove), u);
				}
			}
			Node below=attrs.getNamedItem("android:layout_below");
			if(below!=null) {
				Local idBelow=idMap.get(below.getNodeValue());
				if(idBelow!=null) {
					InvokeExpr addRuleBelow=Jimple.v().newVirtualInvokeExpr(butparam, addRule2.makeRef(),IntConstant.v(3),idBelow);
					units.insertBefore(Jimple.v().newInvokeStmt(addRuleBelow), u);
				}
			}
			Node align_par_bot=attrs.getNamedItem("android:layout_alignParentBottom");
			if(align_par_bot!=null) {
				if(align_par_bot.getNodeValue().equals("true")) {
					InvokeExpr addRule_align_par_bot=Jimple.v().newVirtualInvokeExpr(butparam, addRule.makeRef(),IntConstant.v(12));
					units.insertBefore(Jimple.v().newInvokeStmt(addRule_align_par_bot), u);
				}
			}
		}

		/*
		 * set ImageResource
		 */
		int catch_drawable=0;
		String curclassname=b.getMethod().getDeclaringClass().getJavaPackageName();
		
		String drawbleclassName=curclassname+".R$drawable";
		SootClass drawableclass=Scene.v().getSootClass(drawbleclassName);
		//if(curclassname.equals("com.swuos.swuassistant.login")) {
		while(drawableclass.getFields().size()==0&&curclassname.contains(".")) {
			curclassname=curclassname.substring(0,curclassname.lastIndexOf("."));
			drawbleclassName=curclassname+".R$drawable";
			drawableclass=Scene.v().getSootClass(drawbleclassName);
		}
		
		Iterator<SootField> tempfield = drawableclass.getFields().iterator();
		for (; tempfield.hasNext();) {
			SootField f = tempfield.next();
			System.out.println(f.getName() + " Tag number:" + f.getTags().size());
			if (f.getTags().size() == 1) {
				if (f.getTags().get(0) instanceof IntegerConstantValueTag) {
					IntegerConstantValueTag tg = (IntegerConstantValueTag) f.getTags().get(0);
					catch_drawable=tg.getIntValue();
					//System.out.println(tg.getName() + " value:" + tg.getIntValue());
				}
			}
		}
		if(attrs.getNamedItem("android:src")!=null&&drawableclass.getFields().size()>0) {
			SootMethod setsrc=ImageView.getMethod("void setImageResource(int)");
			InvokeExpr setsrcExpr=Jimple.v().newVirtualInvokeExpr(imageV, setsrc.makeRef(),IntConstant.v(catch_drawable));
			units.insertBefore(Jimple.v().newInvokeStmt(setsrcExpr), u);
			countImage++;
		}
		
		
		
		viewret ret = new viewret(imageV, butparam);
		return ret;
	}
	public static void layoutinflater(PatchingChain<Unit> units,Unit u,Body b) {
		SootClass layoutinflater=new SootClass("android.view.LayoutInflater");
		Local self=b.getThisLocal();
		SootMethod from=layoutinflater.getMethod("android.view.LayoutInflater from(android.content.Context)");
		StaticInvokeExpr create=Jimple.v().newStaticInvokeExpr(from.makeRef(),self);
		
	}
 
}

class viewret {
	public Local loc;
	public Local layoutparam;

	public viewret(Local a, Local b) {
		loc = a;
		layoutparam = b;
	}
}