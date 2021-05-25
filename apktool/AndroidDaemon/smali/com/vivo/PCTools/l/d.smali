.class public final Lcom/vivo/PCTools/l/d;
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

.field private i:Ljava/lang/String;

.field private j:Landroid/content/Context;

.field private k:B


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "playlists"

    iput-object v0, p0, Lcom/vivo/PCTools/l/d;->a:Ljava/lang/String;

    const-string v0, "list"

    iput-object v0, p0, Lcom/vivo/PCTools/l/d;->b:Ljava/lang/String;

    const-string v0, "_id"

    iput-object v0, p0, Lcom/vivo/PCTools/l/d;->c:Ljava/lang/String;

    const-string v0, "del"

    iput-object v0, p0, Lcom/vivo/PCTools/l/d;->d:Ljava/lang/String;

    const-string v0, "name"

    iput-object v0, p0, Lcom/vivo/PCTools/l/d;->e:Ljava/lang/String;

    const-string v0, "addlist"

    iput-object v0, p0, Lcom/vivo/PCTools/l/d;->f:Ljava/lang/String;

    const-string v0, "removelist"

    iput-object v0, p0, Lcom/vivo/PCTools/l/d;->g:Ljava/lang/String;

    const-string v0, "ringtone"

    iput-object v0, p0, Lcom/vivo/PCTools/l/d;->h:Ljava/lang/String;

    const-string v0, "source"

    iput-object v0, p0, Lcom/vivo/PCTools/l/d;->i:Ljava/lang/String;

    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/vivo/PCTools/l/d;->k:B

    iput-object p1, p0, Lcom/vivo/PCTools/l/d;->j:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/vivo/PCTools/l/d;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/vivo/PCTools/l/d;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/vivo/PCTools/l/d;B)V
    .locals 1

    const/4 v0, -0x1

    iput-byte v0, p0, Lcom/vivo/PCTools/l/d;->k:B

    return-void
.end method

.method static synthetic b(Lcom/vivo/PCTools/l/d;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/vivo/PCTools/l/d;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/vivo/PCTools/l/d;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/vivo/PCTools/l/d;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/vivo/PCTools/l/d;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/vivo/PCTools/l/d;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/vivo/PCTools/l/d;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/vivo/PCTools/l/d;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lcom/vivo/PCTools/l/d;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/vivo/PCTools/l/d;->f:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic g(Lcom/vivo/PCTools/l/d;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/vivo/PCTools/l/d;->g:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic h(Lcom/vivo/PCTools/l/d;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/vivo/PCTools/l/d;->i:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic i(Lcom/vivo/PCTools/l/d;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/vivo/PCTools/l/d;->j:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public final parseAddOrDelMusic(Ljava/io/InputStream;[Ljava/lang/String;I)B
    .locals 9

    const/4 v8, 0x0

    new-instance v0, Landroid/sax/RootElement;

    const-string v1, ""

    iget-object v2, p0, Lcom/vivo/PCTools/l/d;->a:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/sax/RootElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vivo/PCTools/l/d;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/sax/RootElement;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/PCTools/l/d;->j:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Lcom/vivo/PCTools/BaseApplication;->a:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ".music_send_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_MusicXml.xml"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, p2, v8

    new-instance v4, Ljava/io/FileOutputStream;

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    new-instance v3, Ljava/io/OutputStreamWriter;

    invoke-direct {v3, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v5

    invoke-virtual {v5}, Lorg/xmlpull/v1/XmlPullParserFactory;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v5

    invoke-interface {v5, v3}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/Writer;)V

    const-string v6, "UTF-8"

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    iput-byte v8, p0, Lcom/vivo/PCTools/l/d;->k:B

    new-instance v6, Lcom/vivo/PCTools/l/j;

    invoke-direct {v6, p0, v5}, Lcom/vivo/PCTools/l/j;-><init>(Lcom/vivo/PCTools/l/d;Lorg/xmlpull/v1/XmlSerializer;)V

    invoke-virtual {v0, v6}, Landroid/sax/RootElement;->setStartElementListener(Landroid/sax/StartElementListener;)V

    new-instance v6, Lcom/vivo/PCTools/l/k;

    invoke-direct {v6, p0, v5, v3, v4}, Lcom/vivo/PCTools/l/k;-><init>(Lcom/vivo/PCTools/l/d;Lorg/xmlpull/v1/XmlSerializer;Ljava/io/OutputStreamWriter;Ljava/io/OutputStream;)V

    invoke-virtual {v0, v6}, Landroid/sax/RootElement;->setEndElementListener(Landroid/sax/EndElementListener;)V

    new-instance v3, Lcom/vivo/PCTools/l/l;

    invoke-direct {v3, p0, v2, v5}, Lcom/vivo/PCTools/l/l;-><init>(Lcom/vivo/PCTools/l/d;Landroid/content/ContentResolver;Lorg/xmlpull/v1/XmlSerializer;)V

    invoke-virtual {v1, v3}, Landroid/sax/Element;->setStartElementListener(Landroid/sax/StartElementListener;)V

    new-instance v2, Lcom/vivo/PCTools/l/m;

    invoke-direct {v2, p0, v5}, Lcom/vivo/PCTools/l/m;-><init>(Lcom/vivo/PCTools/l/d;Lorg/xmlpull/v1/XmlSerializer;)V

    invoke-virtual {v1, v2}, Landroid/sax/Element;->setEndElementListener(Landroid/sax/EndElementListener;)V

    sget-object v1, Landroid/util/Xml$Encoding;->UTF_8:Landroid/util/Xml$Encoding;

    invoke-virtual {v0}, Landroid/sax/RootElement;->getContentHandler()Lorg/xml/sax/ContentHandler;

    move-result-object v0

    invoke-static {p1, v1, v0}, Landroid/util/Xml;->parse(Ljava/io/InputStream;Landroid/util/Xml$Encoding;Lorg/xml/sax/ContentHandler;)V

    iget-byte v0, p0, Lcom/vivo/PCTools/l/d;->k:B

    return v0
.end method

.method public final parseProcessList(Ljava/io/InputStream;[Ljava/lang/String;I)B
    .locals 9

    const/4 v8, 0x0

    new-instance v0, Landroid/sax/RootElement;

    const-string v1, ""

    iget-object v2, p0, Lcom/vivo/PCTools/l/d;->a:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/sax/RootElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vivo/PCTools/l/d;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/sax/RootElement;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/PCTools/l/d;->j:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Lcom/vivo/PCTools/BaseApplication;->a:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ".music_send_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_MusicXml.xml"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, p2, v8

    new-instance v4, Ljava/io/FileOutputStream;

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    new-instance v3, Ljava/io/OutputStreamWriter;

    invoke-direct {v3, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v5

    invoke-virtual {v5}, Lorg/xmlpull/v1/XmlPullParserFactory;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v5

    invoke-interface {v5, v3}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/Writer;)V

    const-string v6, "UTF-8"

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    iput-byte v8, p0, Lcom/vivo/PCTools/l/d;->k:B

    new-instance v6, Lcom/vivo/PCTools/l/e;

    invoke-direct {v6, p0, v5}, Lcom/vivo/PCTools/l/e;-><init>(Lcom/vivo/PCTools/l/d;Lorg/xmlpull/v1/XmlSerializer;)V

    invoke-virtual {v0, v6}, Landroid/sax/RootElement;->setStartElementListener(Landroid/sax/StartElementListener;)V

    new-instance v6, Lcom/vivo/PCTools/l/g;

    invoke-direct {v6, p0, v5, v3, v4}, Lcom/vivo/PCTools/l/g;-><init>(Lcom/vivo/PCTools/l/d;Lorg/xmlpull/v1/XmlSerializer;Ljava/io/OutputStreamWriter;Ljava/io/OutputStream;)V

    invoke-virtual {v0, v6}, Landroid/sax/RootElement;->setEndElementListener(Landroid/sax/EndElementListener;)V

    new-instance v3, Lcom/vivo/PCTools/l/h;

    invoke-direct {v3, p0, v2, v5}, Lcom/vivo/PCTools/l/h;-><init>(Lcom/vivo/PCTools/l/d;Landroid/content/ContentResolver;Lorg/xmlpull/v1/XmlSerializer;)V

    invoke-virtual {v1, v3}, Landroid/sax/Element;->setStartElementListener(Landroid/sax/StartElementListener;)V

    new-instance v2, Lcom/vivo/PCTools/l/i;

    invoke-direct {v2, p0, v5}, Lcom/vivo/PCTools/l/i;-><init>(Lcom/vivo/PCTools/l/d;Lorg/xmlpull/v1/XmlSerializer;)V

    invoke-virtual {v1, v2}, Landroid/sax/Element;->setEndElementListener(Landroid/sax/EndElementListener;)V

    sget-object v1, Landroid/util/Xml$Encoding;->UTF_8:Landroid/util/Xml$Encoding;

    invoke-virtual {v0}, Landroid/sax/RootElement;->getContentHandler()Lorg/xml/sax/ContentHandler;

    move-result-object v0

    invoke-static {p1, v1, v0}, Landroid/util/Xml;->parse(Ljava/io/InputStream;Landroid/util/Xml$Encoding;Lorg/xml/sax/ContentHandler;)V

    iget-byte v0, p0, Lcom/vivo/PCTools/l/d;->k:B

    return v0
.end method

.method public final parseSetRingtone(Ljava/io/InputStream;)B
    .locals 3

    new-instance v0, Landroid/sax/RootElement;

    const-string v1, ""

    iget-object v2, p0, Lcom/vivo/PCTools/l/d;->h:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/sax/RootElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    iput-byte v1, p0, Lcom/vivo/PCTools/l/d;->k:B

    new-instance v1, Lcom/vivo/PCTools/l/n;

    invoke-direct {v1, p0}, Lcom/vivo/PCTools/l/n;-><init>(Lcom/vivo/PCTools/l/d;)V

    invoke-virtual {v0, v1}, Landroid/sax/RootElement;->setStartElementListener(Landroid/sax/StartElementListener;)V

    new-instance v1, Lcom/vivo/PCTools/l/f;

    invoke-direct {v1, p0}, Lcom/vivo/PCTools/l/f;-><init>(Lcom/vivo/PCTools/l/d;)V

    invoke-virtual {v0, v1}, Landroid/sax/RootElement;->setEndElementListener(Landroid/sax/EndElementListener;)V

    sget-object v1, Landroid/util/Xml$Encoding;->UTF_8:Landroid/util/Xml$Encoding;

    invoke-virtual {v0}, Landroid/sax/RootElement;->getContentHandler()Lorg/xml/sax/ContentHandler;

    move-result-object v0

    invoke-static {p1, v1, v0}, Landroid/util/Xml;->parse(Ljava/io/InputStream;Landroid/util/Xml$Encoding;Lorg/xml/sax/ContentHandler;)V

    iget-byte v0, p0, Lcom/vivo/PCTools/l/d;->k:B

    return v0
.end method
