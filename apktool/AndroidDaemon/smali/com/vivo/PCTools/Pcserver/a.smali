.class public abstract Lcom/vivo/PCTools/Pcserver/a;
.super Ljava/lang/Object;


# instance fields
.field protected a:Lcom/vivo/PCTools/q/a/a;

.field protected final b:Lorg/jboss/netty/channel/Channel;

.field protected c:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/vivo/PCTools/q/a/a;Lorg/jboss/netty/channel/Channel;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vivo/PCTools/Pcserver/a;->a:Lcom/vivo/PCTools/q/a/a;

    iput-object p2, p0, Lcom/vivo/PCTools/Pcserver/a;->b:Lorg/jboss/netty/channel/Channel;

    iput-object p3, p0, Lcom/vivo/PCTools/Pcserver/a;->c:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Lorg/apache/http/a/b;Lorg/apache/http/message/d;Lorg/apache/http/params/a;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Lorg/apache/http/a/c;Lorg/apache/http/message/c;Lorg/apache/http/params/a;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Lorg/apache/http/params/a;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static SendToPC(Lorg/jboss/netty/channel/Channel;Lcom/vivo/PCTools/q/a/a;)V
    .locals 7

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getBodyLength()I

    move-result v0

    if-lez v0, :cond_2

    :try_start_0
    new-array v1, v0, [B

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getBody()[B

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v2, v3, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v2, Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "utf-8"

    invoke-direct {v2, v1, v3, v0, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v0, "BaseWorker"

    const-string v1, "body\u6587\u4ef6\u4e0d\u5728\u5728"

    invoke-static {v0, v1}, Lcom/vivo/PCTools/util/b;->logE(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "BaseWorker"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "file ="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vivo/PCTools/util/b;->logE(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v0, "BaseWorker"

    const-string v1, "body \u4e0d\u662f\u6587\u4ef6"

    invoke-static {v0, v1}, Lcom/vivo/PCTools/util/b;->logE(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "BaseWorker"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "file ="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vivo/PCTools/util/b;->logE(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0

    :cond_1
    :try_start_1
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v2, "r"

    invoke-direct {v1, v0, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v4

    long-to-int v0, v4

    invoke-virtual {p1, v0}, Lcom/vivo/PCTools/q/a/a;->setBodyLength(I)V

    invoke-interface {p0, p1}, Lorg/jboss/netty/channel/Channel;->write(Ljava/lang/Object;)Lorg/jboss/netty/channel/ChannelFuture;

    new-instance v0, Lorg/jboss/netty/handler/stream/ChunkedFile;

    const-wide/16 v2, 0x0

    const/16 v6, 0x2000

    invoke-direct/range {v0 .. v6}, Lorg/jboss/netty/handler/stream/ChunkedFile;-><init>(Ljava/io/RandomAccessFile;JJI)V

    invoke-interface {p0, v0}, Lorg/jboss/netty/channel/Channel;->write(Ljava/lang/Object;)Lorg/jboss/netty/channel/ChannelFuture;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :cond_2
    invoke-interface {p0, p1}, Lorg/jboss/netty/channel/Channel;->write(Ljava/lang/Object;)Lorg/jboss/netty/channel/ChannelFuture;

    goto :goto_0
.end method

.method public static SendToPC(Lorg/jboss/netty/channel/group/ChannelGroup;Lcom/vivo/PCTools/q/a/a;)V
    .locals 7

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getBodyLength()I

    move-result v0

    if-lez v0, :cond_2

    :try_start_0
    new-array v1, v0, [B

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getBody()[B

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v2, v3, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v2, Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "utf-8"

    invoke-direct {v2, v1, v3, v0, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v0, "BaseWorker"

    const-string v1, "body\u6587\u4ef6\u4e0d\u5728\u5728"

    invoke-static {v0, v1}, Lcom/vivo/PCTools/util/b;->logE(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "BaseWorker"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "file ="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vivo/PCTools/util/b;->logE(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v0, "BaseWorker"

    const-string v1, "body \u4e0d\u662f\u6587\u4ef6"

    invoke-static {v0, v1}, Lcom/vivo/PCTools/util/b;->logE(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "BaseWorker"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "file ="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vivo/PCTools/util/b;->logE(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0

    :cond_1
    :try_start_1
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v2, "r"

    invoke-direct {v1, v0, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v4

    long-to-int v0, v4

    invoke-virtual {p1, v0}, Lcom/vivo/PCTools/q/a/a;->setBodyLength(I)V

    invoke-interface {p0, p1}, Lorg/jboss/netty/channel/group/ChannelGroup;->write(Ljava/lang/Object;)Lorg/jboss/netty/channel/group/ChannelGroupFuture;

    new-instance v0, Lorg/jboss/netty/handler/stream/ChunkedFile;

    const-wide/16 v2, 0x0

    const/16 v6, 0x2000

    invoke-direct/range {v0 .. v6}, Lorg/jboss/netty/handler/stream/ChunkedFile;-><init>(Ljava/io/RandomAccessFile;JJI)V

    invoke-interface {p0, v0}, Lorg/jboss/netty/channel/group/ChannelGroup;->write(Ljava/lang/Object;)Lorg/jboss/netty/channel/group/ChannelGroupFuture;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :cond_2
    invoke-interface {p0, p1}, Lorg/jboss/netty/channel/group/ChannelGroup;->write(Ljava/lang/Object;)Lorg/jboss/netty/channel/group/ChannelGroupFuture;

    goto :goto_0
.end method

.method protected static a(Lcom/vivo/PCTools/q/a/a;Ljava/lang/String;)Lcom/vivo/PCTools/q/a/a;
    .locals 3

    new-instance v0, Lcom/vivo/PCTools/q/a/a;

    invoke-direct {v0}, Lcom/vivo/PCTools/q/a/a;-><init>()V

    invoke-virtual {p0}, Lcom/vivo/PCTools/q/a/a;->getVersionShort()S

    move-result v1

    invoke-virtual {v0, v1}, Lcom/vivo/PCTools/q/a/a;->setVersion(S)V

    invoke-virtual {p0}, Lcom/vivo/PCTools/q/a/a;->getMegIdInt()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/vivo/PCTools/q/a/a;->setMegId(I)V

    invoke-virtual {p0}, Lcom/vivo/PCTools/q/a/a;->getModuleShort()S

    move-result v1

    invoke-virtual {v0, v1}, Lcom/vivo/PCTools/q/a/a;->setModule(S)V

    invoke-virtual {p0}, Lcom/vivo/PCTools/q/a/a;->getCmd()B

    move-result v1

    invoke-virtual {v0, v1}, Lcom/vivo/PCTools/q/a/a;->setCmd(B)V

    invoke-virtual {p0}, Lcom/vivo/PCTools/q/a/a;->getRelyCode()B

    move-result v1

    invoke-virtual {v0, v1}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v1, v1

    invoke-virtual {v0, v1}, Lcom/vivo/PCTools/q/a/a;->setBodyLength(I)V

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/vivo/PCTools/q/a/a;->setBody([BI)V

    return-object v0
.end method

.method public static parseHeaders(Lorg/apache/http/a/b;IILorg/apache/http/message/d;)[Lorg/apache/http/b;
    .locals 2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public abstract HandleMessage()V
.end method

.method public SendFileAsync(Lcom/vivo/PCTools/q/a/a;Ljava/io/File;)V
    .locals 3

    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide v0

    long-to-int v0, v0

    invoke-virtual {p1, v0}, Lcom/vivo/PCTools/q/a/a;->setBodyLength(I)V

    iget-object v0, p0, Lcom/vivo/PCTools/Pcserver/a;->b:Lorg/jboss/netty/channel/Channel;

    invoke-interface {v0, p1}, Lorg/jboss/netty/channel/Channel;->write(Ljava/lang/Object;)Lorg/jboss/netty/channel/ChannelFuture;

    :try_start_0
    iget-object v0, p0, Lcom/vivo/PCTools/Pcserver/a;->b:Lorg/jboss/netty/channel/Channel;

    new-instance v1, Lorg/jboss/netty/handler/stream/ChunkedFile;

    const/16 v2, 0x2000

    invoke-direct {v1, p2, v2}, Lorg/jboss/netty/handler/stream/ChunkedFile;-><init>(Ljava/io/File;I)V

    invoke-interface {v0, v1}, Lorg/jboss/netty/channel/Channel;->write(Ljava/lang/Object;)Lorg/jboss/netty/channel/ChannelFuture;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public SendFileSync(Lcom/vivo/PCTools/q/a/a;Ljava/io/File;)V
    .locals 5

    const-wide/16 v2, 0x0

    if-eqz p2, :cond_1

    :try_start_0
    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide v0

    :goto_0
    long-to-int v4, v0

    invoke-virtual {p1, v4}, Lcom/vivo/PCTools/q/a/a;->setBodyLength(I)V

    iget-object v4, p0, Lcom/vivo/PCTools/Pcserver/a;->b:Lorg/jboss/netty/channel/Channel;

    invoke-interface {v4, p1}, Lorg/jboss/netty/channel/Channel;->write(Ljava/lang/Object;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v4

    invoke-interface {v4}, Lorg/jboss/netty/channel/ChannelFuture;->sync()Lorg/jboss/netty/channel/ChannelFuture;

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/vivo/PCTools/Pcserver/a;->b:Lorg/jboss/netty/channel/Channel;

    new-instance v1, Lorg/jboss/netty/handler/stream/ChunkedFile;

    invoke-direct {v1, p2}, Lorg/jboss/netty/handler/stream/ChunkedFile;-><init>(Ljava/io/File;)V

    invoke-interface {v0, v1}, Lorg/jboss/netty/channel/Channel;->write(Ljava/lang/Object;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v0

    invoke-interface {v0}, Lorg/jboss/netty/channel/ChannelFuture;->sync()Lorg/jboss/netty/channel/ChannelFuture;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :goto_1
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    :cond_1
    move-wide v0, v2

    goto :goto_0
.end method

.method public SendToPC(Lcom/vivo/PCTools/q/a/a;)V
    .locals 8

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getBodyLength()I

    move-result v0

    if-lez v0, :cond_2

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getBody()[B

    move-result-object v1

    if-eqz v1, :cond_2

    :try_start_0
    new-instance v1, Ljava/lang/String;

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getBody()[B

    move-result-object v2

    const/4 v3, 0x0

    const-string v4, "utf-8"

    invoke-direct {v1, v2, v3, v0, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v0, "BaseWorker"

    const-string v2, "body\u6587\u4ef6\u4e0d\u5728\u5728"

    invoke-static {v0, v2}, Lcom/vivo/PCTools/util/b;->logE(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "BaseWorker"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "file ="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vivo/PCTools/util/b;->logE(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v2

    if-nez v2, :cond_1

    const-string v0, "BaseWorker"

    const-string v2, "body \u4e0d\u662f\u6587\u4ef6"

    invoke-static {v0, v2}, Lcom/vivo/PCTools/util/b;->logE(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "BaseWorker"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "file ="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vivo/PCTools/util/b;->logE(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0

    :cond_1
    :try_start_1
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v2, "r"

    invoke-direct {v1, v0, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v4

    long-to-int v0, v4

    invoke-virtual {p1, v0}, Lcom/vivo/PCTools/q/a/a;->setBodyLength(I)V

    iget-object v0, p0, Lcom/vivo/PCTools/Pcserver/a;->b:Lorg/jboss/netty/channel/Channel;

    invoke-interface {v0, p1}, Lorg/jboss/netty/channel/Channel;->write(Ljava/lang/Object;)Lorg/jboss/netty/channel/ChannelFuture;

    iget-object v7, p0, Lcom/vivo/PCTools/Pcserver/a;->b:Lorg/jboss/netty/channel/Channel;

    new-instance v0, Lorg/jboss/netty/handler/stream/ChunkedFile;

    const-wide/16 v2, 0x0

    const/16 v6, 0x2000

    invoke-direct/range {v0 .. v6}, Lorg/jboss/netty/handler/stream/ChunkedFile;-><init>(Ljava/io/RandomAccessFile;JJI)V

    invoke-interface {v7, v0}, Lorg/jboss/netty/channel/Channel;->write(Ljava/lang/Object;)Lorg/jboss/netty/channel/ChannelFuture;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/vivo/PCTools/Pcserver/a;->b:Lorg/jboss/netty/channel/Channel;

    invoke-interface {v0, p1}, Lorg/jboss/netty/channel/Channel;->write(Ljava/lang/Object;)Lorg/jboss/netty/channel/ChannelFuture;

    goto :goto_0
.end method

.method public SendToPC(Lcom/vivo/PCTools/q/a/a;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/vivo/PCTools/Pcserver/a;->SendToPC(Lcom/vivo/PCTools/q/a/a;[B)V

    return-void
.end method

.method public SendToPC(Lcom/vivo/PCTools/q/a/a;[B)V
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/vivo/PCTools/q/a/a;->sendbody(Z)V

    array-length v0, p2

    invoke-virtual {p1, v0}, Lcom/vivo/PCTools/q/a/a;->setBodyLength(I)V

    invoke-virtual {p1, p2}, Lcom/vivo/PCTools/q/a/a;->setBody([B)V

    iget-object v1, p0, Lcom/vivo/PCTools/Pcserver/a;->b:Lorg/jboss/netty/channel/Channel;

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vivo/PCTools/q/a/a;

    invoke-interface {v1, v0}, Lorg/jboss/netty/channel/Channel;->write(Ljava/lang/Object;)Lorg/jboss/netty/channel/ChannelFuture;

    return-void
.end method

.method public SendToPCSync(Lcom/vivo/PCTools/q/a/a;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/vivo/PCTools/Pcserver/a;->b:Lorg/jboss/netty/channel/Channel;

    invoke-interface {v0, p1}, Lorg/jboss/netty/channel/Channel;->write(Ljava/lang/Object;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v0

    invoke-interface {v0}, Lorg/jboss/netty/channel/ChannelFuture;->sync()Lorg/jboss/netty/channel/ChannelFuture;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method public createXmlFile(Ljava/lang/String;II)Ljava/lang/String;
    .locals 6

    const/4 v2, 0x0

    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    :try_start_0
    iget-object v0, p0, Lcom/vivo/PCTools/Pcserver/a;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".xml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/io/FileOutputStream;

    new-instance v0, Ljava/io/File;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v1, Ljava/io/OutputStreamWriter;

    invoke-direct {v1, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-interface {v4, v1}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/Writer;)V

    const-string v0, "UTF-8"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v4, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    invoke-virtual {p0, v4, p2}, Lcom/vivo/PCTools/Pcserver/a;->onCreateXmlFile(Lorg/xmlpull/v1/XmlSerializer;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    invoke-virtual {v1}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    :cond_0
    :goto_0
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    move-object v1, v2

    :goto_1
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    invoke-virtual {v5, v0, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :try_start_5
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    :cond_1
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v3, v2

    :goto_2
    :try_start_6
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    :cond_2
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    :cond_3
    :goto_3
    throw v0

    :catch_2
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catchall_1
    move-exception v0

    goto :goto_2

    :catchall_2
    move-exception v0

    move-object v2, v1

    goto :goto_2

    :catchall_3
    move-exception v0

    move-object v3, v2

    move-object v2, v1

    goto :goto_2

    :catch_4
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    goto :goto_1

    :catch_5
    move-exception v0

    move-object v2, v3

    goto :goto_1
.end method

.method public getChannel()Lorg/jboss/netty/channel/Channel;
    .locals 1

    iget-object v0, p0, Lcom/vivo/PCTools/Pcserver/a;->b:Lorg/jboss/netty/channel/Channel;

    return-object v0
.end method

.method public getmContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/vivo/PCTools/Pcserver/a;->c:Landroid/content/Context;

    return-object v0
.end method

.method public onChildrenLoaded(Ljava/lang/String;Ljava/util/List;)V
    .locals 0

    return-void
.end method

.method public abstract onCreateXmlFile(Lorg/xmlpull/v1/XmlSerializer;I)V
.end method

.method public onError(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public parse()Lorg/apache/http/j;
    .locals 2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setmContext(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/vivo/PCTools/Pcserver/a;->c:Landroid/content/Context;

    return-void
.end method

.method public write(Lorg/apache/http/j;)V
    .locals 2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
