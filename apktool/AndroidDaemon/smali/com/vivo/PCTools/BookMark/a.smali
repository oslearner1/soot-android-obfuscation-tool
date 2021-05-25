.class public Lcom/vivo/PCTools/BookMark/a;
.super Ljava/lang/Object;


# instance fields
.field public a:Ljava/util/ArrayList;

.field private b:Lcom/vivo/PCTools/BookMark/BookmarkData;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lcom/vivo/PCTools/BookMark/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/vivo/PCTools/BookMark/a;)Lcom/vivo/PCTools/BookMark/BookmarkData;
    .locals 1

    iget-object v0, p0, Lcom/vivo/PCTools/BookMark/a;->b:Lcom/vivo/PCTools/BookMark/BookmarkData;

    return-object v0
.end method

.method static synthetic a(Lcom/vivo/PCTools/BookMark/a;Lcom/vivo/PCTools/BookMark/BookmarkData;)V
    .locals 0

    iput-object p1, p0, Lcom/vivo/PCTools/BookMark/a;->b:Lcom/vivo/PCTools/BookMark/BookmarkData;

    return-void
.end method


# virtual methods
.method public parsebookmark(Ljava/io/InputStream;)Ljava/util/ArrayList;
    .locals 16

    new-instance v1, Landroid/sax/RootElement;

    const-string v2, ""

    const-string v3, "root"

    invoke-direct {v1, v2, v3}, Landroid/sax/RootElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "item"

    invoke-virtual {v1, v2}, Landroid/sax/RootElement;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v2

    const-string v3, "bid"

    invoke-virtual {v2, v3}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v3

    const-string v4, "uid"

    invoke-virtual {v2, v4}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v4

    const-string v5, "userEntered"

    invoke-virtual {v2, v5}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v5

    const-string v6, "visits"

    invoke-virtual {v2, v6}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v6

    const-string v7, "parent"

    invoke-virtual {v2, v7}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v7

    const-string v8, "folder"

    invoke-virtual {v2, v8}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v8

    const-string v9, "folderId"

    invoke-virtual {v2, v9}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v9

    const-string v10, "status"

    invoke-virtual {v2, v10}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v10

    const-string v11, "createDate"

    invoke-virtual {v2, v11}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v11

    const-string v12, "title"

    invoke-virtual {v2, v12}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v12

    const-string v13, "url"

    invoke-virtual {v2, v13}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v13

    const-string v14, "favicon"

    invoke-virtual {v2, v14}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v14

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/vivo/PCTools/BookMark/a;->a:Ljava/util/ArrayList;

    new-instance v15, Lcom/vivo/PCTools/BookMark/b;

    invoke-direct/range {v15 .. v16}, Lcom/vivo/PCTools/BookMark/b;-><init>(Lcom/vivo/PCTools/BookMark/a;)V

    invoke-virtual {v2, v15}, Landroid/sax/Element;->setStartElementListener(Landroid/sax/StartElementListener;)V

    new-instance v15, Lcom/vivo/PCTools/BookMark/h;

    invoke-direct/range {v15 .. v16}, Lcom/vivo/PCTools/BookMark/h;-><init>(Lcom/vivo/PCTools/BookMark/a;)V

    invoke-virtual {v2, v15}, Landroid/sax/Element;->setEndElementListener(Landroid/sax/EndElementListener;)V

    new-instance v2, Lcom/vivo/PCTools/BookMark/i;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/vivo/PCTools/BookMark/i;-><init>(Lcom/vivo/PCTools/BookMark/a;)V

    invoke-virtual {v3, v2}, Landroid/sax/Element;->setEndTextElementListener(Landroid/sax/EndTextElementListener;)V

    new-instance v2, Lcom/vivo/PCTools/BookMark/j;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/vivo/PCTools/BookMark/j;-><init>(Lcom/vivo/PCTools/BookMark/a;)V

    invoke-virtual {v4, v2}, Landroid/sax/Element;->setEndTextElementListener(Landroid/sax/EndTextElementListener;)V

    new-instance v2, Lcom/vivo/PCTools/BookMark/k;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/vivo/PCTools/BookMark/k;-><init>(Lcom/vivo/PCTools/BookMark/a;)V

    invoke-virtual {v5, v2}, Landroid/sax/Element;->setEndTextElementListener(Landroid/sax/EndTextElementListener;)V

    new-instance v2, Lcom/vivo/PCTools/BookMark/l;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/vivo/PCTools/BookMark/l;-><init>(Lcom/vivo/PCTools/BookMark/a;)V

    invoke-virtual {v6, v2}, Landroid/sax/Element;->setEndTextElementListener(Landroid/sax/EndTextElementListener;)V

    new-instance v2, Lcom/vivo/PCTools/BookMark/m;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/vivo/PCTools/BookMark/m;-><init>(Lcom/vivo/PCTools/BookMark/a;)V

    invoke-virtual {v7, v2}, Landroid/sax/Element;->setEndTextElementListener(Landroid/sax/EndTextElementListener;)V

    new-instance v2, Lcom/vivo/PCTools/BookMark/n;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/vivo/PCTools/BookMark/n;-><init>(Lcom/vivo/PCTools/BookMark/a;)V

    invoke-virtual {v8, v2}, Landroid/sax/Element;->setEndTextElementListener(Landroid/sax/EndTextElementListener;)V

    new-instance v2, Lcom/vivo/PCTools/BookMark/o;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/vivo/PCTools/BookMark/o;-><init>(Lcom/vivo/PCTools/BookMark/a;)V

    invoke-virtual {v9, v2}, Landroid/sax/Element;->setEndTextElementListener(Landroid/sax/EndTextElementListener;)V

    new-instance v2, Lcom/vivo/PCTools/BookMark/c;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/vivo/PCTools/BookMark/c;-><init>(Lcom/vivo/PCTools/BookMark/a;)V

    invoke-virtual {v10, v2}, Landroid/sax/Element;->setEndTextElementListener(Landroid/sax/EndTextElementListener;)V

    new-instance v2, Lcom/vivo/PCTools/BookMark/d;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/vivo/PCTools/BookMark/d;-><init>(Lcom/vivo/PCTools/BookMark/a;)V

    invoke-virtual {v11, v2}, Landroid/sax/Element;->setEndTextElementListener(Landroid/sax/EndTextElementListener;)V

    new-instance v2, Lcom/vivo/PCTools/BookMark/e;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/vivo/PCTools/BookMark/e;-><init>(Lcom/vivo/PCTools/BookMark/a;)V

    invoke-virtual {v12, v2}, Landroid/sax/Element;->setEndTextElementListener(Landroid/sax/EndTextElementListener;)V

    new-instance v2, Lcom/vivo/PCTools/BookMark/f;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/vivo/PCTools/BookMark/f;-><init>(Lcom/vivo/PCTools/BookMark/a;)V

    invoke-virtual {v13, v2}, Landroid/sax/Element;->setEndTextElementListener(Landroid/sax/EndTextElementListener;)V

    new-instance v2, Lcom/vivo/PCTools/BookMark/g;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/vivo/PCTools/BookMark/g;-><init>(Lcom/vivo/PCTools/BookMark/a;)V

    invoke-virtual {v14, v2}, Landroid/sax/Element;->setEndTextElementListener(Landroid/sax/EndTextElementListener;)V

    sget-object v2, Landroid/util/Xml$Encoding;->UTF_8:Landroid/util/Xml$Encoding;

    invoke-virtual {v1}, Landroid/sax/RootElement;->getContentHandler()Lorg/xml/sax/ContentHandler;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-static {v0, v2, v1}, Landroid/util/Xml;->parse(Ljava/io/InputStream;Landroid/util/Xml$Encoding;Lorg/xml/sax/ContentHandler;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vivo/PCTools/BookMark/a;->a:Ljava/util/ArrayList;

    return-object v1
.end method
