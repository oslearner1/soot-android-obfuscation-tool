.class public final Lcom/vivo/PCTools/PcFtpRemote/h;
.super Ljava/lang/Thread;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/net/Socket;

.field private c:Ljava/io/BufferedReader;

.field private d:Ljava/io/BufferedOutputStream;

.field private e:Ljava/net/ServerSocket;

.field private f:Ljava/lang/String;

.field private g:I

.field private h:Z

.field private i:Ljava/io/File;

.field private j:I

.field private k:Ljava/util/ArrayList;

.field private l:Landroid/content/Context;


# direct methods
.method public constructor <init>(Ljava/net/Socket;Ljava/lang/String;Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    sget-object v0, Lorg/swiftp/ac;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/vivo/PCTools/PcFtpRemote/h;->a:Ljava/lang/String;

    iput-object v1, p0, Lcom/vivo/PCTools/PcFtpRemote/h;->b:Ljava/net/Socket;

    iput-object v1, p0, Lcom/vivo/PCTools/PcFtpRemote/h;->c:Ljava/io/BufferedReader;

    iput-object v1, p0, Lcom/vivo/PCTools/PcFtpRemote/h;->d:Ljava/io/BufferedOutputStream;

    iput-object v1, p0, Lcom/vivo/PCTools/PcFtpRemote/h;->e:Ljava/net/ServerSocket;

    const-string v0, "127.0.0.1"

    iput-object v0, p0, Lcom/vivo/PCTools/PcFtpRemote/h;->f:Ljava/lang/String;

    const/16 v0, 0x22b8

    iput v0, p0, Lcom/vivo/PCTools/PcFtpRemote/h;->g:I

    iput-boolean v2, p0, Lcom/vivo/PCTools/PcFtpRemote/h;->h:Z

    iput-object v1, p0, Lcom/vivo/PCTools/PcFtpRemote/h;->i:Ljava/io/File;

    iput v2, p0, Lcom/vivo/PCTools/PcFtpRemote/h;->j:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vivo/PCTools/PcFtpRemote/h;->k:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/vivo/PCTools/PcFtpRemote/h;->b:Ljava/net/Socket;

    iput-object p2, p0, Lcom/vivo/PCTools/PcFtpRemote/h;->f:Ljava/lang/String;

    iput-object p3, p0, Lcom/vivo/PCTools/PcFtpRemote/h;->l:Landroid/content/Context;

    new-instance v0, Lcom/vivo/PCTools/b/a;

    iget-object v1, p0, Lcom/vivo/PCTools/PcFtpRemote/h;->l:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/vivo/PCTools/b/a;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private static a([BLjava/net/Socket;)I
    .locals 5

    const/4 v1, -0x1

    const/4 v0, -0x2

    const/4 v2, 0x0

    if-nez p1, :cond_1

    const-string v1, "FtpConnection"

    const-string v2, "Can\'t receive from null dataSocket"

    invoke-static {v1, v2}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Ljava/net/Socket;->isConnected()Z

    move-result v3

    if-nez v3, :cond_2

    const-string v1, "FtpConnection"

    const-string v2, "Can\'t receive from unconnected socket"

    invoke-static {v1, v2}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    :try_start_0
    invoke-virtual {p1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    :cond_3
    const/4 v0, 0x0

    array-length v4, p0

    invoke-virtual {v3, p0, v0, v4}, Ljava/io/InputStream;->read([BII)I
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    if-eqz v0, :cond_3

    if-ne v0, v1, :cond_0

    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "FtpConnection"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "SocketTimeoutException: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/SocketTimeoutException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v2

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v0, "FtpConnection"

    const-string v1, "Error reading data socket"

    invoke-static {v0, v1}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v2

    goto :goto_0
.end method

.method private static a(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2f

    if-ne v0, v1, :cond_0

    new-instance v1, Ljava/io/File;

    const-string v0, "/"

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    :try_start_0
    const-string v0, "GBK"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/vivo/PCTools/PcFtpRemote/h;->d:Ljava/io/BufferedOutputStream;

    invoke-virtual {v1, v0}, Ljava/io/BufferedOutputStream;->write([B)V

    iget-object v0, p0, Lcom/vivo/PCTools/PcFtpRemote/h;->d:Ljava/io/BufferedOutputStream;

    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->flush()V

    return-void

    :catch_0
    move-exception v0

    const-string v0, "FtpConnection"

    const-string v1, "Unsupported encoding: GBK"

    invoke-static {v0, v1}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Ljava/net/Socket;)V
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p0, p1, v4}, Lcom/vivo/PCTools/PcFtpRemote/h;->getParameter(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "FtpConnection"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "List parameter: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/vivo/PCTools/PcFtpRemote/h;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :goto_1
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1, v0}, Lcom/vivo/PCTools/PcFtpRemote/h;->listDirectory(Ljava/lang/StringBuilder;Ljava/io/File;)Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    const-string v1, "GBK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    array-length v1, v0

    invoke-virtual {p2}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-static {v0, v4, v1, v2}, Lcom/vivo/PCTools/PcFtpRemote/h;->a([BIILjava/io/OutputStream;)Z

    :goto_2
    return-void

    :cond_1
    const-string v1, "FtpConnection"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "LIST is skipping dashed arg "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0, v4}, Lcom/vivo/PCTools/PcFtpRemote/h;->getParameter(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const-string v1, "*"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v0, "550 LIST does not support wildcards\r\n"

    invoke-direct {p0, v0}, Lcom/vivo/PCTools/PcFtpRemote/h;->a(Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    new-instance v1, Ljava/io/File;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/vivo/PCTools/PcFtpRemote/h;->violatesChroot(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "450 Listing target violates chroot\r\n"

    invoke-direct {p0, v0}, Lcom/vivo/PCTools/PcFtpRemote/h;->a(Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    invoke-static {v0}, Lcom/vivo/PCTools/PcFtpRemote/h;->b(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "450 Couldn\'t list that file\r\n"

    invoke-direct {p0, v0}, Lcom/vivo/PCTools/PcFtpRemote/h;->a(Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    move-object v0, v1

    goto :goto_1
.end method

.method private a(Ljava/io/File;)Z
    .locals 7

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    if-eqz v4, :cond_0

    array-length v5, v4

    move v2, v0

    move v3, v1

    :goto_1
    if-lt v2, v5, :cond_2

    const-string v2, "FtpConnection"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Recursively deleted: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v3, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_2
    aget-object v6, v4, v2

    invoke-direct {p0, v6}, Lcom/vivo/PCTools/PcFtpRemote/h;->a(Ljava/io/File;)Z

    move-result v6

    and-int/2addr v3, v6

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    const-string v0, "FtpConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "RMD deleting file: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result v0

    goto :goto_0
.end method

.method private static a([BIILjava/io/OutputStream;)Z
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p3, :cond_0

    const-string v1, "FtpConnection"

    const-string v2, "Can\'t send via null dataOutputStream"

    invoke-static {v1, v2}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v0

    :cond_0
    if-nez p2, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    :try_start_0
    invoke-virtual {p3, p0, p1, p2}, Ljava/io/OutputStream;->write([BII)V

    invoke-virtual {p3}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "FtpConnection"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "SocketTimeoutException when sendViaDataSocket: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/SocketTimeoutException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    goto :goto_0

    :catch_1
    move-exception v1

    const-string v2, "FtpConnection"

    const-string v3, "Couldn\'t write output stream for data socket"

    invoke-static {v2, v3}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "FtpConnection"

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static b(Ljava/io/File;)Ljava/lang/String;
    .locals 6

    const/4 v0, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "FtpConnection"

    const-string v2, "makeLsString had nonexistent file"

    invoke-static {v1, v2}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v1, "*"

    invoke-virtual {v3, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "/"

    invoke-virtual {v3, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const-string v1, "FtpConnection"

    const-string v2, "Filename omitted due to disallowed character"

    invoke-static {v1, v2}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "drwxr-xr-x 1 owner group"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v0

    new-instance v4, Ljava/lang/Long;

    invoke-direct {v4, v0, v1}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v4}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    rsub-int/lit8 v0, v0, 0xd

    :goto_2
    add-int/lit8 v1, v0, -0x1

    if-gtz v0, :cond_4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v0, v4, v0

    const-wide/32 v4, -0x61075000

    cmp-long v0, v0, v4

    if-lez v0, :cond_5

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, " MMM dd HH:mm "

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    :goto_3
    new-instance v1, Ljava/sql/Date;

    invoke-virtual {p0}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    invoke-direct {v1, v4, v5}, Ljava/sql/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\r\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    const-string v0, "-rw-r--r-- 1 owner group"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_4
    const/16 v0, 0x20

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v0, v1

    goto :goto_2

    :cond_5
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, " MMM dd  yyyy "

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    goto :goto_3
.end method

.method private b(Ljava/lang/String;)V
    .locals 13

    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "USER"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/vivo/PCTools/PcFtpRemote/h;->getParameter(Ljava/lang/String;Z)Ljava/lang/String;

    const-string v0, "331 Send password\r\n"

    invoke-direct {p0, v0}, Lcom/vivo/PCTools/PcFtpRemote/h;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v1, "PASS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/vivo/PCTools/PcFtpRemote/h;->getParameter(Ljava/lang/String;Z)Ljava/lang/String;

    const-string v0, "230 Access granted\r\n"

    invoke-direct {p0, v0}, Lcom/vivo/PCTools/PcFtpRemote/h;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v1, "QUIT"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v0, "FtpConnection"

    const-string v1, "QUIT"

    invoke-static {v0, v1}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "221 Goodbye\r\n"

    invoke-direct {p0, v0}, Lcom/vivo/PCTools/PcFtpRemote/h;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const-string v1, "TYPE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    const-string v0, "FtpConnection"

    const-string v1, "TYPE executing"

    invoke-static {v0, v1}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/vivo/PCTools/PcFtpRemote/h;->getParameter(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "I"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "L 8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vivo/PCTools/PcFtpRemote/h;->h:Z

    const-string v0, "200 Binary type set\r\n"

    :goto_1
    invoke-direct {p0, v0}, Lcom/vivo/PCTools/PcFtpRemote/h;->a(Ljava/lang/String;)V

    const-string v0, "FtpConnection"

    const-string v1, "TYPE complete"

    invoke-static {v0, v1}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    const-string v1, "A"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "A N"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_7
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vivo/PCTools/PcFtpRemote/h;->h:Z

    const-string v0, "200 ASCII type set\r\n"

    goto :goto_1

    :cond_8
    const-string v0, "503 Malformed TYPE command\r\n"

    goto :goto_1

    :cond_9
    const-string v1, "OPTS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/vivo/PCTools/PcFtpRemote/h;->getParameter(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    if-nez v1, :cond_a

    const-string v0, "550 Need argument to OPTS\r\n"

    const-string v1, "FtpConnection"

    const-string v2, "Couldn\'t understand empty OPTS command"

    invoke-static {v1, v2}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    if-eqz v0, :cond_e

    invoke-direct {p0, v0}, Lcom/vivo/PCTools/PcFtpRemote/h;->a(Ljava/lang/String;)V

    const-string v0, "FtpConnection"

    const-string v1, "Template log message"

    invoke-static {v0, v1}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_a
    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x2

    if-eq v2, v3, :cond_b

    const-string v0, "550 Malformed OPTS command\r\n"

    const-string v1, "FtpConnection"

    const-string v2, "Couldn\'t parse OPTS command"

    invoke-static {v1, v2}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_b
    const/4 v2, 0x0

    aget-object v2, v1, v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aget-object v1, v1, v3

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string v3, "UTF8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    const-string v2, "ON"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    const-string v1, "FtpConnection"

    const-string v2, "Got OPTS UTF8 ON"

    invoke-static {v1, v2}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_c
    const-string v1, "FtpConnection"

    const-string v2, "Ignoring OPTS UTF8 for something besides ON"

    invoke-static {v1, v2}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_d
    const-string v0, "FtpConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Unrecognized OPTS option: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "502 Unrecognized option\r\n"

    goto :goto_2

    :cond_e
    const-string v0, "504 OPTS accepted\r\n"

    invoke-direct {p0, v0}, Lcom/vivo/PCTools/PcFtpRemote/h;->a(Ljava/lang/String;)V

    const-string v0, "FtpConnection"

    const-string v1, "Handled OPTS ok"

    invoke-static {v0, v1}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_f
    const-string v1, "SYST"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    const-string v0, "FtpConnection"

    const-string v1, "SYST executing"

    invoke-static {v0, v1}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "215 UNIX Type: L8\r\n"

    invoke-direct {p0, v0}, Lcom/vivo/PCTools/PcFtpRemote/h;->a(Ljava/lang/String;)V

    const-string v0, "FtpConnection"

    const-string v1, "SYST finished"

    invoke-static {v0, v1}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_10
    const-string v1, "NOOP"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    const-string v0, "200 NOOP OK\r\n"

    invoke-direct {p0, v0}, Lcom/vivo/PCTools/PcFtpRemote/h;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_11
    const-string v1, "CWD"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_14

    const-string v0, "FtpConnection"

    const-string v1, "CWD executing"

    invoke-static {v0, v1}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/vivo/PCTools/PcFtpRemote/h;->getParameter(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "FtpConnection"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "WorkingDir ---------------->"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/vivo/PCTools/PcFtpRemote/h;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "FtpConnection"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Param ---------------->"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/vivo/PCTools/PcFtpRemote/h;->a:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v0}, Lcom/vivo/PCTools/PcFtpRemote/h;->a(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/vivo/PCTools/PcFtpRemote/h;->violatesChroot(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_12

    const-string v0, "550 Invalid name or chroot violation\r\n"

    invoke-direct {p0, v0}, Lcom/vivo/PCTools/PcFtpRemote/h;->a(Ljava/lang/String;)V

    :goto_3
    const-string v0, "FtpConnection"

    const-string v1, "CWD complete"

    invoke-static {v0, v1}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_12
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->canExecute()Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/PCTools/PcFtpRemote/h;->a:Ljava/lang/String;

    const-string v0, "250 CWD successful\r\n"

    invoke-direct {p0, v0}, Lcom/vivo/PCTools/PcFtpRemote/h;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    const-string v0, "550 Invalid path\r\n"

    invoke-direct {p0, v0}, Lcom/vivo/PCTools/PcFtpRemote/h;->a(Ljava/lang/String;)V

    goto :goto_3

    :cond_13
    :try_start_1
    const-string v0, "550 That path is inaccessible\r\n"

    invoke-direct {p0, v0}, Lcom/vivo/PCTools/PcFtpRemote/h;->a(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :cond_14
    const-string v1, "CDUP"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_19

    const-string v0, "FtpConnection"

    const-string v1, "CDUP executing"

    invoke-static {v0, v1}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/vivo/PCTools/PcFtpRemote/h;->a:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    if-nez v1, :cond_15

    const-string v0, "550 Current dir cannot find parent\r\n"

    :goto_4
    if-eqz v0, :cond_18

    invoke-direct {p0, v0}, Lcom/vivo/PCTools/PcFtpRemote/h;->a(Ljava/lang/String;)V

    const-string v1, "FtpConnection"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "CDUP error: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_15
    invoke-virtual {p0, v1}, Lcom/vivo/PCTools/PcFtpRemote/h;->violatesChroot(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_16

    const-string v0, "550 Invalid name or chroot violation\r\n"

    goto :goto_4

    :cond_16
    :try_start_2
    invoke-virtual {v1}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v2

    if-eqz v2, :cond_17

    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/vivo/PCTools/PcFtpRemote/h;->a:Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_4

    :catch_1
    move-exception v0

    const-string v0, "550 Invalid path\r\n"

    goto :goto_4

    :cond_17
    :try_start_3
    const-string v0, "550 That path is inaccessible\r\n"
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_4

    :cond_18
    const-string v0, "200 CDUP successful\r\n"

    invoke-direct {p0, v0}, Lcom/vivo/PCTools/PcFtpRemote/h;->a(Ljava/lang/String;)V

    const-string v0, "FtpConnection"

    const-string v1, "CDUP success"

    invoke-static {v0, v1}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_19
    const-string v1, "SIZE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_20

    const-string v0, "FtpConnection"

    const-string v1, "SIZE executing"

    invoke-static {v0, v1}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/vivo/PCTools/PcFtpRemote/h;->getParameter(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    const-wide/16 v1, 0x0

    new-instance v0, Ljava/io/File;

    iget-object v5, p0, Lcom/vivo/PCTools/PcFtpRemote/h;->a:Ljava/lang/String;

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1a

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_1b

    const-string v0, "550 No directory traversal allowed in SIZE param\r\n"

    move-wide v11, v1

    move-object v2, v0

    move-wide v0, v11

    :goto_5
    if-eqz v2, :cond_1f

    invoke-direct {p0, v2}, Lcom/vivo/PCTools/PcFtpRemote/h;->a(Ljava/lang/String;)V

    :goto_6
    const-string v0, "FtpConnection"

    const-string v1, "SIZE complete"

    invoke-static {v0, v1}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1a
    invoke-static {v0, v4}, Lcom/vivo/PCTools/PcFtpRemote/h;->a(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    :cond_1b
    invoke-virtual {p0, v0}, Lcom/vivo/PCTools/PcFtpRemote/h;->violatesChroot(Ljava/io/File;)Z

    move-result v4

    if-eqz v4, :cond_1c

    const-string v0, "550 SIZE target violates chroot\r\n"

    move-wide v11, v1

    move-object v2, v0

    move-wide v0, v11

    goto :goto_5

    :cond_1c
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1d

    const-string v0, "550 Cannot get the SIZE of nonexistent object\r\n"

    move-wide v11, v1

    move-object v2, v0

    move-wide v0, v11

    goto :goto_5

    :cond_1d
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v4

    if-nez v4, :cond_1e

    const-string v0, "550 Cannot get the size of a non-file\r\n"

    move-wide v11, v1

    move-object v2, v0

    move-wide v0, v11

    goto :goto_5

    :cond_1e
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    move-object v2, v3

    goto :goto_5

    :cond_1f
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "213 "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/vivo/PCTools/PcFtpRemote/h;->a(Ljava/lang/String;)V

    goto :goto_6

    :cond_20
    const-string v1, "PWD"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_22

    const-string v0, "FtpConnection"

    const-string v1, "PWD executing"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_4
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/vivo/PCTools/PcFtpRemote/h;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FtpConnection"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "currentDir: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_21

    const-string v0, "/"

    :cond_21
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "257 \""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\"\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/vivo/PCTools/PcFtpRemote/h;->a(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    :goto_7
    const-string v0, "FtpConnection"

    const-string v1, "PWD complete"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :catch_2
    move-exception v0

    const-string v0, "FtpConnection"

    const-string v1, "PWD canonicalize"

    invoke-static {v0, v1}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    :cond_22
    const-string v1, "PORT"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2c

    iget-object v0, p0, Lcom/vivo/PCTools/PcFtpRemote/h;->e:Ljava/net/ServerSocket;

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/vivo/PCTools/PcFtpRemote/h;->e:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vivo/PCTools/PcFtpRemote/h;->e:Ljava/net/ServerSocket;

    :cond_23
    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/vivo/PCTools/PcFtpRemote/h;->getParameter(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    const-string v2, "|"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_24

    const-string v2, "::"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_24

    const-string v0, "550 No IPv6 support, reconfigure your client\r\n"

    :goto_8
    if-nez v0, :cond_2b

    const-string v0, "200 PORT OK\r\n"

    invoke-direct {p0, v0}, Lcom/vivo/PCTools/PcFtpRemote/h;->a(Ljava/lang/String;)V

    const-string v0, "FtpConnection"

    const-string v1, "PORT completed"

    invoke-static {v0, v1}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_24
    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v0, v3

    const/4 v2, 0x6

    if-eq v0, v2, :cond_25

    const-string v0, "550 Malformed PORT argument\r\n"

    goto :goto_8

    :cond_25
    const/4 v0, 0x0

    :goto_9
    array-length v2, v3

    if-lt v0, v2, :cond_26

    const/4 v0, 0x4

    new-array v4, v0, [B

    const/4 v0, 0x0

    move v2, v0

    :goto_a
    const/4 v0, 0x4

    if-lt v2, v0, :cond_29

    const/4 v0, 0x4

    aget-object v0, v3, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    shl-int/lit8 v0, v0, 0x8

    const/4 v2, 0x5

    aget-object v2, v3, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    iput v0, p0, Lcom/vivo/PCTools/PcFtpRemote/h;->g:I

    move-object v0, v1

    goto :goto_8

    :cond_26
    aget-object v2, v3, v0

    const-string v4, "[0-9]+"

    invoke-virtual {v2, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_27

    aget-object v2, v3, v0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v4, 0x3

    if-le v2, v4, :cond_28

    :cond_27
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "550 Invalid PORT argument: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v0, v3, v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    :cond_28
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_29
    :try_start_5
    aget-object v0, v3, v2

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v5, 0x80

    if-lt v0, v5, :cond_2a

    add-int/lit16 v0, v0, -0x100

    :cond_2a
    int-to-byte v0, v0

    aput-byte v0, v4, v2
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_a

    :catch_3
    move-exception v0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "550 Invalid PORT format: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v1, v3, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_8

    :cond_2b
    const-string v1, "FtpConnection"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "PORT error: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v0}, Lcom/vivo/PCTools/PcFtpRemote/h;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2c
    const-string v1, "PASV"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_31

    iget-object v0, p0, Lcom/vivo/PCTools/PcFtpRemote/h;->e:Ljava/net/ServerSocket;

    if-eqz v0, :cond_2d

    const-string v0, "FtpConnection"

    const-string v1, "PasvSocket is not null: pasvSocket.close()"

    invoke-static {v0, v1}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/PCTools/PcFtpRemote/h;->e:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vivo/PCTools/PcFtpRemote/h;->e:Ljava/net/ServerSocket;

    :cond_2d
    const-string v0, "FtpConnection"

    const-string v1, "PASV mode begin"

    invoke-static {v0, v1}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_b
    const-wide/16 v2, 0x64

    :try_start_6
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_6
    .catch Ljava/net/BindException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/net/SocketException; {:try_start_6 .. :try_end_6} :catch_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    add-int/lit8 v0, v1, 0x1

    const/16 v2, 0x32

    if-le v1, v2, :cond_2f

    :cond_2e
    :try_start_7
    iget-object v0, p0, Lcom/vivo/PCTools/PcFtpRemote/h;->b:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v0

    if-nez v0, :cond_30

    const-string v0, "502 Couldn\'t open a port\r\n"

    invoke-direct {p0, v0}, Lcom/vivo/PCTools/PcFtpRemote/h;->a(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    goto/16 :goto_0

    :catch_4
    move-exception v0

    iget-object v0, p0, Lcom/vivo/PCTools/PcFtpRemote/h;->e:Ljava/net/ServerSocket;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vivo/PCTools/PcFtpRemote/h;->e:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vivo/PCTools/PcFtpRemote/h;->e:Ljava/net/ServerSocket;

    goto/16 :goto_0

    :cond_2f
    :try_start_8
    new-instance v1, Ljava/net/ServerSocket;

    const/16 v2, 0x22b8

    const/16 v3, 0x32

    invoke-direct {v1, v2, v3}, Ljava/net/ServerSocket;-><init>(II)V

    iput-object v1, p0, Lcom/vivo/PCTools/PcFtpRemote/h;->e:Ljava/net/ServerSocket;

    const/4 v1, 0x0

    const-string v2, "FtpConnection"

    const-string v3, "PasvSocket: New Pasv ServerSocket! Data Port: 8888"

    invoke-static {v2, v3}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/net/BindException; {:try_start_8 .. :try_end_8} :catch_18
    .catch Ljava/net/SocketException; {:try_start_8 .. :try_end_8} :catch_17
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    :goto_c
    if-eqz v1, :cond_2e

    move v1, v0

    goto :goto_b

    :catch_5
    move-exception v0

    move v0, v1

    :goto_d
    const/4 v1, 0x1

    goto :goto_c

    :catch_6
    move-exception v0

    move v0, v1

    :goto_e
    const/4 v1, 0x1

    goto :goto_c

    :cond_30
    :try_start_9
    const-string v1, "FtpConnection"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "PASV sending IP: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "227 Entering Passive Mode ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x2e

    const/16 v3, 0x2c

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x22

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0xb8

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ").\r\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/vivo/PCTools/PcFtpRemote/h;->a(Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    goto/16 :goto_0

    :cond_31
    const-string v1, "RETR"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_44

    const-string v0, "FtpConnection"

    const-string v1, "RETR executing"

    invoke-static {v0, v1}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/vivo/PCTools/PcFtpRemote/h;->getParameter(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/vivo/PCTools/PcFtpRemote/h;->e:Ljava/net/ServerSocket;

    if-eqz v0, :cond_34

    iget-object v0, p0, Lcom/vivo/PCTools/PcFtpRemote/h;->e:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v0

    :goto_f
    const/16 v3, 0x1770

    invoke-virtual {v0, v3}, Ljava/net/Socket;->setSoTimeout(I)V

    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/vivo/PCTools/PcFtpRemote/h;->a:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3, v2}, Lcom/vivo/PCTools/PcFtpRemote/h;->a(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    const-string v2, "FtpConnection"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Download file dir = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lcom/vivo/PCTools/PcFtpRemote/h;->violatesChroot(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_35

    const-string v1, "550 Invalid name or chroot violation\r\n"

    :cond_32
    :goto_10
    if-eqz v1, :cond_42

    :try_start_a
    invoke-direct {p0, v1}, Lcom/vivo/PCTools/PcFtpRemote/h;->a(Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_9
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :goto_11
    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    iget-object v0, p0, Lcom/vivo/PCTools/PcFtpRemote/h;->e:Ljava/net/ServerSocket;

    if-eqz v0, :cond_33

    iget-object v0, p0, Lcom/vivo/PCTools/PcFtpRemote/h;->e:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vivo/PCTools/PcFtpRemote/h;->e:Ljava/net/ServerSocket;

    :cond_33
    :goto_12
    const-string v0, "FtpConnection"

    const-string v1, "RETR done"

    invoke-static {v0, v1}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_34
    new-instance v0, Ljava/net/Socket;

    iget-object v3, p0, Lcom/vivo/PCTools/PcFtpRemote/h;->f:Ljava/lang/String;

    iget v4, p0, Lcom/vivo/PCTools/PcFtpRemote/h;->g:I

    invoke-direct {v0, v3, v4}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V

    goto :goto_f

    :cond_35
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_39

    const-string v1, "FtpConnection"

    const-string v2, "Ignoring RETR for directory"

    invoke-static {v1, v2}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "550 Can\'t RETR a directory\r\n"

    :cond_36
    const/4 v2, 0x0

    :try_start_b
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_b
    .catch Ljava/io/FileNotFoundException; {:try_start_b .. :try_end_b} :catch_16
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_8
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    const v2, 0x19000

    :try_start_c
    new-array v2, v2, [B

    const-string v3, "150 Sending file\r\n"

    invoke-direct {p0, v3}, Lcom/vivo/PCTools/PcFtpRemote/h;->a(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/vivo/PCTools/PcFtpRemote/h;->h:Z

    if-eqz v3, :cond_3c

    const-string v3, "FtpConnection"

    const-string v4, "Transferring in binary mode"

    invoke-static {v3, v4}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V

    :cond_37
    invoke-virtual {v5, v2}, Ljava/io/FileInputStream;->read([B)I
    :try_end_c
    .catch Ljava/io/FileNotFoundException; {:try_start_c .. :try_end_c} :catch_7
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_15
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_3b

    :cond_38
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V

    goto :goto_10

    :cond_39
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_3a

    const-string v1, "FtpConnection"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Can\'t RETR nonexistent file: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "550 File does not exist\r\n"

    goto :goto_10

    :cond_3a
    invoke-virtual {v3}, Ljava/io/File;->canRead()Z

    move-result v2

    if-nez v2, :cond_36

    const-string v1, "FtpConnection"

    const-string v2, "Failed RETR permission (canRead() is false)"

    invoke-static {v1, v2}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "550 No read permissions\r\n"

    goto/16 :goto_10

    :cond_3b
    const/4 v4, 0x0

    :try_start_d
    invoke-virtual {v0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v6

    invoke-static {v2, v4, v3, v6}, Lcom/vivo/PCTools/PcFtpRemote/h;->a([BIILjava/io/OutputStream;)Z

    move-result v3

    if-nez v3, :cond_37

    const-string v1, "426 Data socket error\r\n"
    :try_end_d
    .catch Ljava/io/FileNotFoundException; {:try_start_d .. :try_end_d} :catch_7
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_15
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V

    goto/16 :goto_10

    :cond_3c
    :try_start_e
    const-string v3, "FtpConnection"

    const-string v4, "Transferring in ASCII mode"

    invoke-static {v3, v4}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V

    :goto_13
    const/4 v3, 0x0

    move v6, v3

    :goto_14
    invoke-virtual {v5, v2}, Ljava/io/FileInputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_38

    const/4 v7, 0x0

    const/4 v3, 0x2

    new-array v8, v3, [B

    fill-array-data v8, :array_0

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([B)V

    const-string v2, "GBK"

    invoke-virtual {v3, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    array-length v9, v4

    const/4 v3, 0x0

    move v2, v7

    :goto_15
    if-lt v3, v9, :cond_3d

    sub-int/2addr v3, v2

    invoke-virtual {v0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v6

    invoke-static {v4, v2, v3, v6}, Lcom/vivo/PCTools/PcFtpRemote/h;->a([BIILjava/io/OutputStream;)Z

    add-int/lit8 v2, v9, -0x1

    aget-byte v2, v4, v2

    const/16 v3, 0xd

    if-ne v2, v3, :cond_7d

    const/4 v2, 0x1

    move v6, v2

    move-object v2, v4

    goto :goto_14

    :cond_3d
    aget-byte v7, v4, v3

    const/16 v10, 0xa

    if-ne v7, v10, :cond_3f

    sub-int v7, v3, v2

    invoke-virtual {v0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v10

    invoke-static {v4, v2, v7, v10}, Lcom/vivo/PCTools/PcFtpRemote/h;->a([BIILjava/io/OutputStream;)Z

    if-nez v3, :cond_40

    if-nez v6, :cond_3e

    const/4 v2, 0x0

    const/4 v7, 0x1

    invoke-virtual {v0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v10

    invoke-static {v8, v2, v7, v10}, Lcom/vivo/PCTools/PcFtpRemote/h;->a([BIILjava/io/OutputStream;)Z

    :cond_3e
    :goto_16
    move v2, v3

    :cond_3f
    add-int/lit8 v3, v3, 0x1

    goto :goto_15

    :cond_40
    add-int/lit8 v2, v3, -0x1

    aget-byte v2, v4, v2

    const/16 v7, 0xd

    if-eq v2, v7, :cond_3e

    const/4 v2, 0x0

    const/4 v7, 0x1

    invoke-virtual {v0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v10

    invoke-static {v8, v2, v7, v10}, Lcom/vivo/PCTools/PcFtpRemote/h;->a([BIILjava/io/OutputStream;)Z
    :try_end_e
    .catch Ljava/io/FileNotFoundException; {:try_start_e .. :try_end_e} :catch_7
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_15
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    goto :goto_16

    :catch_7
    move-exception v1

    move-object v1, v5

    :goto_17
    :try_start_f
    const-string v2, "550 File not found\r\n"
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_6

    if-eqz v1, :cond_7c

    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    move-object v1, v2

    goto/16 :goto_10

    :catch_8
    move-exception v1

    move-object v5, v2

    :goto_18
    const-string v1, "425 Network error\r\n"

    if-eqz v5, :cond_32

    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V

    goto/16 :goto_10

    :catchall_0
    move-exception v0

    move-object v5, v2

    :goto_19
    if-eqz v5, :cond_41

    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V

    :cond_41
    throw v0

    :cond_42
    :try_start_10
    const-string v1, "226 Transmission finished\r\n"

    invoke-direct {p0, v1}, Lcom/vivo/PCTools/PcFtpRemote/h;->a(Ljava/lang/String;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_9
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    goto/16 :goto_11

    :catch_9
    move-exception v1

    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    iget-object v0, p0, Lcom/vivo/PCTools/PcFtpRemote/h;->e:Ljava/net/ServerSocket;

    if-eqz v0, :cond_33

    iget-object v0, p0, Lcom/vivo/PCTools/PcFtpRemote/h;->e:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vivo/PCTools/PcFtpRemote/h;->e:Ljava/net/ServerSocket;

    goto/16 :goto_12

    :catchall_1
    move-exception v1

    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    iget-object v0, p0, Lcom/vivo/PCTools/PcFtpRemote/h;->e:Ljava/net/ServerSocket;

    if-eqz v0, :cond_43

    iget-object v0, p0, Lcom/vivo/PCTools/PcFtpRemote/h;->e:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vivo/PCTools/PcFtpRemote/h;->e:Ljava/net/ServerSocket;

    :cond_43
    throw v1

    :cond_44
    const-string v1, "STOR"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_57

    iget-object v0, p0, Lcom/vivo/PCTools/PcFtpRemote/h;->e:Ljava/net/ServerSocket;

    if-eqz v0, :cond_48

    iget-object v0, p0, Lcom/vivo/PCTools/PcFtpRemote/h;->e:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v0

    :goto_1a
    const/16 v1, 0x1770

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    const-string v1, "FtpConnection"

    const-string v2, "STOR/APPE executing"

    invoke-static {v1, v2}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lcom/vivo/PCTools/PcFtpRemote/h;->getParameter(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/vivo/PCTools/PcFtpRemote/h;->a:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v1}, Lcom/vivo/PCTools/PcFtpRemote/h;->a(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v6

    const/4 v4, 0x0

    const/4 v2, 0x0

    :try_start_11
    invoke-virtual {p0, v6}, Lcom/vivo/PCTools/PcFtpRemote/h;->violatesChroot(Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_49

    const-string v1, "550 Invalid name or chroot violation\r\n"

    :goto_1b
    if-eqz v1, :cond_53

    const-string v3, "FtpConnection"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "STOR error: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v1}, Lcom/vivo/PCTools/PcFtpRemote/h;->a(Ljava/lang/String;)V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_e
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    :goto_1c
    if-eqz v0, :cond_45

    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    :cond_45
    if-eqz v2, :cond_46

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    :cond_46
    iget-object v0, p0, Lcom/vivo/PCTools/PcFtpRemote/h;->e:Ljava/net/ServerSocket;

    if-eqz v0, :cond_47

    iget-object v0, p0, Lcom/vivo/PCTools/PcFtpRemote/h;->e:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vivo/PCTools/PcFtpRemote/h;->e:Ljava/net/ServerSocket;

    :cond_47
    :goto_1d
    const-string v0, "FtpConnection"

    const-string v1, "STOR finished"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_48
    new-instance v0, Ljava/net/Socket;

    iget-object v1, p0, Lcom/vivo/PCTools/PcFtpRemote/h;->f:Ljava/lang/String;

    iget v2, p0, Lcom/vivo/PCTools/PcFtpRemote/h;->g:I

    invoke-direct {v0, v1, v2}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V

    goto :goto_1a

    :cond_49
    :try_start_12
    invoke-virtual {v6}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_4a

    const-string v1, "451 Can\'t overwrite a directory\r\n"
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_e
    .catchall {:try_start_12 .. :try_end_12} :catchall_2

    goto :goto_1b

    :cond_4a
    :try_start_13
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_4b

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    move-result v3

    if-nez v3, :cond_4b

    const-string v1, "451 Couldn\'t truncate file\r\n"

    goto :goto_1b

    :cond_4b
    new-instance v3, Ljava/io/FileOutputStream;

    const/4 v5, 0x0

    invoke-direct {v3, v6, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_13
    .catch Ljava/io/FileNotFoundException; {:try_start_13 .. :try_end_13} :catch_b
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_e
    .catchall {:try_start_13 .. :try_end_13} :catchall_2

    :try_start_14
    const-string v1, "FtpConnection"

    const-string v2, "Data socket ready"

    invoke-static {v1, v2}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "150 Data socket ready\r\n"

    invoke-direct {p0, v1}, Lcom/vivo/PCTools/PcFtpRemote/h;->a(Ljava/lang/String;)V

    const v1, 0x19000

    new-array v1, v1, [B

    iget-boolean v2, p0, Lcom/vivo/PCTools/PcFtpRemote/h;->h:Z

    if-eqz v2, :cond_4c

    const-string v2, "FtpConnection"

    const-string v5, "Mode is binary"

    invoke-static {v2, v5}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1e
    invoke-static {v1, v0}, Lcom/vivo/PCTools/PcFtpRemote/h;->a([BLjava/net/Socket;)I
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_d
    .catchall {:try_start_14 .. :try_end_14} :catchall_4

    move-result v2

    packed-switch v2, :pswitch_data_0

    :try_start_15
    iget-boolean v5, p0, Lcom/vivo/PCTools/PcFtpRemote/h;->h:Z

    if-eqz v5, :cond_4f

    const/4 v5, 0x0

    invoke-virtual {v3, v1, v5, v2}, Ljava/io/FileOutputStream;->write([BII)V

    :goto_1f
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_a
    .catchall {:try_start_15 .. :try_end_15} :catchall_4

    goto :goto_1e

    :catch_a
    move-exception v1

    :try_start_16
    const-string v2, "451 File IO problem. Device might be full.\r\n"

    const-string v4, "FtpConnection"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "Exception while storing: "

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/vivo/PCTools/util/b;->logW(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_d
    .catchall {:try_start_16 .. :try_end_16} :catchall_4

    move-object v1, v2

    move-object v2, v3

    goto/16 :goto_1b

    :catch_b
    move-exception v3

    :try_start_17
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "451 Couldn\'t open file \""

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\" aka \""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\" for writing\r\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_c
    .catchall {:try_start_17 .. :try_end_17} :catchall_2

    move-result-object v1

    goto/16 :goto_1b

    :catch_c
    move-exception v1

    :try_start_18
    const-string v1, "451 Couldn\'t open file, nested exception\r\n"
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_e
    .catchall {:try_start_18 .. :try_end_18} :catchall_2

    goto/16 :goto_1b

    :cond_4c
    :try_start_19
    const-string v2, "FtpConnection"

    const-string v5, "Mode is ascii"

    invoke-static {v2, v5}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_d
    .catchall {:try_start_19 .. :try_end_19} :catchall_4

    goto :goto_1e

    :catch_d
    move-exception v1

    move-object v2, v3

    :goto_20
    :try_start_1a
    const-string v3, "FtpConnection"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "IOException: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/vivo/PCTools/util/b;->logW(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_2

    if-eqz v0, :cond_4d

    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    :cond_4d
    if-eqz v2, :cond_4e

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    :cond_4e
    iget-object v0, p0, Lcom/vivo/PCTools/PcFtpRemote/h;->e:Ljava/net/ServerSocket;

    if-eqz v0, :cond_47

    iget-object v0, p0, Lcom/vivo/PCTools/PcFtpRemote/h;->e:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vivo/PCTools/PcFtpRemote/h;->e:Ljava/net/ServerSocket;

    goto/16 :goto_1d

    :pswitch_0
    :try_start_1b
    const-string v1, "FtpConnection"

    const-string v2, "Returned from final read"

    invoke-static {v1, v2}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v3

    move-object v1, v4

    goto/16 :goto_1b

    :pswitch_1
    const-string v1, "426 Couldn\'t receive data\r\n"

    move-object v2, v3

    goto/16 :goto_1b

    :pswitch_2
    const-string v1, "425 Could not connect data socket\r\n"
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1b} :catch_d
    .catchall {:try_start_1b .. :try_end_1b} :catchall_4

    move-object v2, v3

    goto/16 :goto_1b

    :cond_4f
    const/4 v5, 0x0

    :try_start_1c
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([B)V

    const-string v1, "GBK"

    invoke-virtual {v2, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    array-length v7, v2

    const/4 v1, 0x0

    move v11, v1

    move v1, v5

    move v5, v11

    :goto_21
    if-lt v5, v7, :cond_51

    if-ge v1, v7, :cond_50

    sub-int/2addr v5, v1

    invoke-virtual {v3, v2, v1, v5}, Ljava/io/FileOutputStream;->write([BII)V

    :cond_50
    move-object v1, v2

    goto/16 :goto_1f

    :cond_51
    aget-byte v8, v2, v5

    const/16 v9, 0xd

    if-ne v8, v9, :cond_52

    sub-int v8, v5, v1

    invoke-virtual {v3, v2, v1, v8}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1c} :catch_a
    .catchall {:try_start_1c .. :try_end_1c} :catchall_4

    add-int/lit8 v1, v5, 0x1

    :cond_52
    add-int/lit8 v5, v5, 0x1

    goto :goto_21

    :cond_53
    :try_start_1d
    const-string v1, "226 Transmission complete\r\n"

    invoke-direct {p0, v1}, Lcom/vivo/PCTools/PcFtpRemote/h;->a(Ljava/lang/String;)V

    invoke-direct {p0, v6}, Lcom/vivo/PCTools/PcFtpRemote/h;->c(Ljava/io/File;)V
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_1d} :catch_e
    .catchall {:try_start_1d .. :try_end_1d} :catchall_2

    goto/16 :goto_1c

    :catch_e
    move-exception v1

    goto :goto_20

    :catchall_2
    move-exception v1

    :goto_22
    if-eqz v0, :cond_54

    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    :cond_54
    if-eqz v2, :cond_55

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    :cond_55
    iget-object v0, p0, Lcom/vivo/PCTools/PcFtpRemote/h;->e:Ljava/net/ServerSocket;

    if-eqz v0, :cond_56

    iget-object v0, p0, Lcom/vivo/PCTools/PcFtpRemote/h;->e:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vivo/PCTools/PcFtpRemote/h;->e:Ljava/net/ServerSocket;

    :cond_56
    throw v1

    :cond_57
    const-string v1, "LIST"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5e

    iget-object v0, p0, Lcom/vivo/PCTools/PcFtpRemote/h;->e:Ljava/net/ServerSocket;

    if-eqz v0, :cond_59

    iget-object v0, p0, Lcom/vivo/PCTools/PcFtpRemote/h;->e:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v0

    :goto_23
    const/16 v1, 0x1770

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    const-string v1, "150 Opening ASCII mode data connection\r\n"

    invoke-direct {p0, v1}, Lcom/vivo/PCTools/PcFtpRemote/h;->a(Ljava/lang/String;)V

    :try_start_1e
    invoke-direct {p0, p1, v0}, Lcom/vivo/PCTools/PcFtpRemote/h;->a(Ljava/lang/String;Ljava/net/Socket;)V

    const-string v1, "226 transfer complete\r\n"

    invoke-direct {p0, v1}, Lcom/vivo/PCTools/PcFtpRemote/h;->a(Ljava/lang/String;)V
    :try_end_1e
    .catch Ljava/net/SocketTimeoutException; {:try_start_1e .. :try_end_1e} :catch_f
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_1e} :catch_11
    .catchall {:try_start_1e .. :try_end_1e} :catchall_3

    if-eqz v0, :cond_58

    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    :cond_58
    iget-object v0, p0, Lcom/vivo/PCTools/PcFtpRemote/h;->e:Ljava/net/ServerSocket;

    if-eqz v0, :cond_0

    :try_start_1f
    iget-object v0, p0, Lcom/vivo/PCTools/PcFtpRemote/h;->e:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->close()V
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_1f} :catch_14

    :goto_24
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vivo/PCTools/PcFtpRemote/h;->e:Ljava/net/ServerSocket;

    goto/16 :goto_0

    :cond_59
    new-instance v0, Ljava/net/Socket;

    iget-object v1, p0, Lcom/vivo/PCTools/PcFtpRemote/h;->f:Ljava/lang/String;

    iget v2, p0, Lcom/vivo/PCTools/PcFtpRemote/h;->g:I

    invoke-direct {v0, v1, v2}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V

    const-string v1, "FtpConnection"

    const-string v2, "dataSocket: New Data Socket!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_23

    :catch_f
    move-exception v1

    :try_start_20
    const-string v2, "FtpConnection"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "LIST SocketTimeoutException: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/SocketTimeoutException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/vivo/PCTools/util/b;->logW(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_3

    if-eqz v0, :cond_5a

    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    :cond_5a
    iget-object v0, p0, Lcom/vivo/PCTools/PcFtpRemote/h;->e:Ljava/net/ServerSocket;

    if-eqz v0, :cond_0

    :try_start_21
    iget-object v0, p0, Lcom/vivo/PCTools/PcFtpRemote/h;->e:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->close()V
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_21} :catch_10

    :goto_25
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vivo/PCTools/PcFtpRemote/h;->e:Ljava/net/ServerSocket;

    goto/16 :goto_0

    :catch_10
    move-exception v0

    const-string v1, "FtpConnection"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/vivo/PCTools/util/b;->logW(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_25

    :catch_11
    move-exception v1

    :try_start_22
    const-string v2, "FtpConnection"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "LIST IOException: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/vivo/PCTools/util/b;->logW(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_3

    if-eqz v0, :cond_5b

    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    :cond_5b
    iget-object v0, p0, Lcom/vivo/PCTools/PcFtpRemote/h;->e:Ljava/net/ServerSocket;

    if-eqz v0, :cond_0

    :try_start_23
    iget-object v0, p0, Lcom/vivo/PCTools/PcFtpRemote/h;->e:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->close()V
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_23} :catch_12

    :goto_26
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vivo/PCTools/PcFtpRemote/h;->e:Ljava/net/ServerSocket;

    goto/16 :goto_0

    :catch_12
    move-exception v0

    const-string v1, "FtpConnection"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/vivo/PCTools/util/b;->logW(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_26

    :catchall_3
    move-exception v1

    if-eqz v0, :cond_5c

    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    :cond_5c
    iget-object v0, p0, Lcom/vivo/PCTools/PcFtpRemote/h;->e:Ljava/net/ServerSocket;

    if-eqz v0, :cond_5d

    :try_start_24
    iget-object v0, p0, Lcom/vivo/PCTools/PcFtpRemote/h;->e:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->close()V
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_24} :catch_13

    :goto_27
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vivo/PCTools/PcFtpRemote/h;->e:Ljava/net/ServerSocket;

    :cond_5d
    throw v1

    :catch_13
    move-exception v0

    const-string v2, "FtpConnection"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/vivo/PCTools/util/b;->logW(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_27

    :catch_14
    move-exception v0

    const-string v1, "FtpConnection"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/vivo/PCTools/util/b;->logW(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_24

    :cond_5e
    const-string v1, "DELE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_63

    const-string v0, "FtpConnection"

    const-string v1, "DELE executing"

    invoke-static {v0, v1}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/vivo/PCTools/PcFtpRemote/h;->getParameter(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/vivo/PCTools/PcFtpRemote/h;->a:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v0}, Lcom/vivo/PCTools/PcFtpRemote/h;->a(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    const/4 v0, 0x0

    invoke-virtual {p0, v1}, Lcom/vivo/PCTools/PcFtpRemote/h;->violatesChroot(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_60

    const-string v0, "550 Invalid name or chroot violation\r\n"

    :cond_5f
    :goto_28
    if-eqz v0, :cond_62

    invoke-direct {p0, v0}, Lcom/vivo/PCTools/PcFtpRemote/h;->a(Ljava/lang/String;)V

    const-string v1, "FtpConnection"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "DELE failed: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V

    :goto_29
    const-string v0, "FtpConnection"

    const-string v1, "DELE finished"

    invoke-static {v0, v1}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_60
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_61

    const-string v0, "550 Can\'t DELE a directory\r\n"

    goto :goto_28

    :cond_61
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v2

    if-nez v2, :cond_5f

    const-string v0, "450 Error deleting file\r\n"

    goto :goto_28

    :cond_62
    const-string v0, "250 File successfully deleted\r\n"

    invoke-direct {p0, v0}, Lcom/vivo/PCTools/PcFtpRemote/h;->a(Ljava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    iget-object v2, p0, Lcom/vivo/PCTools/PcFtpRemote/h;->l:Landroid/content/Context;

    invoke-static {v0, v2, v1}, Lcom/vivo/PCTools/b/a;->RemoveAllForPaths([Ljava/lang/String;Landroid/content/Context;Ljava/io/File;)V

    goto :goto_29

    :cond_63
    const-string v1, "MKD"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_69

    const-string v0, "FtpConnection"

    const-string v1, "MKD executing"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/vivo/PCTools/PcFtpRemote/h;->getParameter(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_65

    const-string v0, "550 Invalid name\r\n"

    :cond_64
    :goto_2a
    if-eqz v0, :cond_68

    invoke-direct {p0, v0}, Lcom/vivo/PCTools/PcFtpRemote/h;->a(Ljava/lang/String;)V

    const-string v1, "FtpConnection"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "MKD error: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2b
    const-string v0, "FtpConnection"

    const-string v1, "MKD complete"

    invoke-static {v0, v1}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_65
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/vivo/PCTools/PcFtpRemote/h;->a:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v1}, Lcom/vivo/PCTools/PcFtpRemote/h;->a(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/vivo/PCTools/PcFtpRemote/h;->violatesChroot(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_66

    const-string v0, "550 Invalid name or chroot violation\r\n"

    goto :goto_2a

    :cond_66
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_67

    const-string v0, "550 Already exists\r\n"

    goto :goto_2a

    :cond_67
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    move-result v1

    if-nez v1, :cond_64

    const-string v0, "550 Error making directory (permissions?)\r\n"

    goto :goto_2a

    :cond_68
    const-string v0, "250 Directory created\r\n"

    invoke-direct {p0, v0}, Lcom/vivo/PCTools/PcFtpRemote/h;->a(Ljava/lang/String;)V

    goto :goto_2b

    :cond_69
    const-string v1, "RNFR"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6d

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/vivo/PCTools/PcFtpRemote/h;->getParameter(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/vivo/PCTools/PcFtpRemote/h;->a:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v1}, Lcom/vivo/PCTools/PcFtpRemote/h;->a(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/vivo/PCTools/PcFtpRemote/h;->violatesChroot(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_6b

    const-string v0, "550 Invalid name or chroot violation\r\n"

    :cond_6a
    :goto_2c
    if-eqz v0, :cond_6c

    invoke-direct {p0, v0}, Lcom/vivo/PCTools/PcFtpRemote/h;->a(Ljava/lang/String;)V

    const-string v1, "FtpConnection"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "RNFR failed: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/vivo/PCTools/PcFtpRemote/h;->setRenameFrom(Ljava/io/File;)V

    goto/16 :goto_0

    :cond_6b
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_6a

    const-string v0, "450 Cannot rename nonexistent file\r\n"

    goto :goto_2c

    :cond_6c
    const-string v0, "350 Filename noted, now send RNTO\r\n"

    invoke-direct {p0, v0}, Lcom/vivo/PCTools/PcFtpRemote/h;->a(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/vivo/PCTools/PcFtpRemote/h;->setRenameFrom(Ljava/io/File;)V

    goto/16 :goto_0

    :cond_6d
    const-string v1, "RNTO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_72

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/vivo/PCTools/PcFtpRemote/h;->getParameter(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    const-string v2, "FtpConnection"

    const-string v3, "RNTO executing\r\n"

    invoke-static {v2, v3}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "FtpConnection"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "param: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/vivo/PCTools/PcFtpRemote/h;->a:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v1}, Lcom/vivo/PCTools/PcFtpRemote/h;->a(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    const-string v2, "FtpConnection"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "RNTO parsed: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/vivo/PCTools/PcFtpRemote/h;->violatesChroot(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_6e

    const-string v0, "550 Invalid name or chroot violation\r\n"

    :goto_2d
    if-eqz v0, :cond_71

    invoke-direct {p0, v0}, Lcom/vivo/PCTools/PcFtpRemote/h;->a(Ljava/lang/String;)V

    const-string v2, "FtpConnection"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "RNFR failed: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2e
    invoke-direct {p0, v1}, Lcom/vivo/PCTools/PcFtpRemote/h;->c(Ljava/io/File;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/vivo/PCTools/PcFtpRemote/h;->setRenameFrom(Ljava/io/File;)V

    const-string v0, "FtpConnection"

    const-string v1, "RNTO finished"

    invoke-static {v0, v1}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6e
    invoke-virtual {p0}, Lcom/vivo/PCTools/PcFtpRemote/h;->getRenameFrom()Ljava/io/File;

    move-result-object v2

    if-nez v2, :cond_6f

    const-string v0, "550 Rename error, maybe RNFR not sent\r\n"

    goto :goto_2d

    :cond_6f
    invoke-virtual {v2, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v3

    if-nez v3, :cond_70

    const-string v0, "550 Error during rename operation\r\n"

    goto :goto_2d

    :cond_70
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    iget-object v4, p0, Lcom/vivo/PCTools/PcFtpRemote/h;->l:Landroid/content/Context;

    invoke-static {v3, v4, v2}, Lcom/vivo/PCTools/b/a;->RemoveAllForPaths([Ljava/lang/String;Landroid/content/Context;Ljava/io/File;)V

    goto :goto_2d

    :cond_71
    const-string v0, "250 rename successful\r\n"

    invoke-direct {p0, v0}, Lcom/vivo/PCTools/PcFtpRemote/h;->a(Ljava/lang/String;)V

    goto :goto_2e

    :cond_72
    const-string v1, "RMD"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_79

    const-string v0, "FtpConnection"

    const-string v1, "RMD executing"

    invoke-static {v0, v1}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/vivo/PCTools/PcFtpRemote/h;->getParameter(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_74

    const-string v0, "550 Invalid argument\r\n"

    :cond_73
    :goto_2f
    if-eqz v0, :cond_78

    invoke-direct {p0, v0}, Lcom/vivo/PCTools/PcFtpRemote/h;->a(Ljava/lang/String;)V

    const-string v1, "FtpConnection"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "RMD failed: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V

    :goto_30
    const-string v0, "FtpConnection"

    const-string v1, "RMD finished"

    invoke-static {v0, v1}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_74
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/vivo/PCTools/PcFtpRemote/h;->a:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v1}, Lcom/vivo/PCTools/PcFtpRemote/h;->a(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/vivo/PCTools/PcFtpRemote/h;->violatesChroot(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_75

    const-string v0, "550 Invalid name or chroot violation\r\n"

    goto :goto_2f

    :cond_75
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_76

    const-string v0, "550 Can\'t RMD a non-directory\r\n"

    goto :goto_2f

    :cond_76
    new-instance v2, Ljava/io/File;

    const-string v3, "/"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_77

    const-string v0, "550 Won\'t RMD the root directory\r\n"

    goto :goto_2f

    :cond_77
    invoke-direct {p0, v1}, Lcom/vivo/PCTools/PcFtpRemote/h;->a(Ljava/io/File;)Z

    move-result v1

    if-nez v1, :cond_73

    const-string v0, "550 Deletion error, possibly incomplete\r\n"

    goto :goto_2f

    :cond_78
    const-string v0, "250 Removed directory\r\n"

    invoke-direct {p0, v0}, Lcom/vivo/PCTools/PcFtpRemote/h;->a(Ljava/lang/String;)V

    goto :goto_30

    :cond_79
    const-string v1, "FEAT"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7a

    const-string v0, "211-Features supported\r\n"

    invoke-direct {p0, v0}, Lcom/vivo/PCTools/PcFtpRemote/h;->a(Ljava/lang/String;)V

    const-string v0, " UTF8\r\n"

    invoke-direct {p0, v0}, Lcom/vivo/PCTools/PcFtpRemote/h;->a(Ljava/lang/String;)V

    const-string v0, "211 End\r\n"

    invoke-direct {p0, v0}, Lcom/vivo/PCTools/PcFtpRemote/h;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7a
    const-string v1, "SITE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7b

    const-string v0, "FtpConnection"

    const-string v1, "Command: site"

    invoke-static {v0, v1}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "200 invalid command:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/vivo/PCTools/PcFtpRemote/h;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7b
    const-string v0, "FtpConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "---------------->Invalid Command: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "200 invalid command:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/vivo/PCTools/PcFtpRemote/h;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    :catchall_4
    move-exception v1

    move-object v2, v3

    goto/16 :goto_22

    :catchall_5
    move-exception v0

    goto/16 :goto_19

    :catchall_6
    move-exception v0

    move-object v5, v1

    goto/16 :goto_19

    :catch_15
    move-exception v1

    goto/16 :goto_18

    :catch_16
    move-exception v1

    move-object v1, v2

    goto/16 :goto_17

    :catch_17
    move-exception v1

    goto/16 :goto_e

    :catch_18
    move-exception v1

    goto/16 :goto_d

    :cond_7c
    move-object v1, v2

    goto/16 :goto_10

    :cond_7d
    move-object v2, v4

    goto/16 :goto_13

    :array_0
    .array-data 1
        0xdt
        0xat
    .end array-data

    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private c(Ljava/io/File;)V
    .locals 7

    const-string v0, "FtpConnection"

    const-string v1, " come to SacnMediaFile"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-static {p1}, Lcom/vivo/PCTools/b/a;->isImageFile(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/vivo/PCTools/PcFtpRemote/h;->l:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "date_modified"

    new-instance v4, Ljava/lang/String;

    const-string v5, "0"

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "_display_name"

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "_data"

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "_data=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lcom/vivo/PCTools/PcFtpRemote/h;->l:Landroid/content/Context;

    invoke-static {v0}, Lcom/vivo/PCTools/b/a;->scanAllMediaFile(Landroid/content/Context;)V

    return-void

    :cond_2
    invoke-static {p1}, Lcom/vivo/PCTools/b/a;->isAudioFile(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v0, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v1, "FtpConnection"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "url="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    invoke-static {p1}, Lcom/vivo/PCTools/b/a;->isVideoFile(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v0, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v1, "FtpConnection"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "url="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getSdDirectory()Ljava/lang/String;
    .locals 3

    sget-object v0, Lcom/vivo/PCTools/util/a;->i:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/vivo/PCTools/util/a;->GetBBkInternalSdDirectory()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    if-eq v0, v1, :cond_0

    const-string v0, "FtpConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getSdDirectory = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/vivo/PCTools/util/a;->GetBBkInternalSdDirectory()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/vivo/PCTools/util/a;->GetBBkInternalSdDirectory()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v0, "FtpConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getSdDirectory = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public final UpdateMedia()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/vivo/PCTools/PcFtpRemote/h;->j:I

    iget-object v0, p0, Lcom/vivo/PCTools/PcFtpRemote/h;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public final closeSocket()V
    .locals 4

    iget-object v0, p0, Lcom/vivo/PCTools/PcFtpRemote/h;->b:Ljava/net/Socket;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/vivo/PCTools/PcFtpRemote/h;->b:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "FtpConnection"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "IOException: socket "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/vivo/PCTools/util/b;->logW(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final getParameter(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 4

    if-nez p1, :cond_1

    const-string v0, ""

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    const-string v0, ""

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\s+$"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez p2, :cond_0

    const-string v1, "FtpConnection"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Parsed argument: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final getRenameFrom()Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lcom/vivo/PCTools/PcFtpRemote/h;->i:Ljava/io/File;

    return-object v0
.end method

.method public final listDirectory(Ljava/lang/StringBuilder;Ljava/io/File;)Ljava/lang/String;
    .locals 4

    invoke-virtual {p2}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "500 Internal error, listDirectory on non-directory\r\n"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "FtpConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Listing directory: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v0, "500 Couldn\'t list directory. Check config and mount status.\r\n"

    goto :goto_0

    :cond_1
    const-string v0, "FtpConnection"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Dir len "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V

    array-length v2, v1

    const/4 v0, 0x0

    :goto_1
    if-lt v0, v2, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    aget-object v3, v1, v0

    invoke-static {v3}, Lcom/vivo/PCTools/PcFtpRemote/h;->b(Ljava/io/File;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public final run()V
    .locals 5

    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    iget-object v2, p0, Lcom/vivo/PCTools/PcFtpRemote/h;->b:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    const-string v3, "GBK"

    invoke-direct {v1, v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    const/16 v2, 0x2000

    invoke-direct {v0, v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    iput-object v0, p0, Lcom/vivo/PCTools/PcFtpRemote/h;->c:Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/BufferedOutputStream;

    iget-object v1, p0, Lcom/vivo/PCTools/PcFtpRemote/h;->b:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    const/16 v2, 0x2000

    invoke-direct {v0, v1, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    iput-object v0, p0, Lcom/vivo/PCTools/PcFtpRemote/h;->d:Ljava/io/BufferedOutputStream;

    const-string v0, "220-Welcome message......\r\n"

    invoke-direct {p0, v0}, Lcom/vivo/PCTools/PcFtpRemote/h;->a(Ljava/lang/String;)V

    const-string v0, "220 Notice:last msg\r\n"

    invoke-direct {p0, v0}, Lcom/vivo/PCTools/PcFtpRemote/h;->a(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/vivo/PCTools/PcFtpRemote/h;->c:Ljava/io/BufferedReader;

    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-direct {p0, v0}, Lcom/vivo/PCTools/PcFtpRemote/h;->b(Ljava/lang/String;)V

    const-string v1, "QUIT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/vivo/PCTools/PcFtpRemote/h;->c:Ljava/io/BufferedReader;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/vivo/PCTools/PcFtpRemote/h;->c:Ljava/io/BufferedReader;

    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vivo/PCTools/PcFtpRemote/h;->c:Ljava/io/BufferedReader;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_e

    :cond_2
    :goto_0
    :try_start_2
    iget-object v0, p0, Lcom/vivo/PCTools/PcFtpRemote/h;->d:Ljava/io/BufferedOutputStream;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/vivo/PCTools/PcFtpRemote/h;->d:Ljava/io/BufferedOutputStream;

    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vivo/PCTools/PcFtpRemote/h;->d:Ljava/io/BufferedOutputStream;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_f

    :cond_3
    :goto_1
    :try_start_3
    iget-object v0, p0, Lcom/vivo/PCTools/PcFtpRemote/h;->e:Ljava/net/ServerSocket;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/vivo/PCTools/PcFtpRemote/h;->e:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vivo/PCTools/PcFtpRemote/h;->e:Ljava/net/ServerSocket;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_10

    :cond_4
    :goto_2
    :try_start_4
    iget-object v0, p0, Lcom/vivo/PCTools/PcFtpRemote/h;->b:Ljava/net/Socket;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/vivo/PCTools/PcFtpRemote/h;->b:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vivo/PCTools/PcFtpRemote/h;->b:Ljava/net/Socket;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_11

    :cond_5
    :goto_3
    return-void

    :catch_0
    move-exception v0

    :try_start_5
    const-string v1, "FtpConnection"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "SocketException: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/SocketException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    iget-object v0, p0, Lcom/vivo/PCTools/PcFtpRemote/h;->c:Ljava/io/BufferedReader;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/vivo/PCTools/PcFtpRemote/h;->c:Ljava/io/BufferedReader;

    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vivo/PCTools/PcFtpRemote/h;->c:Ljava/io/BufferedReader;
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    :cond_6
    :goto_4
    :try_start_7
    iget-object v0, p0, Lcom/vivo/PCTools/PcFtpRemote/h;->d:Ljava/io/BufferedOutputStream;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/vivo/PCTools/PcFtpRemote/h;->d:Ljava/io/BufferedOutputStream;

    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vivo/PCTools/PcFtpRemote/h;->d:Ljava/io/BufferedOutputStream;
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    :cond_7
    :goto_5
    :try_start_8
    iget-object v0, p0, Lcom/vivo/PCTools/PcFtpRemote/h;->e:Ljava/net/ServerSocket;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/vivo/PCTools/PcFtpRemote/h;->e:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vivo/PCTools/PcFtpRemote/h;->e:Ljava/net/ServerSocket;
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    :cond_8
    :goto_6
    :try_start_9
    iget-object v0, p0, Lcom/vivo/PCTools/PcFtpRemote/h;->b:Ljava/net/Socket;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/vivo/PCTools/PcFtpRemote/h;->b:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vivo/PCTools/PcFtpRemote/h;->b:Ljava/net/Socket;
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    const-string v1, "FtpConnection"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "socket exception: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :catch_2
    move-exception v0

    const-string v1, "FtpConnection"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "reader exception: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :catch_3
    move-exception v0

    const-string v1, "FtpConnection"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "writer exception: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :catch_4
    move-exception v0

    const-string v1, "FtpConnection"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "pasvSocket exception: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    :catch_5
    move-exception v0

    :try_start_a
    const-string v1, "FtpConnection"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "IOException: Start Ftp connection error!"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :try_start_b
    iget-object v0, p0, Lcom/vivo/PCTools/PcFtpRemote/h;->c:Ljava/io/BufferedReader;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/vivo/PCTools/PcFtpRemote/h;->c:Ljava/io/BufferedReader;

    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vivo/PCTools/PcFtpRemote/h;->c:Ljava/io/BufferedReader;
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_7

    :cond_9
    :goto_7
    :try_start_c
    iget-object v0, p0, Lcom/vivo/PCTools/PcFtpRemote/h;->d:Ljava/io/BufferedOutputStream;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/vivo/PCTools/PcFtpRemote/h;->d:Ljava/io/BufferedOutputStream;

    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vivo/PCTools/PcFtpRemote/h;->d:Ljava/io/BufferedOutputStream;
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_8

    :cond_a
    :goto_8
    :try_start_d
    iget-object v0, p0, Lcom/vivo/PCTools/PcFtpRemote/h;->e:Ljava/net/ServerSocket;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/vivo/PCTools/PcFtpRemote/h;->e:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vivo/PCTools/PcFtpRemote/h;->e:Ljava/net/ServerSocket;
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_9

    :cond_b
    :goto_9
    :try_start_e
    iget-object v0, p0, Lcom/vivo/PCTools/PcFtpRemote/h;->b:Ljava/net/Socket;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/vivo/PCTools/PcFtpRemote/h;->b:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vivo/PCTools/PcFtpRemote/h;->b:Ljava/net/Socket;
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_6

    goto/16 :goto_3

    :catch_6
    move-exception v0

    const-string v1, "FtpConnection"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "socket exception: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :catch_7
    move-exception v0

    const-string v1, "FtpConnection"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "reader exception: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    :catch_8
    move-exception v0

    const-string v1, "FtpConnection"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "writer exception: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    :catch_9
    move-exception v0

    const-string v1, "FtpConnection"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "pasvSocket exception: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    :catchall_0
    move-exception v0

    :try_start_f
    iget-object v1, p0, Lcom/vivo/PCTools/PcFtpRemote/h;->c:Ljava/io/BufferedReader;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/vivo/PCTools/PcFtpRemote/h;->c:Ljava/io/BufferedReader;

    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/vivo/PCTools/PcFtpRemote/h;->c:Ljava/io/BufferedReader;
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_a

    :cond_c
    :goto_a
    :try_start_10
    iget-object v1, p0, Lcom/vivo/PCTools/PcFtpRemote/h;->d:Ljava/io/BufferedOutputStream;

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/vivo/PCTools/PcFtpRemote/h;->d:Ljava/io/BufferedOutputStream;

    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/vivo/PCTools/PcFtpRemote/h;->d:Ljava/io/BufferedOutputStream;
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_b

    :cond_d
    :goto_b
    :try_start_11
    iget-object v1, p0, Lcom/vivo/PCTools/PcFtpRemote/h;->e:Ljava/net/ServerSocket;

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/vivo/PCTools/PcFtpRemote/h;->e:Ljava/net/ServerSocket;

    invoke-virtual {v1}, Ljava/net/ServerSocket;->close()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/vivo/PCTools/PcFtpRemote/h;->e:Ljava/net/ServerSocket;
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_c

    :cond_e
    :goto_c
    :try_start_12
    iget-object v1, p0, Lcom/vivo/PCTools/PcFtpRemote/h;->b:Ljava/net/Socket;

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/vivo/PCTools/PcFtpRemote/h;->b:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->close()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/vivo/PCTools/PcFtpRemote/h;->b:Ljava/net/Socket;
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_d

    :cond_f
    :goto_d
    throw v0

    :catch_a
    move-exception v1

    const-string v2, "FtpConnection"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "reader exception: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a

    :catch_b
    move-exception v1

    const-string v2, "FtpConnection"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "writer exception: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    :catch_c
    move-exception v1

    const-string v2, "FtpConnection"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "pasvSocket exception: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c

    :catch_d
    move-exception v1

    const-string v2, "FtpConnection"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "socket exception: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d

    :catch_e
    move-exception v0

    const-string v1, "FtpConnection"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "reader exception: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :catch_f
    move-exception v0

    const-string v1, "FtpConnection"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "writer exception: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :catch_10
    move-exception v0

    const-string v1, "FtpConnection"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "pasvSocket exception: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :catch_11
    move-exception v0

    const-string v1, "FtpConnection"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "socket exception: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3
.end method

.method public final setRenameFrom(Ljava/io/File;)V
    .locals 0

    iput-object p1, p0, Lcom/vivo/PCTools/PcFtpRemote/h;->i:Ljava/io/File;

    return-void
.end method

.method public final violatesChroot(Ljava/io/File;)Z
    .locals 6

    const/4 v0, 0x1

    new-instance v1, Ljava/io/File;

    const-string v2, "/"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "FtpConnection"

    const-string v4, "Path violated folder restriction, denying"

    invoke-static {v3, v4}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "FtpConnection"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "path: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "FtpConnection"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "chroot: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "FtpConnection"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Path canonicalization problem: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "FtpConnection"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "When checking file: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
