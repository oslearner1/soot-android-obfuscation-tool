.class final Lcom/vivo/PCTools/i/t;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/sax/EndElementListener;


# instance fields
.field private synthetic a:Lcom/vivo/PCTools/i/h;


# direct methods
.method constructor <init>(Lcom/vivo/PCTools/i/h;)V
    .locals 0

    iput-object p1, p0, Lcom/vivo/PCTools/i/t;->a:Lcom/vivo/PCTools/i/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final end()V
    .locals 11

    const/4 v9, 0x0

    const-wide/16 v7, 0x0

    const-string v6, ""

    const-string v10, ""

    :try_start_0
    iget-object v0, p0, Lcom/vivo/PCTools/i/t;->a:Lcom/vivo/PCTools/i/h;

    invoke-static {v0}, Lcom/vivo/PCTools/i/h;->c(Lcom/vivo/PCTools/i/h;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "version"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "sort_key"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "sort_key_alt"

    aput-object v4, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "_id="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/vivo/PCTools/i/t;->a:Lcom/vivo/PCTools/i/h;

    invoke-static {v4}, Lcom/vivo/PCTools/i/h;->b(Lcom/vivo/PCTools/i/h;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    if-eqz v4, :cond_3

    :try_start_1
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-wide v2

    const/4 v0, 0x1

    :try_start_2
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v1

    const/4 v0, 0x2

    :try_start_3
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v10

    move-object v0, v10

    :goto_0
    if-eqz v4, :cond_0

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_0
    :goto_1
    :try_start_4
    iget-object v4, p0, Lcom/vivo/PCTools/i/t;->a:Lcom/vivo/PCTools/i/h;

    invoke-static {v4}, Lcom/vivo/PCTools/i/h;->h(Lcom/vivo/PCTools/i/h;)Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v4

    const-string v5, ""

    sget-object v6, Lcom/vivo/PCTools/i/b;->e:Ljava/lang/String;

    invoke-interface {v4, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v4, p0, Lcom/vivo/PCTools/i/t;->a:Lcom/vivo/PCTools/i/h;

    invoke-static {v4}, Lcom/vivo/PCTools/i/h;->h(Lcom/vivo/PCTools/i/h;)Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v4

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4, v2}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v2, p0, Lcom/vivo/PCTools/i/t;->a:Lcom/vivo/PCTools/i/h;

    invoke-static {v2}, Lcom/vivo/PCTools/i/h;->h(Lcom/vivo/PCTools/i/h;)Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v2

    const-string v3, ""

    sget-object v4, Lcom/vivo/PCTools/i/b;->e:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v2, p0, Lcom/vivo/PCTools/i/t;->a:Lcom/vivo/PCTools/i/h;

    invoke-static {v2}, Lcom/vivo/PCTools/i/h;->h(Lcom/vivo/PCTools/i/h;)Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v2

    const-string v3, ""

    sget-object v4, Lcom/vivo/PCTools/i/b;->h:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v2, p0, Lcom/vivo/PCTools/i/t;->a:Lcom/vivo/PCTools/i/h;

    invoke-static {v2}, Lcom/vivo/PCTools/i/h;->h(Lcom/vivo/PCTools/i/h;)Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v2

    invoke-interface {v2, v1}, Lorg/xmlpull/v1/XmlSerializer;->cdsect(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vivo/PCTools/i/t;->a:Lcom/vivo/PCTools/i/h;

    invoke-static {v1}, Lcom/vivo/PCTools/i/h;->h(Lcom/vivo/PCTools/i/h;)Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v1

    const-string v2, ""

    sget-object v3, Lcom/vivo/PCTools/i/b;->h:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v1, p0, Lcom/vivo/PCTools/i/t;->a:Lcom/vivo/PCTools/i/h;

    invoke-static {v1}, Lcom/vivo/PCTools/i/h;->h(Lcom/vivo/PCTools/i/h;)Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v1

    const-string v2, ""

    sget-object v3, Lcom/vivo/PCTools/i/b;->i:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v1, p0, Lcom/vivo/PCTools/i/t;->a:Lcom/vivo/PCTools/i/h;

    invoke-static {v1}, Lcom/vivo/PCTools/i/h;->h(Lcom/vivo/PCTools/i/h;)Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->cdsect(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/PCTools/i/t;->a:Lcom/vivo/PCTools/i/h;

    invoke-static {v0}, Lcom/vivo/PCTools/i/h;->h(Lcom/vivo/PCTools/i/h;)Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v0

    const-string v1, ""

    sget-object v2, Lcom/vivo/PCTools/i/b;->i:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v0, p0, Lcom/vivo/PCTools/i/t;->a:Lcom/vivo/PCTools/i/h;

    invoke-static {v0}, Lcom/vivo/PCTools/i/h;->h(Lcom/vivo/PCTools/i/h;)Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v0

    const-string v1, ""

    sget-object v2, Lcom/vivo/PCTools/i/b;->b:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :goto_2
    return-void

    :catch_0
    move-exception v0

    move-object v1, v6

    move-wide v2, v7

    move-object v4, v9

    :goto_3
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v4, :cond_2

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    move-object v0, v10

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    :goto_4
    if-eqz v9, :cond_1

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_1
    throw v0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object v9, v4

    goto :goto_4

    :catch_2
    move-exception v0

    move-object v1, v6

    move-wide v2, v7

    goto :goto_3

    :catch_3
    move-exception v0

    move-object v1, v6

    goto :goto_3

    :catch_4
    move-exception v0

    goto :goto_3

    :cond_2
    move-object v0, v10

    goto/16 :goto_1

    :cond_3
    move-object v0, v10

    move-object v1, v6

    move-wide v2, v7

    goto/16 :goto_0
.end method
