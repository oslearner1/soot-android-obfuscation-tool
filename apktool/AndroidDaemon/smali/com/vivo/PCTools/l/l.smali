.class final Lcom/vivo/PCTools/l/l;
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

    iput-object p1, p0, Lcom/vivo/PCTools/l/l;->a:Lcom/vivo/PCTools/l/d;

    iput-object p2, p0, Lcom/vivo/PCTools/l/l;->b:Landroid/content/ContentResolver;

    iput-object p3, p0, Lcom/vivo/PCTools/l/l;->c:Lorg/xmlpull/v1/XmlSerializer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final start(Lorg/xml/sax/Attributes;)V
    .locals 14

    const/4 v3, 0x0

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/vivo/PCTools/l/l;->a:Lcom/vivo/PCTools/l/d;

    invoke-static {v0}, Lcom/vivo/PCTools/l/d;->b(Lcom/vivo/PCTools/l/d;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iget-object v0, p0, Lcom/vivo/PCTools/l/l;->a:Lcom/vivo/PCTools/l/d;

    invoke-static {v0}, Lcom/vivo/PCTools/l/d;->f(Lcom/vivo/PCTools/l/d;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iget-object v0, p0, Lcom/vivo/PCTools/l/l;->a:Lcom/vivo/PCTools/l/d;

    invoke-static {v0}, Lcom/vivo/PCTools/l/d;->g(Lcom/vivo/PCTools/l/d;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "external"

    invoke-static {v7}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroid/provider/MediaStore$Audio$Playlists$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, " "

    invoke-virtual {v8, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    array-length v0, v10

    new-array v11, v0, [Landroid/content/ContentValues;

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "count(*)"

    aput-object v0, v2, v6

    iget-object v0, p0, Lcom/vivo/PCTools/l/l;->b:Landroid/content/ContentResolver;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_5

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :goto_1
    move v2, v6

    :goto_2
    array-length v4, v10

    if-lt v2, v4, :cond_2

    iget-object v0, p0, Lcom/vivo/PCTools/l/l;->b:Landroid/content/ContentResolver;

    invoke-virtual {v0, v1, v11}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    :cond_0
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, " "

    invoke-virtual {v9, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    :goto_3
    array-length v2, v0

    if-lt v6, v2, :cond_4

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/vivo/PCTools/l/l;->c:Lorg/xmlpull/v1/XmlSerializer;

    const-string v1, ""

    iget-object v2, p0, Lcom/vivo/PCTools/l/l;->a:Lcom/vivo/PCTools/l/d;

    invoke-static {v2}, Lcom/vivo/PCTools/l/d;->e(Lcom/vivo/PCTools/l/d;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v0, p0, Lcom/vivo/PCTools/l/l;->c:Lorg/xmlpull/v1/XmlSerializer;

    const-string v1, ""

    iget-object v2, p0, Lcom/vivo/PCTools/l/l;->a:Lcom/vivo/PCTools/l/d;

    invoke-static {v2}, Lcom/vivo/PCTools/l/d;->b(Lcom/vivo/PCTools/l/d;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v0, p0, Lcom/vivo/PCTools/l/l;->c:Lorg/xmlpull/v1/XmlSerializer;

    const-string v1, ""

    iget-object v2, p0, Lcom/vivo/PCTools/l/l;->a:Lcom/vivo/PCTools/l/d;

    invoke-static {v2}, Lcom/vivo/PCTools/l/d;->f(Lcom/vivo/PCTools/l/d;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v0, p0, Lcom/vivo/PCTools/l/l;->c:Lorg/xmlpull/v1/XmlSerializer;

    const-string v1, ""

    iget-object v2, p0, Lcom/vivo/PCTools/l/l;->a:Lcom/vivo/PCTools/l/d;

    invoke-static {v2}, Lcom/vivo/PCTools/l/d;->g(Lcom/vivo/PCTools/l/d;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_4
    return-void

    :cond_2
    aget-object v4, v11, v2

    if-nez v4, :cond_3

    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    aput-object v4, v11, v2

    :cond_3
    aget-object v4, v11, v2

    const-string v5, "play_order"

    add-int v12, v0, v2

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v4, v5, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    aget-object v4, v11, v2

    const-string v5, "audio_id"

    aget-object v12, v10, v2

    invoke-static {v12}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v4, v5, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    const-string v2, "MusicXmlParser"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "--------------------------------------remove id ==  "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v5, v0, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/vivo/PCTools/util/b;->logI(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/vivo/PCTools/l/l;->b:Landroid/content/ContentResolver;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "audio_id = \'"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v5, v0, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v1, v4, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_3

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/vivo/PCTools/l/l;->a:Lcom/vivo/PCTools/l/d;

    const/4 v2, -0x1

    invoke-static {v1, v2}, Lcom/vivo/PCTools/l/d;->a(Lcom/vivo/PCTools/l/d;B)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    :cond_5
    move v0, v6

    goto/16 :goto_0

    :cond_6
    move v0, v6

    goto/16 :goto_1
.end method
