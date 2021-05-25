.class public final Lcom/vivo/PCTools/g/e;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "package"

    iput-object v0, p0, Lcom/vivo/PCTools/g/e;->a:Ljava/lang/String;

    const-string v0, "flags"

    iput-object v0, p0, Lcom/vivo/PCTools/g/e;->b:Ljava/lang/String;

    const-string v0, "size"

    iput-object v0, p0, Lcom/vivo/PCTools/g/e;->c:Ljava/lang/String;

    const-string v0, "root"

    iput-object v0, p0, Lcom/vivo/PCTools/g/e;->d:Ljava/lang/String;

    const-string v0, "apk"

    iput-object v0, p0, Lcom/vivo/PCTools/g/e;->e:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/vivo/PCTools/g/e;->f:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/vivo/PCTools/g/e;->g:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/vivo/PCTools/g/e;->h:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/vivo/PCTools/g/e;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/vivo/PCTools/g/e;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/vivo/PCTools/g/e;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/vivo/PCTools/g/e;->f:Ljava/lang/String;

    return-void
.end method

.method static synthetic b(Lcom/vivo/PCTools/g/e;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/vivo/PCTools/g/e;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/vivo/PCTools/g/e;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/vivo/PCTools/g/e;->g:Ljava/lang/String;

    return-void
.end method

.method static synthetic c(Lcom/vivo/PCTools/g/e;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/vivo/PCTools/g/e;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/vivo/PCTools/g/e;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/vivo/PCTools/g/e;->h:Ljava/lang/String;

    return-void
.end method

.method static synthetic d(Lcom/vivo/PCTools/g/e;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/vivo/PCTools/g/e;->f:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/vivo/PCTools/g/e;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/vivo/PCTools/g/e;->g:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final parseMovePackageInfo(Ljava/io/InputStream;)[Ljava/lang/String;
    .locals 3

    new-instance v0, Landroid/sax/RootElement;

    const-string v1, ""

    iget-object v2, p0, Lcom/vivo/PCTools/g/e;->d:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/sax/RootElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, ""

    iget-object v2, p0, Lcom/vivo/PCTools/g/e;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/sax/RootElement;->getChild(Ljava/lang/String;Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v1

    new-instance v2, Lcom/vivo/PCTools/g/f;

    invoke-direct {v2, p0}, Lcom/vivo/PCTools/g/f;-><init>(Lcom/vivo/PCTools/g/e;)V

    invoke-virtual {v1, v2}, Landroid/sax/Element;->setStartElementListener(Landroid/sax/StartElementListener;)V

    new-instance v1, Lcom/vivo/PCTools/g/g;

    invoke-direct {v1, p0}, Lcom/vivo/PCTools/g/g;-><init>(Lcom/vivo/PCTools/g/e;)V

    invoke-virtual {v0, v1}, Landroid/sax/RootElement;->setEndElementListener(Landroid/sax/EndElementListener;)V

    sget-object v1, Landroid/util/Xml$Encoding;->UTF_8:Landroid/util/Xml$Encoding;

    invoke-virtual {v0}, Landroid/sax/RootElement;->getContentHandler()Lorg/xml/sax/ContentHandler;

    move-result-object v0

    invoke-static {p1, v1, v0}, Landroid/util/Xml;->parse(Ljava/io/InputStream;Landroid/util/Xml$Encoding;Lorg/xml/sax/ContentHandler;)V

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/vivo/PCTools/g/e;->f:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/vivo/PCTools/g/e;->g:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/vivo/PCTools/g/e;->h:Ljava/lang/String;

    aput-object v2, v0, v1

    return-object v0
.end method
