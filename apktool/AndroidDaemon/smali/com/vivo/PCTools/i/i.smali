.class final Lcom/vivo/PCTools/i/i;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/sax/StartElementListener;


# instance fields
.field private synthetic a:Lcom/vivo/PCTools/i/h;


# direct methods
.method constructor <init>(Lcom/vivo/PCTools/i/h;)V
    .locals 0

    iput-object p1, p0, Lcom/vivo/PCTools/i/i;->a:Lcom/vivo/PCTools/i/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final start(Lorg/xml/sax/Attributes;)V
    .locals 13

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    sget-object v0, Lcom/vivo/PCTools/i/b;->c:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/vivo/PCTools/i/b;->e:Ljava/lang/String;

    invoke-interface {p1, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    sget-object v1, Lcom/vivo/PCTools/i/b;->f:Ljava/lang/String;

    invoke-interface {p1, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v1, Lcom/vivo/PCTools/i/b;->j:Ljava/lang/String;

    invoke-interface {p1, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget-object v1, Lcom/vivo/PCTools/i/b;->k:Ljava/lang/String;

    invoke-interface {p1, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v5, Lcom/vivo/PCTools/i/b;->d:Ljava/lang/String;

    invoke-interface {p1, v5}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "ContactsXmlParseHandler"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "setStartElementListener.starred="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_b

    iget-object v6, p0, Lcom/vivo/PCTools/i/i;->a:Lcom/vivo/PCTools/i/h;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v6, v1}, Lcom/vivo/PCTools/i/h;->a(Lcom/vivo/PCTools/i/h;I)V

    :goto_0
    sget-object v1, Lcom/vivo/PCTools/util/a;->i:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/vivo/PCTools/util/a;->e:Ljava/lang/String;

    const-string v6, "vivo V1"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/vivo/PCTools/util/a;->j:Ljava/lang/String;

    const-string v6, "EX"

    invoke-virtual {v1, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const-string v1, "indicate_phone_or_sim_contact"

    iget-object v6, p0, Lcom/vivo/PCTools/i/i;->a:Lcom/vivo/PCTools/i/h;

    invoke-static {v6}, Lcom/vivo/PCTools/i/h;->a(Lcom/vivo/PCTools/i/h;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v1, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_1
    iget-object v1, p0, Lcom/vivo/PCTools/i/i;->a:Lcom/vivo/PCTools/i/h;

    invoke-static {v1}, Lcom/vivo/PCTools/i/h;->a(Lcom/vivo/PCTools/i/h;)I

    move-result v1

    if-ltz v1, :cond_2

    iget-object v1, p0, Lcom/vivo/PCTools/i/i;->a:Lcom/vivo/PCTools/i/h;

    invoke-static {v1, v3}, Lcom/vivo/PCTools/i/h;->a(Lcom/vivo/PCTools/i/h;Ljava/lang/String;)V

    :cond_2
    sget-object v1, Lcom/vivo/PCTools/i/b;->m:Ljava/lang/String;

    invoke-interface {p1, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v6, Lcom/vivo/PCTools/i/b;->n:Ljava/lang/String;

    invoke-interface {p1, v6}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/vivo/PCTools/i/b;->o:Ljava/lang/String;

    invoke-interface {p1, v7}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lcom/vivo/PCTools/i/b;->l:Ljava/lang/String;

    invoke-interface {p1, v8}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_3

    iget-object v9, p0, Lcom/vivo/PCTools/i/i;->a:Lcom/vivo/PCTools/i/h;

    invoke-static {v9}, Lcom/vivo/PCTools/i/h;->a(Lcom/vivo/PCTools/i/h;)I

    move-result v9

    const/4 v10, -0x1

    if-ne v9, v10, :cond_3

    const-string v9, "ContactsXmlParseHandler"

    const-string v10, "starred=true"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v9, "starred"

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v9, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_3
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    const-string v5, "send_to_voicemail"

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v2, v5, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_4
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    const-string v5, "0"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    const-string v5, "-1"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    const-string v5, "custom_ringtone"

    const-string v8, ""

    invoke-virtual {v2, v5, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_1
    const-string v5, "aggregation_mode"

    const/4 v8, 0x2

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v2, v5, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v5, "account_type"

    invoke-virtual {v2, v5}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    const-string v5, "account_name"

    invoke-virtual {v2, v5}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_d

    :try_start_0
    iget-object v5, p0, Lcom/vivo/PCTools/i/i;->a:Lcom/vivo/PCTools/i/h;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-static {v5, v8}, Lcom/vivo/PCTools/i/h;->b(Lcom/vivo/PCTools/i/h;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    iget-object v5, p0, Lcom/vivo/PCTools/i/i;->a:Lcom/vivo/PCTools/i/h;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v5, v8, v9}, Lcom/vivo/PCTools/i/h;->a(Lcom/vivo/PCTools/i/h;J)V

    iget-object v5, p0, Lcom/vivo/PCTools/i/i;->a:Lcom/vivo/PCTools/i/h;

    invoke-static {v5}, Lcom/vivo/PCTools/i/h;->b(Lcom/vivo/PCTools/i/h;)I

    move-result v5

    const/4 v8, -0x1

    if-ne v5, v8, :cond_10

    const-string v0, "ContactsXmlParseHandler"

    const-string v5, "parseAndUpdate.insert contact"

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/vivo/PCTools/util/a;->i:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/vivo/PCTools/i/i;->a:Lcom/vivo/PCTools/i/h;

    invoke-static {v0}, Lcom/vivo/PCTools/i/h;->c(Lcom/vivo/PCTools/i/h;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v5, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v5, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v8

    long-to-int v0, v8

    iget-object v5, p0, Lcom/vivo/PCTools/i/i;->a:Lcom/vivo/PCTools/i/h;

    invoke-static {v5, v0}, Lcom/vivo/PCTools/i/h;->b(Lcom/vivo/PCTools/i/h;I)V

    :goto_3
    invoke-virtual {v2}, Landroid/content/ContentValues;->clear()V

    const-string v0, "mimetype"

    const-string v5, "vnd.android.cursor.item/name"

    invoke-virtual {v2, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f

    const-string v0, "data1"

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :goto_4
    iget-object v0, p0, Lcom/vivo/PCTools/i/i;->a:Lcom/vivo/PCTools/i/h;

    const/4 v5, -0x1

    const/4 v8, 0x0

    invoke-virtual {v0, v5, v2, v8}, Lcom/vivo/PCTools/i/h;->setContactItemAction(ILandroid/content/ContentValues;I)I

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_15

    invoke-virtual {v2}, Landroid/content/ContentValues;->clear()V

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_15

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_15

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_15

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_15

    :try_start_1
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    new-array v5, v0, [B

    iget-object v8, p0, Lcom/vivo/PCTools/i/i;->a:Lcom/vivo/PCTools/i/h;

    invoke-static {v8}, Lcom/vivo/PCTools/i/h;->d(Lcom/vivo/PCTools/i/h;)Ljava/io/FileInputStream;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v5, v9, v0}, Ljava/io/FileInputStream;->read([BII)I

    const-string v0, "data15"

    invoke-virtual {v2, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v5, -0x1

    if-ne v0, v5, :cond_15

    const-string v0, "raw_contact_id"

    iget-object v5, p0, Lcom/vivo/PCTools/i/i;->a:Lcom/vivo/PCTools/i/h;

    invoke-static {v5}, Lcom/vivo/PCTools/i/h;->b(Lcom/vivo/PCTools/i/h;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "is_super_primary"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "mimetype"

    const-string v5, "vnd.android.cursor.item/photo"

    invoke-virtual {v2, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/PCTools/i/i;->a:Lcom/vivo/PCTools/i/h;

    const/4 v5, -0x1

    const/4 v8, 0x0

    invoke-virtual {v0, v5, v2, v8}, Lcom/vivo/PCTools/i/h;->setContactItemAction(ILandroid/content/ContentValues;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v0

    :try_start_2
    const-string v1, "ContactsXmlParseHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "photoID = "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_7

    :goto_5
    iget-object v1, p0, Lcom/vivo/PCTools/i/i;->a:Lcom/vivo/PCTools/i/h;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v1, v8, v9}, Lcom/vivo/PCTools/i/h;->b(Lcom/vivo/PCTools/i/h;J)V

    iget-object v1, p0, Lcom/vivo/PCTools/i/i;->a:Lcom/vivo/PCTools/i/h;

    iget-object v2, p0, Lcom/vivo/PCTools/i/i;->a:Lcom/vivo/PCTools/i/h;

    invoke-static {v2}, Lcom/vivo/PCTools/i/h;->e(Lcom/vivo/PCTools/i/h;)J

    move-result-wide v8

    iget-object v2, p0, Lcom/vivo/PCTools/i/i;->a:Lcom/vivo/PCTools/i/h;

    invoke-static {v2}, Lcom/vivo/PCTools/i/h;->f(Lcom/vivo/PCTools/i/h;)J

    move-result-wide v10

    sub-long/2addr v8, v10

    invoke-static {v1, v8, v9}, Lcom/vivo/PCTools/i/h;->c(Lcom/vivo/PCTools/i/h;J)V

    const-string v1, "ContactsXmlParseHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "********* zjx - handle c1 insert cost time = "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/vivo/PCTools/i/i;->a:Lcom/vivo/PCTools/i/h;

    invoke-static {v5}, Lcom/vivo/PCTools/i/h;->g(Lcom/vivo/PCTools/i/h;)J

    move-result-wide v8

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/vivo/PCTools/i/i;->a:Lcom/vivo/PCTools/i/h;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v1, v8, v9}, Lcom/vivo/PCTools/i/h;->a(Lcom/vivo/PCTools/i/h;J)V

    :try_start_3
    iget-object v1, p0, Lcom/vivo/PCTools/i/i;->a:Lcom/vivo/PCTools/i/h;

    invoke-static {v1}, Lcom/vivo/PCTools/i/h;->h(Lcom/vivo/PCTools/i/h;)Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v1

    const-string v2, ""

    sget-object v5, Lcom/vivo/PCTools/i/b;->b:Ljava/lang/String;

    invoke-interface {v1, v2, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v1, p0, Lcom/vivo/PCTools/i/i;->a:Lcom/vivo/PCTools/i/h;

    invoke-static {v1}, Lcom/vivo/PCTools/i/h;->h(Lcom/vivo/PCTools/i/h;)Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v1

    const-string v2, ""

    sget-object v5, Lcom/vivo/PCTools/i/b;->c:Ljava/lang/String;

    iget-object v8, p0, Lcom/vivo/PCTools/i/i;->a:Lcom/vivo/PCTools/i/h;

    invoke-static {v8}, Lcom/vivo/PCTools/i/h;->b(Lcom/vivo/PCTools/i/h;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v1, v2, v5, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/vivo/PCTools/i/i;->a:Lcom/vivo/PCTools/i/h;

    invoke-static {v1}, Lcom/vivo/PCTools/i/h;->h(Lcom/vivo/PCTools/i/h;)Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v1

    const-string v2, ""

    sget-object v5, Lcom/vivo/PCTools/i/b;->f:Ljava/lang/String;

    invoke-interface {v1, v2, v5, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_6
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/vivo/PCTools/i/i;->a:Lcom/vivo/PCTools/i/h;

    invoke-static {v1}, Lcom/vivo/PCTools/i/h;->h(Lcom/vivo/PCTools/i/h;)Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v1

    const-string v2, ""

    sget-object v3, Lcom/vivo/PCTools/i/b;->j:Ljava/lang/String;

    invoke-interface {v1, v2, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_7
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    iget-object v1, p0, Lcom/vivo/PCTools/i/i;->a:Lcom/vivo/PCTools/i/h;

    invoke-static {v1}, Lcom/vivo/PCTools/i/h;->h(Lcom/vivo/PCTools/i/h;)Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v1

    const-string v2, ""

    sget-object v3, Lcom/vivo/PCTools/i/b;->m:Ljava/lang/String;

    invoke-interface {v1, v2, v3, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_8
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/vivo/PCTools/i/i;->a:Lcom/vivo/PCTools/i/h;

    invoke-static {v0}, Lcom/vivo/PCTools/i/h;->h(Lcom/vivo/PCTools/i/h;)Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v0

    const-string v1, ""

    sget-object v2, Lcom/vivo/PCTools/i/b;->n:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_9
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/vivo/PCTools/i/i;->a:Lcom/vivo/PCTools/i/h;

    invoke-static {v0}, Lcom/vivo/PCTools/i/h;->h(Lcom/vivo/PCTools/i/h;)Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v0

    const-string v1, ""

    sget-object v2, Lcom/vivo/PCTools/i/b;->o:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5

    :cond_a
    :goto_6
    iget-object v0, p0, Lcom/vivo/PCTools/i/i;->a:Lcom/vivo/PCTools/i/h;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/vivo/PCTools/i/h;->b(Lcom/vivo/PCTools/i/h;J)V

    iget-object v0, p0, Lcom/vivo/PCTools/i/i;->a:Lcom/vivo/PCTools/i/h;

    iget-object v1, p0, Lcom/vivo/PCTools/i/i;->a:Lcom/vivo/PCTools/i/h;

    invoke-static {v1}, Lcom/vivo/PCTools/i/h;->e(Lcom/vivo/PCTools/i/h;)J

    move-result-wide v1

    iget-object v3, p0, Lcom/vivo/PCTools/i/i;->a:Lcom/vivo/PCTools/i/h;

    invoke-static {v3}, Lcom/vivo/PCTools/i/h;->f(Lcom/vivo/PCTools/i/h;)J

    move-result-wide v3

    sub-long/2addr v1, v3

    invoke-static {v0, v1, v2}, Lcom/vivo/PCTools/i/h;->c(Lcom/vivo/PCTools/i/h;J)V

    const-string v0, "XmlFileCreate"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "********* zjx - handle contact c2 insert cost time = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/vivo/PCTools/i/i;->a:Lcom/vivo/PCTools/i/h;

    invoke-static {v2}, Lcom/vivo/PCTools/i/h;->g(Lcom/vivo/PCTools/i/h;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_b
    iget-object v1, p0, Lcom/vivo/PCTools/i/i;->a:Lcom/vivo/PCTools/i/h;

    const/4 v6, -0x1

    invoke-static {v1, v6}, Lcom/vivo/PCTools/i/h;->a(Lcom/vivo/PCTools/i/h;I)V

    goto/16 :goto_0

    :cond_c
    const-string v5, "custom_ringtone"

    invoke-virtual {v2, v5, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :catch_0
    move-exception v5

    :cond_d
    iget-object v5, p0, Lcom/vivo/PCTools/i/i;->a:Lcom/vivo/PCTools/i/h;

    const/4 v8, -0x1

    invoke-static {v5, v8}, Lcom/vivo/PCTools/i/h;->b(Lcom/vivo/PCTools/i/h;I)V

    goto/16 :goto_2

    :cond_e
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    sget-object v0, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :try_start_4
    iget-object v0, p0, Lcom/vivo/PCTools/i/i;->a:Lcom/vivo/PCTools/i/h;

    invoke-static {v0}, Lcom/vivo/PCTools/i/h;->c(Lcom/vivo/PCTools/i/h;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v8, "com.android.contacts"

    invoke-virtual {v0, v8, v5}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v0

    const/4 v8, 0x0

    aget-object v0, v0, v8

    iget-object v0, v0, Landroid/content/ContentProviderResult;->uri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v0, v8, v9}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iget-object v8, p0, Lcom/vivo/PCTools/i/i;->a:Lcom/vivo/PCTools/i/h;

    invoke-static {v8, v0}, Lcom/vivo/PCTools/i/h;->b(Lcom/vivo/PCTools/i/h;I)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Landroid/content/OperationApplicationException; {:try_start_4 .. :try_end_4} :catch_2

    :goto_7
    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_3

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_7

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Landroid/content/OperationApplicationException;->printStackTrace()V

    goto :goto_7

    :cond_f
    const-string v0, "data1"

    const-string v5, ""

    invoke-virtual {v2, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    :catch_3
    move-exception v0

    move-object v12, v0

    move-object v0, v1

    move-object v1, v12

    :goto_8
    const-string v2, "ContactsXmlParseHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v8, " e ="

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    :cond_10
    const-string v5, "ContactsXmlParseHandler"

    const-string v8, "parseAndUpdate.update contact"

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/vivo/PCTools/i/i;->a:Lcom/vivo/PCTools/i/h;

    invoke-static {v5}, Lcom/vivo/PCTools/i/h;->c(Lcom/vivo/PCTools/i/h;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v8, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    invoke-static {v8, v9, v10}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/provider/ContactsContract$RawContacts;->getContactLookupUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v5

    iget-object v8, p0, Lcom/vivo/PCTools/i/i;->a:Lcom/vivo/PCTools/i/h;

    invoke-static {v8}, Lcom/vivo/PCTools/i/h;->c(Lcom/vivo/PCTools/i/h;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "_id="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v9, 0x0

    invoke-virtual {v8, v5, v2, v0, v9}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    invoke-virtual {v2}, Landroid/content/ContentValues;->clear()V

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_13

    const-string v0, "mimetype"

    const-string v5, "vnd.android.cursor.item/name"

    invoke-virtual {v2, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "data1"

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/PCTools/i/i;->a:Lcom/vivo/PCTools/i/h;

    invoke-virtual {v0}, Lcom/vivo/PCTools/i/h;->getNameDataID()I

    move-result v0

    iget-object v5, p0, Lcom/vivo/PCTools/i/i;->a:Lcom/vivo/PCTools/i/h;

    const/4 v8, 0x0

    invoke-virtual {v5, v0, v2, v8}, Lcom/vivo/PCTools/i/h;->setContactItemAction(ILandroid/content/ContentValues;I)I

    :cond_11
    :goto_9
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_15

    invoke-virtual {v2}, Landroid/content/ContentValues;->clear()V

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_15

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_15

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_15

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_15

    :try_start_5
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_14

    new-array v5, v0, [B

    iget-object v8, p0, Lcom/vivo/PCTools/i/i;->a:Lcom/vivo/PCTools/i/h;

    invoke-static {v8}, Lcom/vivo/PCTools/i/h;->d(Lcom/vivo/PCTools/i/h;)Ljava/io/FileInputStream;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v5, v9, v0}, Ljava/io/FileInputStream;->read([BII)I

    const-string v0, "data15"

    invoke-virtual {v2, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    const-string v0, "is_super_primary"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v5, -0x1

    if-ne v0, v5, :cond_12

    const-string v0, "mimetype"

    const-string v5, "vnd.android.cursor.item/photo"

    invoke-virtual {v2, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_12
    iget-object v0, p0, Lcom/vivo/PCTools/i/i;->a:Lcom/vivo/PCTools/i/h;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/4 v8, 0x0

    invoke-virtual {v0, v5, v2, v8}, Lcom/vivo/PCTools/i/h;->setContactItemAction(ILandroid/content/ContentValues;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6

    move-result-object v0

    :try_start_6
    const-string v1, "ContactsXmlParseHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "22 photoID = "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    goto/16 :goto_5

    :catch_4
    move-exception v1

    :goto_a
    const-string v2, "ContactsXmlParseHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v8, " e ="

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    :cond_13
    if-eqz v3, :cond_11

    iget-object v0, p0, Lcom/vivo/PCTools/i/i;->a:Lcom/vivo/PCTools/i/h;

    invoke-virtual {v0}, Lcom/vivo/PCTools/i/h;->getNameDataID()I

    move-result v0

    iget-object v5, p0, Lcom/vivo/PCTools/i/i;->a:Lcom/vivo/PCTools/i/h;

    const/4 v8, 0x1

    invoke-virtual {v5, v0, v2, v8}, Lcom/vivo/PCTools/i/h;->setContactItemAction(ILandroid/content/ContentValues;I)I

    goto/16 :goto_9

    :cond_14
    if-nez v0, :cond_15

    :try_start_7
    iget-object v0, p0, Lcom/vivo/PCTools/i/i;->a:Lcom/vivo/PCTools/i/h;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/4 v8, 0x1

    invoke-virtual {v0, v5, v2, v8}, Lcom/vivo/PCTools/i/h;->setContactItemAction(ILandroid/content/ContentValues;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    move-result-object v0

    :try_start_8
    const-string v1, "ContactsXmlParseHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "23 photoID = "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    goto/16 :goto_5

    :catch_5
    move-exception v0

    const-string v1, "ContactsXmlParseHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "***111 mRetXmlSerializer is ex e = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    :catch_6
    move-exception v0

    move-object v12, v0

    move-object v0, v1

    move-object v1, v12

    goto :goto_a

    :catch_7
    move-exception v1

    goto/16 :goto_8

    :cond_15
    move-object v0, v1

    goto/16 :goto_5
.end method
