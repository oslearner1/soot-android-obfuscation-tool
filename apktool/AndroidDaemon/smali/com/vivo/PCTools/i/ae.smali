.class final Lcom/vivo/PCTools/i/ae;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/sax/StartElementListener;


# instance fields
.field private synthetic a:Lcom/vivo/PCTools/i/h;


# direct methods
.method constructor <init>(Lcom/vivo/PCTools/i/h;)V
    .locals 0

    iput-object p1, p0, Lcom/vivo/PCTools/i/ae;->a:Lcom/vivo/PCTools/i/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final start(Lorg/xml/sax/Attributes;)V
    .locals 11

    const/4 v0, -0x1

    iget-object v1, p0, Lcom/vivo/PCTools/i/ae;->a:Lcom/vivo/PCTools/i/h;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/vivo/PCTools/i/h;->a(Lcom/vivo/PCTools/i/h;J)V

    sget-object v1, Lcom/vivo/PCTools/i/b;->c:Ljava/lang/String;

    invoke-interface {p1, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/vivo/PCTools/i/b;->r:Ljava/lang/String;

    invoke-interface {p1, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/vivo/PCTools/i/b;->e:Ljava/lang/String;

    invoke-interface {p1, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/vivo/PCTools/i/b;->s:Ljava/lang/String;

    invoke-interface {p1, v4}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/vivo/PCTools/i/b;->w:Ljava/lang/String;

    invoke-interface {p1, v5}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/vivo/PCTools/i/b;->R:Ljava/lang/String;

    invoke-interface {p1, v6}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    const-string v8, "mimetype"

    const-string v9, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, "data2"

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_0
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    const-string v8, "data_version"

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_1
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    const-string v8, "data3"

    invoke-virtual {v7, v8, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_3

    const-string v8, "data1"

    invoke-virtual {v7, v8, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_b

    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    :try_start_1
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_4

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result v0

    :cond_4
    :goto_1
    iget-object v8, p0, Lcom/vivo/PCTools/i/ae;->a:Lcom/vivo/PCTools/i/h;

    invoke-virtual {v8, v1, v7, v0}, Lcom/vivo/PCTools/i/h;->setContactItemAction(ILandroid/content/ContentValues;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ContactsXmlParseHandler"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "****** email ID = "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    iget-object v1, p0, Lcom/vivo/PCTools/i/ae;->a:Lcom/vivo/PCTools/i/h;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-static {v1, v7, v8}, Lcom/vivo/PCTools/i/h;->b(Lcom/vivo/PCTools/i/h;J)V

    iget-object v1, p0, Lcom/vivo/PCTools/i/ae;->a:Lcom/vivo/PCTools/i/h;

    iget-object v7, p0, Lcom/vivo/PCTools/i/ae;->a:Lcom/vivo/PCTools/i/h;

    invoke-static {v7}, Lcom/vivo/PCTools/i/h;->e(Lcom/vivo/PCTools/i/h;)J

    move-result-wide v7

    iget-object v9, p0, Lcom/vivo/PCTools/i/ae;->a:Lcom/vivo/PCTools/i/h;

    invoke-static {v9}, Lcom/vivo/PCTools/i/h;->f(Lcom/vivo/PCTools/i/h;)J

    move-result-wide v9

    sub-long/2addr v7, v9

    invoke-static {v1, v7, v8}, Lcom/vivo/PCTools/i/h;->c(Lcom/vivo/PCTools/i/h;J)V

    const-string v1, "XmlFileCreate"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "********* zjx - handle contact c23 insert cost time = "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/vivo/PCTools/i/ae;->a:Lcom/vivo/PCTools/i/h;

    invoke-static {v8}, Lcom/vivo/PCTools/i/h;->g(Lcom/vivo/PCTools/i/h;)J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/vivo/PCTools/i/ae;->a:Lcom/vivo/PCTools/i/h;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-static {v1, v7, v8}, Lcom/vivo/PCTools/i/h;->a(Lcom/vivo/PCTools/i/h;J)V

    :try_start_2
    iget-object v1, p0, Lcom/vivo/PCTools/i/ae;->a:Lcom/vivo/PCTools/i/h;

    invoke-static {v1}, Lcom/vivo/PCTools/i/h;->h(Lcom/vivo/PCTools/i/h;)Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v1

    const-string v7, ""

    sget-object v8, Lcom/vivo/PCTools/i/b;->v:Ljava/lang/String;

    invoke-interface {v1, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/vivo/PCTools/i/ae;->a:Lcom/vivo/PCTools/i/h;

    invoke-static {v1}, Lcom/vivo/PCTools/i/h;->h(Lcom/vivo/PCTools/i/h;)Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v1

    const-string v7, ""

    sget-object v8, Lcom/vivo/PCTools/i/b;->c:Ljava/lang/String;

    invoke-interface {v1, v7, v8, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_5
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/vivo/PCTools/i/ae;->a:Lcom/vivo/PCTools/i/h;

    invoke-static {v1}, Lcom/vivo/PCTools/i/h;->h(Lcom/vivo/PCTools/i/h;)Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v1

    const-string v3, ""

    sget-object v7, Lcom/vivo/PCTools/i/b;->e:Ljava/lang/String;

    iget-object v8, p0, Lcom/vivo/PCTools/i/ae;->a:Lcom/vivo/PCTools/i/h;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v8, v0}, Lcom/vivo/PCTools/i/h;->getContactItemVersion(I)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v3, v7, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_6
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/vivo/PCTools/i/ae;->a:Lcom/vivo/PCTools/i/h;

    invoke-static {v0}, Lcom/vivo/PCTools/i/h;->h(Lcom/vivo/PCTools/i/h;)Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v0

    const-string v1, ""

    sget-object v3, Lcom/vivo/PCTools/i/b;->r:Ljava/lang/String;

    invoke-interface {v0, v1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_7
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/vivo/PCTools/i/ae;->a:Lcom/vivo/PCTools/i/h;

    invoke-static {v0}, Lcom/vivo/PCTools/i/h;->h(Lcom/vivo/PCTools/i/h;)Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v0

    const-string v1, ""

    sget-object v2, Lcom/vivo/PCTools/i/b;->s:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_8
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/vivo/PCTools/i/ae;->a:Lcom/vivo/PCTools/i/h;

    invoke-static {v0}, Lcom/vivo/PCTools/i/h;->h(Lcom/vivo/PCTools/i/h;)Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v0

    const-string v1, ""

    sget-object v2, Lcom/vivo/PCTools/i/b;->w:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_9
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/vivo/PCTools/i/ae;->a:Lcom/vivo/PCTools/i/h;

    invoke-static {v0}, Lcom/vivo/PCTools/i/h;->h(Lcom/vivo/PCTools/i/h;)Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v0

    const-string v1, ""

    sget-object v2, Lcom/vivo/PCTools/i/b;->R:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_a
    iget-object v0, p0, Lcom/vivo/PCTools/i/ae;->a:Lcom/vivo/PCTools/i/h;

    invoke-static {v0}, Lcom/vivo/PCTools/i/h;->h(Lcom/vivo/PCTools/i/h;)Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v0

    const-string v1, ""

    sget-object v2, Lcom/vivo/PCTools/i/b;->v:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :goto_3
    iget-object v0, p0, Lcom/vivo/PCTools/i/ae;->a:Lcom/vivo/PCTools/i/h;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/vivo/PCTools/i/h;->b(Lcom/vivo/PCTools/i/h;J)V

    iget-object v0, p0, Lcom/vivo/PCTools/i/ae;->a:Lcom/vivo/PCTools/i/h;

    iget-object v1, p0, Lcom/vivo/PCTools/i/ae;->a:Lcom/vivo/PCTools/i/h;

    invoke-static {v1}, Lcom/vivo/PCTools/i/h;->e(Lcom/vivo/PCTools/i/h;)J

    move-result-wide v1

    iget-object v3, p0, Lcom/vivo/PCTools/i/ae;->a:Lcom/vivo/PCTools/i/h;

    invoke-static {v3}, Lcom/vivo/PCTools/i/h;->f(Lcom/vivo/PCTools/i/h;)J

    move-result-wide v3

    sub-long/2addr v1, v3

    invoke-static {v0, v1, v2}, Lcom/vivo/PCTools/i/h;->c(Lcom/vivo/PCTools/i/h;J)V

    const-string v0, "XmlFileCreate"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "********* zjx - handle contact c24 insert cost time = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/vivo/PCTools/i/ae;->a:Lcom/vivo/PCTools/i/h;

    invoke-static {v2}, Lcom/vivo/PCTools/i/h;->g(Lcom/vivo/PCTools/i/h;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_0
    move-exception v1

    move v1, v0

    goto/16 :goto_0

    :catch_1
    move-exception v0

    const-string v1, "ContactsXmlParseHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "*** mRetXmlSerializer phone is ex e = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :catch_2
    move-exception v8

    goto/16 :goto_1

    :cond_b
    move-object v0, v1

    goto/16 :goto_2
.end method
