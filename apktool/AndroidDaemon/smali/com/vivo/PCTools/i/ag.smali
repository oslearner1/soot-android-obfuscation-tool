.class final Lcom/vivo/PCTools/i/ag;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/sax/StartElementListener;


# instance fields
.field private synthetic a:Lcom/vivo/PCTools/i/h;


# direct methods
.method constructor <init>(Lcom/vivo/PCTools/i/h;)V
    .locals 0

    iput-object p1, p0, Lcom/vivo/PCTools/i/ag;->a:Lcom/vivo/PCTools/i/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final start(Lorg/xml/sax/Attributes;)V
    .locals 14

    const/4 v0, -0x1

    iget-object v1, p0, Lcom/vivo/PCTools/i/ag;->a:Lcom/vivo/PCTools/i/h;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/vivo/PCTools/i/h;->a(Lcom/vivo/PCTools/i/h;J)V

    sget-object v1, Lcom/vivo/PCTools/i/b;->c:Ljava/lang/String;

    invoke-interface {p1, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/vivo/PCTools/i/b;->e:Ljava/lang/String;

    invoke-interface {p1, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/vivo/PCTools/i/b;->r:Ljava/lang/String;

    invoke-interface {p1, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/vivo/PCTools/i/b;->s:Ljava/lang/String;

    invoke-interface {p1, v4}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/vivo/PCTools/i/b;->D:Ljava/lang/String;

    invoke-interface {p1, v5}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/vivo/PCTools/i/b;->C:Ljava/lang/String;

    invoke-interface {p1, v6}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/vivo/PCTools/i/b;->B:Ljava/lang/String;

    invoke-interface {p1, v7}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lcom/vivo/PCTools/i/b;->E:Ljava/lang/String;

    invoke-interface {p1, v8}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    sget-object v9, Lcom/vivo/PCTools/i/b;->R:Ljava/lang/String;

    invoke-interface {p1, v9}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    const-string v11, "mimetype"

    const-string v12, "vnd.android.cursor.item/postal-address_v2"

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_0

    const-string v11, "data2"

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_1

    const-string v11, "data_version"

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_1
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_2

    const-string v11, "data3"

    invoke-virtual {v10, v11, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_3

    const-string v11, "data8"

    invoke-virtual {v10, v11, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_4

    const-string v11, "data7"

    invoke-virtual {v10, v11, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_5

    const-string v11, "data4"

    invoke-virtual {v10, v11, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_6

    const-string v11, "data9"

    invoke-virtual {v10, v11, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_11

    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    :try_start_1
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_7

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result v0

    :cond_7
    :goto_1
    const-string v11, "ContactsXmlParseHandler"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "**** dataID = "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v11, p0, Lcom/vivo/PCTools/i/ag;->a:Lcom/vivo/PCTools/i/h;

    invoke-virtual {v11, v1, v10, v0}, Lcom/vivo/PCTools/i/h;->setContactItemAction(ILandroid/content/ContentValues;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ContactsXmlParseHandler"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "******** addr ID = "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v1, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    iget-object v1, p0, Lcom/vivo/PCTools/i/ag;->a:Lcom/vivo/PCTools/i/h;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-static {v1, v10, v11}, Lcom/vivo/PCTools/i/h;->b(Lcom/vivo/PCTools/i/h;J)V

    iget-object v1, p0, Lcom/vivo/PCTools/i/ag;->a:Lcom/vivo/PCTools/i/h;

    iget-object v10, p0, Lcom/vivo/PCTools/i/ag;->a:Lcom/vivo/PCTools/i/h;

    invoke-static {v10}, Lcom/vivo/PCTools/i/h;->e(Lcom/vivo/PCTools/i/h;)J

    move-result-wide v10

    iget-object v12, p0, Lcom/vivo/PCTools/i/ag;->a:Lcom/vivo/PCTools/i/h;

    invoke-static {v12}, Lcom/vivo/PCTools/i/h;->f(Lcom/vivo/PCTools/i/h;)J

    move-result-wide v12

    sub-long/2addr v10, v12

    invoke-static {v1, v10, v11}, Lcom/vivo/PCTools/i/h;->c(Lcom/vivo/PCTools/i/h;J)V

    const-string v1, "XmlFileCreate"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "********* zjx - handle contact c27 insert cost time = "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, p0, Lcom/vivo/PCTools/i/ag;->a:Lcom/vivo/PCTools/i/h;

    invoke-static {v11}, Lcom/vivo/PCTools/i/h;->g(Lcom/vivo/PCTools/i/h;)J

    move-result-wide v11

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v1, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/vivo/PCTools/i/ag;->a:Lcom/vivo/PCTools/i/h;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-static {v1, v10, v11}, Lcom/vivo/PCTools/i/h;->a(Lcom/vivo/PCTools/i/h;J)V

    :try_start_2
    iget-object v1, p0, Lcom/vivo/PCTools/i/ag;->a:Lcom/vivo/PCTools/i/h;

    invoke-static {v1}, Lcom/vivo/PCTools/i/h;->h(Lcom/vivo/PCTools/i/h;)Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v1

    const-string v10, ""

    sget-object v11, Lcom/vivo/PCTools/i/b;->A:Ljava/lang/String;

    invoke-interface {v1, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    iget-object v1, p0, Lcom/vivo/PCTools/i/ag;->a:Lcom/vivo/PCTools/i/h;

    invoke-static {v1}, Lcom/vivo/PCTools/i/h;->h(Lcom/vivo/PCTools/i/h;)Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v1

    const-string v10, ""

    sget-object v11, Lcom/vivo/PCTools/i/b;->c:Ljava/lang/String;

    invoke-interface {v1, v10, v11, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_8
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9

    iget-object v1, p0, Lcom/vivo/PCTools/i/ag;->a:Lcom/vivo/PCTools/i/h;

    invoke-static {v1}, Lcom/vivo/PCTools/i/h;->h(Lcom/vivo/PCTools/i/h;)Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v1

    const-string v2, ""

    sget-object v10, Lcom/vivo/PCTools/i/b;->e:Ljava/lang/String;

    iget-object v11, p0, Lcom/vivo/PCTools/i/ag;->a:Lcom/vivo/PCTools/i/h;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v11, v0}, Lcom/vivo/PCTools/i/h;->getContactItemVersion(I)J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v10, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_9
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/vivo/PCTools/i/ag;->a:Lcom/vivo/PCTools/i/h;

    invoke-static {v0}, Lcom/vivo/PCTools/i/h;->h(Lcom/vivo/PCTools/i/h;)Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v0

    const-string v1, ""

    sget-object v2, Lcom/vivo/PCTools/i/b;->r:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_a
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/vivo/PCTools/i/ag;->a:Lcom/vivo/PCTools/i/h;

    invoke-static {v0}, Lcom/vivo/PCTools/i/h;->h(Lcom/vivo/PCTools/i/h;)Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v0

    const-string v1, ""

    sget-object v2, Lcom/vivo/PCTools/i/b;->s:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_b
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/vivo/PCTools/i/ag;->a:Lcom/vivo/PCTools/i/h;

    invoke-static {v0}, Lcom/vivo/PCTools/i/h;->h(Lcom/vivo/PCTools/i/h;)Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v0

    const-string v1, ""

    sget-object v2, Lcom/vivo/PCTools/i/b;->D:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_c
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/vivo/PCTools/i/ag;->a:Lcom/vivo/PCTools/i/h;

    invoke-static {v0}, Lcom/vivo/PCTools/i/h;->h(Lcom/vivo/PCTools/i/h;)Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v0

    const-string v1, ""

    sget-object v2, Lcom/vivo/PCTools/i/b;->C:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_d
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/vivo/PCTools/i/ag;->a:Lcom/vivo/PCTools/i/h;

    invoke-static {v0}, Lcom/vivo/PCTools/i/h;->h(Lcom/vivo/PCTools/i/h;)Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v0

    const-string v1, ""

    sget-object v2, Lcom/vivo/PCTools/i/b;->B:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_e
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/vivo/PCTools/i/ag;->a:Lcom/vivo/PCTools/i/h;

    invoke-static {v0}, Lcom/vivo/PCTools/i/h;->h(Lcom/vivo/PCTools/i/h;)Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v0

    const-string v1, ""

    sget-object v2, Lcom/vivo/PCTools/i/b;->E:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_f
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/vivo/PCTools/i/ag;->a:Lcom/vivo/PCTools/i/h;

    invoke-static {v0}, Lcom/vivo/PCTools/i/h;->h(Lcom/vivo/PCTools/i/h;)Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v0

    const-string v1, ""

    sget-object v2, Lcom/vivo/PCTools/i/b;->R:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_10
    iget-object v0, p0, Lcom/vivo/PCTools/i/ag;->a:Lcom/vivo/PCTools/i/h;

    invoke-static {v0}, Lcom/vivo/PCTools/i/h;->h(Lcom/vivo/PCTools/i/h;)Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v0

    const-string v1, ""

    sget-object v2, Lcom/vivo/PCTools/i/b;->A:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :goto_3
    iget-object v0, p0, Lcom/vivo/PCTools/i/ag;->a:Lcom/vivo/PCTools/i/h;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/vivo/PCTools/i/h;->b(Lcom/vivo/PCTools/i/h;J)V

    iget-object v0, p0, Lcom/vivo/PCTools/i/ag;->a:Lcom/vivo/PCTools/i/h;

    iget-object v1, p0, Lcom/vivo/PCTools/i/ag;->a:Lcom/vivo/PCTools/i/h;

    invoke-static {v1}, Lcom/vivo/PCTools/i/h;->e(Lcom/vivo/PCTools/i/h;)J

    move-result-wide v1

    iget-object v3, p0, Lcom/vivo/PCTools/i/ag;->a:Lcom/vivo/PCTools/i/h;

    invoke-static {v3}, Lcom/vivo/PCTools/i/h;->f(Lcom/vivo/PCTools/i/h;)J

    move-result-wide v3

    sub-long/2addr v1, v3

    invoke-static {v0, v1, v2}, Lcom/vivo/PCTools/i/h;->c(Lcom/vivo/PCTools/i/h;J)V

    const-string v0, "XmlFileCreate"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "********* zjx - handle contact c28 insert cost time = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/vivo/PCTools/i/ag;->a:Lcom/vivo/PCTools/i/h;

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

    const-string v3, "*** mRetXmlSerializer addr is ex e = "

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
    move-exception v11

    goto/16 :goto_1

    :cond_11
    move-object v0, v1

    goto/16 :goto_2
.end method
