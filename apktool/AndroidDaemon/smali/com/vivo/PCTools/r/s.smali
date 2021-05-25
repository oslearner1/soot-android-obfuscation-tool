.class public final Lcom/vivo/PCTools/r/s;
.super Ljava/lang/Object;


# instance fields
.field a:Ljava/util/ArrayList;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Lcom/vivo/PCTools/r/ar;

.field private o:Lcom/vivo/PCTools/r/ar;

.field private p:Landroid/content/ContentValues;

.field private q:Lcom/vivo/PCTools/r/ar;

.field private r:Lcom/vivo/PCTools/r/aq;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "SmsGlobal"

    iput-object v0, p0, Lcom/vivo/PCTools/r/s;->b:Ljava/lang/String;

    const-string v0, "SmsList"

    iput-object v0, p0, Lcom/vivo/PCTools/r/s;->c:Ljava/lang/String;

    const-string v0, "SmsLocal"

    iput-object v0, p0, Lcom/vivo/PCTools/r/s;->d:Ljava/lang/String;

    const-string v0, "SmsTime"

    iput-object v0, p0, Lcom/vivo/PCTools/r/s;->e:Ljava/lang/String;

    const-string v0, "SmsAddress"

    iput-object v0, p0, Lcom/vivo/PCTools/r/s;->f:Ljava/lang/String;

    const-string v0, "SmsDate"

    iput-object v0, p0, Lcom/vivo/PCTools/r/s;->g:Ljava/lang/String;

    const-string v0, "SmsRead"

    iput-object v0, p0, Lcom/vivo/PCTools/r/s;->h:Ljava/lang/String;

    const-string v0, "SmsStatus"

    iput-object v0, p0, Lcom/vivo/PCTools/r/s;->i:Ljava/lang/String;

    const-string v0, "SmsType"

    iput-object v0, p0, Lcom/vivo/PCTools/r/s;->j:Ljava/lang/String;

    const-string v0, "SmsBody"

    iput-object v0, p0, Lcom/vivo/PCTools/r/s;->k:Ljava/lang/String;

    const-string v0, "ErrorCode"

    iput-object v0, p0, Lcom/vivo/PCTools/r/s;->l:Ljava/lang/String;

    const-string v0, "SmsSeen"

    iput-object v0, p0, Lcom/vivo/PCTools/r/s;->m:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/vivo/PCTools/r/s;)Lcom/vivo/PCTools/r/ar;
    .locals 1

    iget-object v0, p0, Lcom/vivo/PCTools/r/s;->n:Lcom/vivo/PCTools/r/ar;

    return-object v0
.end method

.method static synthetic a(Lcom/vivo/PCTools/r/s;Landroid/content/ContentValues;)V
    .locals 0

    iput-object p1, p0, Lcom/vivo/PCTools/r/s;->p:Landroid/content/ContentValues;

    return-void
.end method

.method static synthetic b(Lcom/vivo/PCTools/r/s;)Landroid/content/ContentValues;
    .locals 1

    iget-object v0, p0, Lcom/vivo/PCTools/r/s;->p:Landroid/content/ContentValues;

    return-object v0
.end method

.method static synthetic c(Lcom/vivo/PCTools/r/s;)Lcom/vivo/PCTools/r/ar;
    .locals 1

    iget-object v0, p0, Lcom/vivo/PCTools/r/s;->o:Lcom/vivo/PCTools/r/ar;

    return-object v0
.end method

.method static synthetic d(Lcom/vivo/PCTools/r/s;)Lcom/vivo/PCTools/r/ar;
    .locals 1

    iget-object v0, p0, Lcom/vivo/PCTools/r/s;->q:Lcom/vivo/PCTools/r/ar;

    return-object v0
.end method

.method static synthetic e(Lcom/vivo/PCTools/r/s;)Lcom/vivo/PCTools/r/aq;
    .locals 1

    iget-object v0, p0, Lcom/vivo/PCTools/r/s;->r:Lcom/vivo/PCTools/r/aq;

    return-object v0
.end method


# virtual methods
.method public final parse(Ljava/io/InputStream;)Ljava/util/ArrayList;
    .locals 13

    new-instance v0, Landroid/sax/RootElement;

    const-string v1, ""

    iget-object v2, p0, Lcom/vivo/PCTools/r/s;->b:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/sax/RootElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vivo/PCTools/r/s;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/sax/RootElement;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/PCTools/r/s;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/PCTools/r/s;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v2

    iget-object v3, p0, Lcom/vivo/PCTools/r/s;->g:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v3

    iget-object v4, p0, Lcom/vivo/PCTools/r/s;->h:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v4

    iget-object v5, p0, Lcom/vivo/PCTools/r/s;->i:Ljava/lang/String;

    invoke-virtual {v1, v5}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v5

    iget-object v6, p0, Lcom/vivo/PCTools/r/s;->j:Ljava/lang/String;

    invoke-virtual {v1, v6}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v6

    iget-object v7, p0, Lcom/vivo/PCTools/r/s;->k:Ljava/lang/String;

    invoke-virtual {v1, v7}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v7

    iget-object v8, p0, Lcom/vivo/PCTools/r/s;->l:Ljava/lang/String;

    invoke-virtual {v1, v8}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v8

    iget-object v9, p0, Lcom/vivo/PCTools/r/s;->m:Ljava/lang/String;

    invoke-virtual {v1, v9}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v9

    iget-object v10, p0, Lcom/vivo/PCTools/r/s;->e:Ljava/lang/String;

    invoke-virtual {v1, v10}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v10

    new-instance v11, Lcom/vivo/PCTools/r/ar;

    const/4 v12, 0x0

    invoke-direct {v11, p0, v12}, Lcom/vivo/PCTools/r/ar;-><init>(Lcom/vivo/PCTools/r/s;B)V

    iput-object v11, p0, Lcom/vivo/PCTools/r/s;->o:Lcom/vivo/PCTools/r/ar;

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iput-object v11, p0, Lcom/vivo/PCTools/r/s;->a:Ljava/util/ArrayList;

    new-instance v11, Lcom/vivo/PCTools/r/al;

    invoke-direct {v11, p0}, Lcom/vivo/PCTools/r/al;-><init>(Lcom/vivo/PCTools/r/s;)V

    invoke-virtual {v1, v11}, Landroid/sax/Element;->setStartElementListener(Landroid/sax/StartElementListener;)V

    new-instance v11, Lcom/vivo/PCTools/r/am;

    invoke-direct {v11, p0}, Lcom/vivo/PCTools/r/am;-><init>(Lcom/vivo/PCTools/r/s;)V

    invoke-virtual {v1, v11}, Landroid/sax/Element;->setEndElementListener(Landroid/sax/EndElementListener;)V

    new-instance v1, Lcom/vivo/PCTools/r/an;

    invoke-direct {v1, p0}, Lcom/vivo/PCTools/r/an;-><init>(Lcom/vivo/PCTools/r/s;)V

    invoke-virtual {v2, v1}, Landroid/sax/Element;->setEndTextElementListener(Landroid/sax/EndTextElementListener;)V

    new-instance v1, Lcom/vivo/PCTools/r/ao;

    invoke-direct {v1, p0}, Lcom/vivo/PCTools/r/ao;-><init>(Lcom/vivo/PCTools/r/s;)V

    invoke-virtual {v3, v1}, Landroid/sax/Element;->setEndTextElementListener(Landroid/sax/EndTextElementListener;)V

    new-instance v1, Lcom/vivo/PCTools/r/ap;

    invoke-direct {v1, p0}, Lcom/vivo/PCTools/r/ap;-><init>(Lcom/vivo/PCTools/r/s;)V

    invoke-virtual {v4, v1}, Landroid/sax/Element;->setEndTextElementListener(Landroid/sax/EndTextElementListener;)V

    new-instance v1, Lcom/vivo/PCTools/r/u;

    invoke-direct {v1, p0}, Lcom/vivo/PCTools/r/u;-><init>(Lcom/vivo/PCTools/r/s;)V

    invoke-virtual {v5, v1}, Landroid/sax/Element;->setEndTextElementListener(Landroid/sax/EndTextElementListener;)V

    new-instance v1, Lcom/vivo/PCTools/r/v;

    invoke-direct {v1, p0}, Lcom/vivo/PCTools/r/v;-><init>(Lcom/vivo/PCTools/r/s;)V

    invoke-virtual {v6, v1}, Landroid/sax/Element;->setEndTextElementListener(Landroid/sax/EndTextElementListener;)V

    new-instance v1, Lcom/vivo/PCTools/r/w;

    invoke-direct {v1, p0}, Lcom/vivo/PCTools/r/w;-><init>(Lcom/vivo/PCTools/r/s;)V

    invoke-virtual {v7, v1}, Landroid/sax/Element;->setEndTextElementListener(Landroid/sax/EndTextElementListener;)V

    new-instance v1, Lcom/vivo/PCTools/r/x;

    invoke-direct {v1, p0}, Lcom/vivo/PCTools/r/x;-><init>(Lcom/vivo/PCTools/r/s;)V

    invoke-virtual {v8, v1}, Landroid/sax/Element;->setEndTextElementListener(Landroid/sax/EndTextElementListener;)V

    new-instance v1, Lcom/vivo/PCTools/r/y;

    invoke-direct {v1, p0}, Lcom/vivo/PCTools/r/y;-><init>(Lcom/vivo/PCTools/r/s;)V

    invoke-virtual {v9, v1}, Landroid/sax/Element;->setEndTextElementListener(Landroid/sax/EndTextElementListener;)V

    new-instance v1, Lcom/vivo/PCTools/r/z;

    invoke-direct {v1, p0}, Lcom/vivo/PCTools/r/z;-><init>(Lcom/vivo/PCTools/r/s;)V

    invoke-virtual {v10, v1}, Landroid/sax/Element;->setEndTextElementListener(Landroid/sax/EndTextElementListener;)V

    sget-object v1, Landroid/util/Xml$Encoding;->UTF_8:Landroid/util/Xml$Encoding;

    invoke-virtual {v0}, Landroid/sax/RootElement;->getContentHandler()Lorg/xml/sax/ContentHandler;

    move-result-object v0

    invoke-static {p1, v1, v0}, Landroid/util/Xml;->parse(Ljava/io/InputStream;Landroid/util/Xml$Encoding;Lorg/xml/sax/ContentHandler;)V

    iget-object v0, p0, Lcom/vivo/PCTools/r/s;->a:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final parseClipSyncRecXml(Ljava/io/InputStream;)Landroid/content/ContentValues;
    .locals 5

    new-instance v0, Landroid/sax/RootElement;

    const-string v1, ""

    const-string v2, "clip_global"

    invoke-direct {v0, v1, v2}, Landroid/sax/RootElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "clip_type"

    invoke-virtual {v0, v1}, Landroid/sax/RootElement;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v1

    const-string v2, "clip_content"

    invoke-virtual {v0, v2}, Landroid/sax/RootElement;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v2

    new-instance v3, Lcom/vivo/PCTools/r/aq;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/vivo/PCTools/r/aq;-><init>(Lcom/vivo/PCTools/r/s;B)V

    iput-object v3, p0, Lcom/vivo/PCTools/r/s;->r:Lcom/vivo/PCTools/r/aq;

    new-instance v3, Lcom/vivo/PCTools/r/ah;

    invoke-direct {v3, p0}, Lcom/vivo/PCTools/r/ah;-><init>(Lcom/vivo/PCTools/r/s;)V

    invoke-virtual {v1, v3}, Landroid/sax/Element;->setEndTextElementListener(Landroid/sax/EndTextElementListener;)V

    new-instance v1, Lcom/vivo/PCTools/r/ai;

    invoke-direct {v1, p0}, Lcom/vivo/PCTools/r/ai;-><init>(Lcom/vivo/PCTools/r/s;)V

    invoke-virtual {v2, v1}, Landroid/sax/Element;->setEndTextElementListener(Landroid/sax/EndTextElementListener;)V

    sget-object v1, Landroid/util/Xml$Encoding;->UTF_8:Landroid/util/Xml$Encoding;

    invoke-virtual {v0}, Landroid/sax/RootElement;->getContentHandler()Lorg/xml/sax/ContentHandler;

    move-result-object v0

    invoke-static {p1, v1, v0}, Landroid/util/Xml;->parse(Ljava/io/InputStream;Landroid/util/Xml$Encoding;Lorg/xml/sax/ContentHandler;)V

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "clip_type"

    iget-object v2, p0, Lcom/vivo/PCTools/r/s;->r:Lcom/vivo/PCTools/r/aq;

    iget-object v2, v2, Lcom/vivo/PCTools/r/aq;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "clip_content"

    iget-object v2, p0, Lcom/vivo/PCTools/r/s;->r:Lcom/vivo/PCTools/r/aq;

    iget-object v2, v2, Lcom/vivo/PCTools/r/aq;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public final parseSendMessage(Ljava/io/InputStream;)Landroid/content/ContentValues;
    .locals 6

    new-instance v0, Landroid/sax/RootElement;

    const-string v1, ""

    iget-object v2, p0, Lcom/vivo/PCTools/r/s;->b:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/sax/RootElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vivo/PCTools/r/s;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/sax/RootElement;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/PCTools/r/s;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v2

    iget-object v3, p0, Lcom/vivo/PCTools/r/s;->k:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v3

    new-instance v4, Lcom/vivo/PCTools/r/ar;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/vivo/PCTools/r/ar;-><init>(Lcom/vivo/PCTools/r/s;B)V

    iput-object v4, p0, Lcom/vivo/PCTools/r/s;->n:Lcom/vivo/PCTools/r/ar;

    new-instance v4, Lcom/vivo/PCTools/r/t;

    invoke-direct {v4, p0}, Lcom/vivo/PCTools/r/t;-><init>(Lcom/vivo/PCTools/r/s;)V

    invoke-virtual {v1, v4}, Landroid/sax/Element;->setStartElementListener(Landroid/sax/StartElementListener;)V

    new-instance v4, Lcom/vivo/PCTools/r/ae;

    invoke-direct {v4, p0}, Lcom/vivo/PCTools/r/ae;-><init>(Lcom/vivo/PCTools/r/s;)V

    invoke-virtual {v1, v4}, Landroid/sax/Element;->setEndElementListener(Landroid/sax/EndElementListener;)V

    new-instance v1, Lcom/vivo/PCTools/r/aj;

    invoke-direct {v1, p0}, Lcom/vivo/PCTools/r/aj;-><init>(Lcom/vivo/PCTools/r/s;)V

    invoke-virtual {v2, v1}, Landroid/sax/Element;->setEndTextElementListener(Landroid/sax/EndTextElementListener;)V

    new-instance v1, Lcom/vivo/PCTools/r/ak;

    invoke-direct {v1, p0}, Lcom/vivo/PCTools/r/ak;-><init>(Lcom/vivo/PCTools/r/s;)V

    invoke-virtual {v3, v1}, Landroid/sax/Element;->setEndTextElementListener(Landroid/sax/EndTextElementListener;)V

    sget-object v1, Landroid/util/Xml$Encoding;->UTF_8:Landroid/util/Xml$Encoding;

    invoke-virtual {v0}, Landroid/sax/RootElement;->getContentHandler()Lorg/xml/sax/ContentHandler;

    move-result-object v0

    invoke-static {p1, v1, v0}, Landroid/util/Xml;->parse(Ljava/io/InputStream;Landroid/util/Xml$Encoding;Lorg/xml/sax/ContentHandler;)V

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "address"

    iget-object v2, p0, Lcom/vivo/PCTools/r/s;->n:Lcom/vivo/PCTools/r/ar;

    iget-object v2, v2, Lcom/vivo/PCTools/r/ar;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "body"

    iget-object v2, p0, Lcom/vivo/PCTools/r/s;->n:Lcom/vivo/PCTools/r/ar;

    iget-object v2, v2, Lcom/vivo/PCTools/r/ar;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "read"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    return-object v0
.end method

.method public final phraseInsertFavoriteMessage(Ljava/io/InputStream;)Landroid/content/ContentValues;
    .locals 7

    new-instance v0, Landroid/sax/RootElement;

    const-string v1, ""

    iget-object v2, p0, Lcom/vivo/PCTools/r/s;->b:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/sax/RootElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vivo/PCTools/r/s;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/sax/RootElement;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/PCTools/r/s;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v1

    const-string v2, "SmsAddress"

    invoke-virtual {v1, v2}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v2

    const-string v3, "SmsDate"

    invoke-virtual {v1, v3}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v3

    const-string v4, "SmsType"

    invoke-virtual {v1, v4}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v4

    iget-object v5, p0, Lcom/vivo/PCTools/r/s;->k:Ljava/lang/String;

    invoke-virtual {v1, v5}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v1

    new-instance v5, Lcom/vivo/PCTools/r/ar;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Lcom/vivo/PCTools/r/ar;-><init>(Lcom/vivo/PCTools/r/s;B)V

    iput-object v5, p0, Lcom/vivo/PCTools/r/s;->q:Lcom/vivo/PCTools/r/ar;

    new-instance v5, Lcom/vivo/PCTools/r/aa;

    invoke-direct {v5, p0}, Lcom/vivo/PCTools/r/aa;-><init>(Lcom/vivo/PCTools/r/s;)V

    invoke-virtual {v0, v5}, Landroid/sax/RootElement;->setStartElementListener(Landroid/sax/StartElementListener;)V

    new-instance v5, Lcom/vivo/PCTools/r/ab;

    invoke-direct {v5, p0}, Lcom/vivo/PCTools/r/ab;-><init>(Lcom/vivo/PCTools/r/s;)V

    invoke-virtual {v0, v5}, Landroid/sax/RootElement;->setEndElementListener(Landroid/sax/EndElementListener;)V

    new-instance v5, Lcom/vivo/PCTools/r/ac;

    invoke-direct {v5, p0}, Lcom/vivo/PCTools/r/ac;-><init>(Lcom/vivo/PCTools/r/s;)V

    invoke-virtual {v2, v5}, Landroid/sax/Element;->setEndTextElementListener(Landroid/sax/EndTextElementListener;)V

    new-instance v2, Lcom/vivo/PCTools/r/ad;

    invoke-direct {v2, p0}, Lcom/vivo/PCTools/r/ad;-><init>(Lcom/vivo/PCTools/r/s;)V

    invoke-virtual {v3, v2}, Landroid/sax/Element;->setEndTextElementListener(Landroid/sax/EndTextElementListener;)V

    new-instance v2, Lcom/vivo/PCTools/r/af;

    invoke-direct {v2, p0}, Lcom/vivo/PCTools/r/af;-><init>(Lcom/vivo/PCTools/r/s;)V

    invoke-virtual {v4, v2}, Landroid/sax/Element;->setEndTextElementListener(Landroid/sax/EndTextElementListener;)V

    new-instance v2, Lcom/vivo/PCTools/r/ag;

    invoke-direct {v2, p0}, Lcom/vivo/PCTools/r/ag;-><init>(Lcom/vivo/PCTools/r/s;)V

    invoke-virtual {v1, v2}, Landroid/sax/Element;->setEndTextElementListener(Landroid/sax/EndTextElementListener;)V

    sget-object v1, Landroid/util/Xml$Encoding;->UTF_8:Landroid/util/Xml$Encoding;

    invoke-virtual {v0}, Landroid/sax/RootElement;->getContentHandler()Lorg/xml/sax/ContentHandler;

    move-result-object v0

    invoke-static {p1, v1, v0}, Landroid/util/Xml;->parse(Ljava/io/InputStream;Landroid/util/Xml$Encoding;Lorg/xml/sax/ContentHandler;)V

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "number"

    iget-object v2, p0, Lcom/vivo/PCTools/r/s;->q:Lcom/vivo/PCTools/r/ar;

    iget-object v2, v2, Lcom/vivo/PCTools/r/ar;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "date"

    iget-object v2, p0, Lcom/vivo/PCTools/r/s;->q:Lcom/vivo/PCTools/r/ar;

    iget-object v2, v2, Lcom/vivo/PCTools/r/ar;->b:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "save_date"

    iget-object v2, p0, Lcom/vivo/PCTools/r/s;->q:Lcom/vivo/PCTools/r/ar;

    iget-object v2, v2, Lcom/vivo/PCTools/r/ar;->b:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "type"

    iget-object v2, p0, Lcom/vivo/PCTools/r/s;->q:Lcom/vivo/PCTools/r/ar;

    iget-object v2, v2, Lcom/vivo/PCTools/r/ar;->f:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "content"

    iget-object v2, p0, Lcom/vivo/PCTools/r/s;->q:Lcom/vivo/PCTools/r/ar;

    iget-object v2, v2, Lcom/vivo/PCTools/r/ar;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
