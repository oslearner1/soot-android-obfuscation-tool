.class public final Lcom/vivo/PCTools/k/d;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "image"

    iput-object v0, p0, Lcom/vivo/PCTools/k/d;->a:Ljava/lang/String;

    const-string v0, "source"

    iput-object v0, p0, Lcom/vivo/PCTools/k/d;->b:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vivo/PCTools/k/d;->c:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/vivo/PCTools/k/d;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/vivo/PCTools/k/d;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/vivo/PCTools/k/d;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/vivo/PCTools/k/d;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final parseSetWallPaper(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 3

    new-instance v0, Landroid/sax/RootElement;

    const-string v1, ""

    iget-object v2, p0, Lcom/vivo/PCTools/k/d;->a:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/sax/RootElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/vivo/PCTools/k/e;

    invoke-direct {v1, p0}, Lcom/vivo/PCTools/k/e;-><init>(Lcom/vivo/PCTools/k/d;)V

    invoke-virtual {v0, v1}, Landroid/sax/RootElement;->setStartElementListener(Landroid/sax/StartElementListener;)V

    new-instance v1, Lcom/vivo/PCTools/k/f;

    invoke-direct {v1, p0}, Lcom/vivo/PCTools/k/f;-><init>(Lcom/vivo/PCTools/k/d;)V

    invoke-virtual {v0, v1}, Landroid/sax/RootElement;->setEndElementListener(Landroid/sax/EndElementListener;)V

    sget-object v1, Landroid/util/Xml$Encoding;->UTF_8:Landroid/util/Xml$Encoding;

    invoke-virtual {v0}, Landroid/sax/RootElement;->getContentHandler()Lorg/xml/sax/ContentHandler;

    move-result-object v0

    invoke-static {p1, v1, v0}, Landroid/util/Xml;->parse(Ljava/io/InputStream;Landroid/util/Xml$Encoding;Lorg/xml/sax/ContentHandler;)V

    iget-object v0, p0, Lcom/vivo/PCTools/k/d;->c:Ljava/lang/String;

    return-object v0
.end method
