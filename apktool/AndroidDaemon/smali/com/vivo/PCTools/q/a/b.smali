.class public final Lcom/vivo/PCTools/q/a/b;
.super Lorg/jboss/netty/handler/codec/frame/FrameDecoder;


# instance fields
.field private a:Ljava/lang/Boolean;

.field private b:Ljava/io/FileOutputStream;

.field private c:Lcom/vivo/PCTools/q/a/a;

.field private d:I

.field private e:Ljava/lang/String;

.field private f:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/frame/FrameDecoder;-><init>()V

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/PCTools/q/a/b;->a:Ljava/lang/Boolean;

    iput-object v2, p0, Lcom/vivo/PCTools/q/a/b;->b:Ljava/io/FileOutputStream;

    iput-object v2, p0, Lcom/vivo/PCTools/q/a/b;->c:Lcom/vivo/PCTools/q/a/a;

    iput v1, p0, Lcom/vivo/PCTools/q/a/b;->d:I

    iput-object p1, p0, Lcom/vivo/PCTools/q/a/b;->f:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method protected final decode(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/buffer/ChannelBuffer;)Ljava/lang/Object;
    .locals 8

    const/16 v3, 0x10

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v1, 0x0

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/vivo/PCTools/q/a/b;->a:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_11

    iput v5, p0, Lcom/vivo/PCTools/q/a/b;->d:I

    new-instance v0, Lcom/vivo/PCTools/q/a/a;

    invoke-direct {v0}, Lcom/vivo/PCTools/q/a/a;-><init>()V

    iput-object v0, p0, Lcom/vivo/PCTools/q/a/b;->c:Lcom/vivo/PCTools/q/a/a;

    new-array v0, v3, [B

    invoke-interface {p3}, Lorg/jboss/netty/buffer/ChannelBuffer;->readable()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {p3}, Lorg/jboss/netty/buffer/ChannelBuffer;->resetReaderIndex()V

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    invoke-interface {p3}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v2

    if-ge v2, v3, :cond_1

    invoke-interface {p3}, Lorg/jboss/netty/buffer/ChannelBuffer;->resetReaderIndex()V

    move-object v0, v1

    goto :goto_0

    :cond_1
    invoke-interface {p3, v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readBytes([B)V

    iget-object v2, p0, Lcom/vivo/PCTools/q/a/b;->c:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v2, v0, v5}, Lcom/vivo/PCTools/q/a/a;->setVersion([BI)V

    iget-object v2, p0, Lcom/vivo/PCTools/q/a/b;->c:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v2}, Lcom/vivo/PCTools/q/a/a;->getVersionShort()S

    move-result v2

    if-eq v2, v6, :cond_2

    const-string v0, "ProtocalDecode"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "--------------version="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/vivo/PCTools/q/a/b;->c:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v2}, Lcom/vivo/PCTools/q/a/a;->getVersionShort()S

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "VERSION error"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v2, p0, Lcom/vivo/PCTools/q/a/b;->c:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v2, v0, v7}, Lcom/vivo/PCTools/q/a/a;->setHeadLength([BI)V

    iget-object v2, p0, Lcom/vivo/PCTools/q/a/b;->c:Lcom/vivo/PCTools/q/a/a;

    const/4 v3, 0x4

    invoke-virtual {v2, v0, v3}, Lcom/vivo/PCTools/q/a/a;->setMegId([BI)V

    iget-object v2, p0, Lcom/vivo/PCTools/q/a/b;->c:Lcom/vivo/PCTools/q/a/a;

    const/16 v3, 0x8

    invoke-virtual {v2, v0, v3}, Lcom/vivo/PCTools/q/a/a;->setModule([BI)V

    iget-object v2, p0, Lcom/vivo/PCTools/q/a/b;->c:Lcom/vivo/PCTools/q/a/a;

    const/16 v3, 0xa

    aget-byte v3, v0, v3

    invoke-virtual {v2, v3}, Lcom/vivo/PCTools/q/a/a;->setCmd(B)V

    iget-object v2, p0, Lcom/vivo/PCTools/q/a/b;->c:Lcom/vivo/PCTools/q/a/a;

    const/16 v3, 0xb

    aget-byte v3, v0, v3

    invoke-virtual {v2, v3}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V

    iget-object v2, p0, Lcom/vivo/PCTools/q/a/b;->c:Lcom/vivo/PCTools/q/a/a;

    const/16 v3, 0xc

    invoke-virtual {v2, v0, v3}, Lcom/vivo/PCTools/q/a/a;->setBodyLength([BI)V

    const-string v0, "ProtocalDecode"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Recv Module:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/vivo/PCTools/q/a/b;->c:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v3}, Lcom/vivo/PCTools/q/a/a;->getModuleShort()S

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/vivo/PCTools/q/a/b;->c:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v0}, Lcom/vivo/PCTools/q/a/a;->getHeadLengthShort()S

    move-result v0

    iget-object v2, p0, Lcom/vivo/PCTools/q/a/b;->c:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v2}, Lcom/vivo/PCTools/q/a/a;->getBodyLength()I

    move-result v2

    if-lez v0, :cond_5

    invoke-interface {p3}, Lorg/jboss/netty/buffer/ChannelBuffer;->readable()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-interface {p3}, Lorg/jboss/netty/buffer/ChannelBuffer;->resetReaderIndex()V

    move-object v0, v1

    goto/16 :goto_0

    :cond_3
    invoke-interface {p3}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v3

    if-ge v3, v0, :cond_4

    invoke-interface {p3}, Lorg/jboss/netty/buffer/ChannelBuffer;->resetReaderIndex()V

    move-object v0, v1

    goto/16 :goto_0

    :cond_4
    new-array v3, v0, [B

    invoke-interface {p3, v3}, Lorg/jboss/netty/buffer/ChannelBuffer;->readBytes([B)V

    iget-object v4, p0, Lcom/vivo/PCTools/q/a/b;->c:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v4, v3, v0}, Lcom/vivo/PCTools/q/a/a;->setAppend([BI)V

    :cond_5
    if-lez v2, :cond_10

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/PCTools/q/a/b;->a:Ljava/lang/Boolean;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    sget-object v3, Lcom/vivo/PCTools/BaseApplication;->a:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v3, p0, Lcom/vivo/PCTools/q/a/b;->c:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v3}, Lcom/vivo/PCTools/q/a/a;->getModuleShort()S

    move-result v3

    sparse-switch v3, :sswitch_data_0

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "\u672a\u8bc6\u522b\u7684\u6a21\u5757"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, ".rec_file_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".tmp"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_6
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/PCTools/q/a/b;->e:Ljava/lang/String;

    const-string v0, "ProtocalDecode"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "save file = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/vivo/PCTools/q/a/b;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/vivo/PCTools/q/a/b;->e:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_7

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    :cond_7
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iput-object v2, p0, Lcom/vivo/PCTools/q/a/b;->b:Ljava/io/FileOutputStream;

    move-object v0, v1

    goto/16 :goto_0

    :sswitch_1
    iget-object v2, p0, Lcom/vivo/PCTools/q/a/b;->c:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v2}, Lcom/vivo/PCTools/q/a/a;->getCmd()B

    move-result v2

    sget-byte v3, Lcom/vivo/PCTools/h/a;->h:B

    if-ne v2, v3, :cond_a

    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/vivo/PCTools/q/a/b;->c:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v3}, Lcom/vivo/PCTools/q/a/a;->getAppend()[B

    move-result-object v3

    const-string v4, "utf-8"

    invoke-direct {v2, v3, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    new-instance v3, Lcom/google/gson/JsonParser;

    invoke-direct {v3}, Lcom/google/gson/JsonParser;-><init>()V

    invoke-virtual {v3, v2}, Lcom/google/gson/JsonParser;->parse(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v2

    const-string v3, "src"

    invoke-virtual {v2, v3}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    const-string v3, "src"

    invoke-virtual {v2, v3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->setLength(I)V

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/vivo/PCTools/q/a/b;->f:Landroid/content/Context;

    invoke-static {v3, v2}, Lcom/vivo/PCTools/util/a;->getCompatiblePath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    :cond_8
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    :cond_9
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "rec_file_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".tmp"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    :cond_a
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "rec_file_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".tmp"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    :sswitch_2
    iget-object v3, p0, Lcom/vivo/PCTools/q/a/b;->c:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v3}, Lcom/vivo/PCTools/q/a/a;->getCmd()B

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_d

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->setLength(I)V

    int-to-long v2, v2

    invoke-static {v2, v3}, Lcom/vivo/PCTools/util/d;->JudgeExternalSizeOver(J)Z

    move-result v2

    if-nez v2, :cond_c

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_b

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_b
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "vivodownload/"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/vivo/PCTools/q/a/b;->c:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v3}, Lcom/vivo/PCTools/q/a/a;->getMegIdInt()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".apk"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    :cond_c
    invoke-interface {p3}, Lorg/jboss/netty/buffer/ChannelBuffer;->clear()V

    iget-object v0, p0, Lcom/vivo/PCTools/q/a/b;->c:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v0, v7}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V

    iget-object v0, p0, Lcom/vivo/PCTools/q/a/b;->c:Lcom/vivo/PCTools/q/a/a;

    goto/16 :goto_0

    :cond_d
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, ".rec_file"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".tmp"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    :sswitch_3
    new-array v2, v7, [B

    iget-object v3, p0, Lcom/vivo/PCTools/q/a/b;->c:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v3}, Lcom/vivo/PCTools/q/a/a;->getCmd()B

    move-result v3

    aput-byte v3, v2, v5

    iget-object v3, p0, Lcom/vivo/PCTools/q/a/b;->c:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v3}, Lcom/vivo/PCTools/q/a/a;->getRelyCode()B

    move-result v3

    aput-byte v3, v2, v6

    invoke-static {v2, v5}, Landroid/support/v4/media/session/MediaSessionCompat;->byteToShort([BI)S

    move-result v2

    const/16 v3, 0x200

    if-eq v2, v3, :cond_e

    const/16 v3, 0x201

    if-ne v2, v3, :cond_f

    :cond_e
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->setLength(I)V

    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/vivo/PCTools/q/a/b;->c:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v3}, Lcom/vivo/PCTools/q/a/a;->getAppend()[B

    move-result-object v3

    const-string v4, "utf-8"

    invoke-direct {v2, v3, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ProtocalDecode"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_6

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    goto/16 :goto_1

    :cond_f
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "rec_file"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".tmp"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    :cond_10
    iget-object v0, p0, Lcom/vivo/PCTools/q/a/b;->c:Lcom/vivo/PCTools/q/a/a;

    goto/16 :goto_0

    :cond_11
    iget-object v0, p0, Lcom/vivo/PCTools/q/a/b;->c:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v0}, Lcom/vivo/PCTools/q/a/a;->getBodyLength()I

    move-result v2

    invoke-interface {p3}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v0

    iget v3, p0, Lcom/vivo/PCTools/q/a/b;->d:I

    add-int/2addr v3, v0

    if-le v3, v2, :cond_12

    iget-object v0, p0, Lcom/vivo/PCTools/q/a/b;->c:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v0}, Lcom/vivo/PCTools/q/a/a;->getBodyLength()I

    move-result v0

    iget v3, p0, Lcom/vivo/PCTools/q/a/b;->d:I

    sub-int/2addr v0, v3

    :cond_12
    iget-object v3, p0, Lcom/vivo/PCTools/q/a/b;->b:Ljava/io/FileOutputStream;

    invoke-interface {p3, v3, v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readBytes(Ljava/io/OutputStream;I)V

    iget v3, p0, Lcom/vivo/PCTools/q/a/b;->d:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/vivo/PCTools/q/a/b;->d:I

    iget v0, p0, Lcom/vivo/PCTools/q/a/b;->d:I

    if-lt v0, v2, :cond_13

    const-string v0, "ProtocalDecode"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "read2 "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/vivo/PCTools/q/a/b;->d:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " bytes And bodylen ="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/vivo/PCTools/q/a/b;->c:Lcom/vivo/PCTools/q/a/a;

    iget-object v1, p0, Lcom/vivo/PCTools/q/a/b;->e:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v1, v1

    invoke-virtual {v0, v1}, Lcom/vivo/PCTools/q/a/a;->setBodyLength(I)V

    iget-object v0, p0, Lcom/vivo/PCTools/q/a/b;->c:Lcom/vivo/PCTools/q/a/a;

    iget-object v1, p0, Lcom/vivo/PCTools/q/a/b;->e:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/PCTools/q/a/b;->e:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    array-length v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/vivo/PCTools/q/a/a;->setBody([BI)V

    iget-object v0, p0, Lcom/vivo/PCTools/q/a/b;->b:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/PCTools/q/a/b;->a:Ljava/lang/Boolean;

    iget-object v0, p0, Lcom/vivo/PCTools/q/a/b;->c:Lcom/vivo/PCTools/q/a/a;

    goto/16 :goto_0

    :cond_13
    move-object v0, v1

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x3 -> :sswitch_0
        0x4 -> :sswitch_2
        0x5 -> :sswitch_0
        0x7 -> :sswitch_0
        0x8 -> :sswitch_0
        0x9 -> :sswitch_0
        0xa -> :sswitch_3
        0xb -> :sswitch_0
        0xc -> :sswitch_0
        0xd -> :sswitch_0
        0xe -> :sswitch_0
        0xf -> :sswitch_0
        0x11 -> :sswitch_1
        0xff -> :sswitch_0
    .end sparse-switch
.end method

.method public final exceptionCaught(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ExceptionEvent;)V
    .locals 1

    invoke-interface {p2}, Lorg/jboss/netty/channel/ExceptionEvent;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-interface {p2}, Lorg/jboss/netty/channel/ExceptionEvent;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v0

    invoke-interface {v0}, Lorg/jboss/netty/channel/Channel;->close()Lorg/jboss/netty/channel/ChannelFuture;

    return-void
.end method
