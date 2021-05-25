.class final Lcom/vivo/PCTools/l/h;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/sax/StartElementListener;


# instance fields
.field private synthetic a:Lcom/vivo/PCTools/l/d;

.field private final synthetic b:Landroid/content/ContentResolver;

.field private final synthetic c:Lorg/xmlpull/v1/XmlSerializer;


# direct methods
.method constructor <init>(Lcom/vivo/PCTools/l/d;Landroid/content/ContentResolver;Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 0

    iput-object p1, p0, Lcom/vivo/PCTools/l/h;->a:Lcom/vivo/PCTools/l/d;

    iput-object p2, p0, Lcom/vivo/PCTools/l/h;->b:Landroid/content/ContentResolver;

    iput-object p3, p0, Lcom/vivo/PCTools/l/h;->c:Lorg/xmlpull/v1/XmlSerializer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final start(Lorg/xml/sax/Attributes;)V
    .locals 10

    const/4 v5, 0x1

    const/4 v9, -0x1

    const/4 v8, 0x0

    iget-object v0, p0, Lcom/vivo/PCTools/l/h;->a:Lcom/vivo/PCTools/l/d;

    invoke-static {v0}, Lcom/vivo/PCTools/l/d;->b(Lcom/vivo/PCTools/l/d;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/PCTools/l/h;->a:Lcom/vivo/PCTools/l/d;

    invoke-static {v1}, Lcom/vivo/PCTools/l/d;->c(Lcom/vivo/PCTools/l/d;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/PCTools/l/h;->a:Lcom/vivo/PCTools/l/d;

    invoke-static {v2}, Lcom/vivo/PCTools/l/d;->d(Lcom/vivo/PCTools/l/d;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3, v5}, Landroid/content/ContentValues;-><init>(I)V

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-ne v4, v9, :cond_2

    const-string v4, "name"

    invoke-virtual {v3, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/vivo/PCTools/l/h;->b:Landroid/content/ContentResolver;

    sget-object v5, Landroid/provider/MediaStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4, v5, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/vivo/PCTools/l/h;->c:Lorg/xmlpull/v1/XmlSerializer;

    const-string v4, ""

    iget-object v5, p0, Lcom/vivo/PCTools/l/h;->a:Lcom/vivo/PCTools/l/d;

    invoke-static {v5}, Lcom/vivo/PCTools/l/d;->e(Lcom/vivo/PCTools/l/d;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v3, p0, Lcom/vivo/PCTools/l/h;->c:Lorg/xmlpull/v1/XmlSerializer;

    const-string v4, ""

    iget-object v5, p0, Lcom/vivo/PCTools/l/h;->a:Lcom/vivo/PCTools/l/d;

    invoke-static {v5}, Lcom/vivo/PCTools/l/d;->b(Lcom/vivo/PCTools/l/d;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v0, p0, Lcom/vivo/PCTools/l/h;->c:Lorg/xmlpull/v1/XmlSerializer;

    const-string v3, ""

    iget-object v4, p0, Lcom/vivo/PCTools/l/h;->a:Lcom/vivo/PCTools/l/d;

    invoke-static {v4}, Lcom/vivo/PCTools/l/d;->c(Lcom/vivo/PCTools/l/d;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v0, p0, Lcom/vivo/PCTools/l/h;->c:Lorg/xmlpull/v1/XmlSerializer;

    const-string v1, ""

    iget-object v3, p0, Lcom/vivo/PCTools/l/h;->a:Lcom/vivo/PCTools/l/d;

    invoke-static {v3}, Lcom/vivo/PCTools/l/d;->d(Lcom/vivo/PCTools/l/d;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    return-void

    :cond_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-ne v4, v5, :cond_3

    sget-object v3, Landroid/provider/MediaStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v4, p0, Lcom/vivo/PCTools/l/h;->b:Landroid/content/ContentResolver;

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-static {v3, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v4, v3, v8, v8}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    sget-object v4, Landroid/provider/MediaStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v5, "name"

    invoke-virtual {v3, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/vivo/PCTools/l/h;->b:Landroid/content/ContentResolver;

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v4, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v5, v4, v3, v8, v8}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/vivo/PCTools/l/h;->a:Lcom/vivo/PCTools/l/d;

    invoke-static {v1, v9}, Lcom/vivo/PCTools/l/d;->a(Lcom/vivo/PCTools/l/d;B)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
