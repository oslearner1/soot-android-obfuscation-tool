.class public final Lcom/vivo/PCTools/a/a;
.super Lcom/vivo/PCTools/Pcserver/a;


# direct methods
.method public constructor <init>(Lcom/vivo/PCTools/q/a/a;Lorg/jboss/netty/channel/Channel;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/vivo/PCTools/Pcserver/a;-><init>(Lcom/vivo/PCTools/q/a/a;Lorg/jboss/netty/channel/Channel;Landroid/content/Context;)V

    return-void
.end method

.method private a(Ljava/lang/String;)Z
    .locals 7

    const/4 v2, 0x1

    const/4 v1, 0x0

    const-string v0, "ClipboardSyncHandler"

    const-string v3, "createClipTextXml"

    invoke-static {v0, v3}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v3, 0x0

    :try_start_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {}, Landroid/os/Looper;->prepare()V

    :cond_1
    iget-object v0, p0, Lcom/vivo/PCTools/a/a;->c:Landroid/content/Context;

    const-string v4, "clipboard"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/ClipboardManager;

    invoke-virtual {v0}, Landroid/text/ClipboardManager;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/io/OutputStreamWriter;

    new-instance v5, Ljava/io/FileOutputStream;

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v5}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v3

    invoke-virtual {v3}, Lorg/xmlpull/v1/XmlPullParserFactory;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v3

    invoke-interface {v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/Writer;)V

    const-string v5, "UTF-8"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v3, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v5, ""

    const-string v6, "clip_global"

    invoke-interface {v3, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v5, ""

    const-string v6, "clip_type"

    invoke-interface {v3, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v5, "clip_type_text"

    invoke-interface {v3, v5}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v5, ""

    const-string v6, "clip_type"

    invoke-interface {v3, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v5, ""

    const-string v6, "clip_content"

    invoke-interface {v3, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v3, v0}, Lorg/xmlpull/v1/XmlSerializer;->cdsect(Ljava/lang/String;)V

    const-string v0, ""

    const-string v5, "clip_content"

    invoke-interface {v3, v0, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v0, ""

    const-string v5, "clip_global"

    invoke-interface {v3, v0, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    :try_start_2
    invoke-virtual {v4}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :goto_1
    move v0, v2

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v2, v3

    :goto_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    if-eqz v2, :cond_2

    :try_start_3
    invoke-virtual {v2}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :cond_2
    :goto_3
    move v0, v1

    goto/16 :goto_0

    :catch_1
    move-exception v2

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :catch_3
    move-exception v0

    move-object v2, v4

    goto :goto_2
.end method


# virtual methods
.method public final HandleMessage()V
    .locals 7

    const/16 v4, 0xf

    const/4 v3, 0x1

    const/4 v6, -0x1

    const/4 v5, 0x0

    const-string v0, "ClipboardSyncHandler"

    const-string v1, "HandleMessage()"

    invoke-static {v0, v1}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/PCTools/a/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v0}, Lcom/vivo/PCTools/q/a/a;->getCmd()B

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/vivo/PCTools/a/a;->a:Lcom/vivo/PCTools/q/a/a;

    const-string v1, "ClipboardSyncHandler"

    const-string v2, "setClipboardFromPC"

    invoke-static {v1, v2}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/vivo/PCTools/q/a/a;

    invoke-direct {v1}, Lcom/vivo/PCTools/q/a/a;-><init>()V

    invoke-virtual {v1, v3}, Lcom/vivo/PCTools/q/a/a;->setVersion(S)V

    invoke-virtual {v1, v5}, Lcom/vivo/PCTools/q/a/a;->setHeadLength(S)V

    invoke-virtual {v0}, Lcom/vivo/PCTools/q/a/a;->getMegIdInt()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/vivo/PCTools/q/a/a;->setMegId(I)V

    invoke-virtual {v1, v4}, Lcom/vivo/PCTools/q/a/a;->setModule(S)V

    invoke-virtual {v1, v3}, Lcom/vivo/PCTools/q/a/a;->setCmd(B)V

    invoke-virtual {v1, v5}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V

    invoke-virtual {v1, v5}, Lcom/vivo/PCTools/q/a/a;->setBodyLength(I)V

    invoke-virtual {v0}, Lcom/vivo/PCTools/q/a/a;->getBodyLength()I

    move-result v2

    new-array v2, v2, [B

    invoke-virtual {v0}, Lcom/vivo/PCTools/q/a/a;->getBody()[B

    move-result-object v3

    invoke-virtual {v0}, Lcom/vivo/PCTools/q/a/a;->getBodyLength()I

    move-result v4

    invoke-static {v3, v5, v2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :try_start_0
    new-instance v3, Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v0}, Lcom/vivo/PCTools/q/a/a;->getBodyLength()I

    move-result v0

    const-string v5, "utf-8"

    invoke-direct {v3, v2, v4, v0, v5}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/io/DataInputStream;

    new-instance v3, Ljava/io/BufferedInputStream;

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    new-instance v3, Lcom/vivo/PCTools/r/s;

    invoke-direct {v3}, Lcom/vivo/PCTools/r/s;-><init>()V

    invoke-virtual {v3, v2}, Lcom/vivo/PCTools/r/s;->parseClipSyncRecXml(Ljava/io/InputStream;)Landroid/content/ContentValues;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    const-string v0, "clip_type"

    invoke-virtual {v2, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "clip_content"

    invoke-virtual {v2, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Landroid/os/Looper;->prepare()V

    :cond_0
    iget-object v0, p0, Lcom/vivo/PCTools/a/a;->c:Landroid/content/Context;

    const-string v3, "clipboard"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/ClipboardManager;

    invoke-virtual {v0, v2}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v1}, Lcom/vivo/PCTools/a/a;->SendToPC(Lcom/vivo/PCTools/q/a/a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v1, v6}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V

    invoke-virtual {p0, v1}, Lcom/vivo/PCTools/a/a;->SendToPC(Lcom/vivo/PCTools/q/a/a;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    :cond_1
    const/4 v0, -0x1

    :try_start_1
    invoke-virtual {v1, v0}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V

    invoke-virtual {p0, v1}, Lcom/vivo/PCTools/a/a;->SendToPC(Lcom/vivo/PCTools/q/a/a;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/vivo/PCTools/a/a;->a:Lcom/vivo/PCTools/q/a/a;

    const-string v1, "ClipboardSyncHandler"

    const-string v2, "sendClipboardToPC"

    invoke-static {v1, v2}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/vivo/PCTools/q/a/a;

    invoke-direct {v1}, Lcom/vivo/PCTools/q/a/a;-><init>()V

    invoke-virtual {v1, v3}, Lcom/vivo/PCTools/q/a/a;->setVersion(S)V

    invoke-virtual {v1, v5}, Lcom/vivo/PCTools/q/a/a;->setHeadLength(S)V

    invoke-virtual {v0}, Lcom/vivo/PCTools/q/a/a;->getMegIdInt()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/vivo/PCTools/q/a/a;->setMegId(I)V

    invoke-virtual {v1, v4}, Lcom/vivo/PCTools/q/a/a;->setModule(S)V

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/vivo/PCTools/q/a/a;->setCmd(B)V

    invoke-virtual {v1, v5}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V

    invoke-virtual {v1, v5}, Lcom/vivo/PCTools/q/a/a;->setBodyLength(I)V

    invoke-virtual {v0}, Lcom/vivo/PCTools/q/a/a;->getMegIdInt()I

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcom/vivo/PCTools/BaseApplication;->a:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ".sms_send_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "_SmsMmsXml.xml"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/vivo/PCTools/a/a;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1, v5}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    array-length v2, v2

    invoke-virtual {v1, v2}, Lcom/vivo/PCTools/q/a/a;->setBodyLength(I)V

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    invoke-virtual {v1, v2, v0}, Lcom/vivo/PCTools/q/a/a;->setBody([BI)V

    :goto_1
    invoke-virtual {p0, v1}, Lcom/vivo/PCTools/a/a;->SendToPC(Lcom/vivo/PCTools/q/a/a;)V

    goto/16 :goto_0

    :cond_2
    invoke-virtual {v1, v6}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final onCreateXmlFile(Lorg/xmlpull/v1/XmlSerializer;I)V
    .locals 0

    return-void
.end method
