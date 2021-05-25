.class public final Lorg/swiftp/SessionThread;
.super Ljava/lang/Thread;


# static fields
.field private static p:I


# instance fields
.field protected a:Lorg/swiftp/a;

.field private b:Ljava/net/Socket;

.field private c:Lorg/swiftp/af;

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:Ljava/io/File;

.field private h:Ljava/net/Socket;

.field private i:Ljava/io/File;

.field private j:Lorg/swiftp/ab;

.field private k:Ljava/io/OutputStream;

.field private l:Z

.field private m:Ljava/lang/String;

.field private n:Lorg/swiftp/SessionThread$Source;

.field private o:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x3

    sput v0, Lorg/swiftp/SessionThread;->p:I

    return-void
.end method

.method public constructor <init>(Ljava/net/Socket;Lorg/swiftp/ab;Lorg/swiftp/SessionThread$Source;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    new-instance v0, Lorg/swiftp/af;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/swiftp/af;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/swiftp/SessionThread;->c:Lorg/swiftp/af;

    invoke-static {}, Lorg/swiftp/ac;->getInputBufferSize()I

    move-result v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    iput-boolean v2, p0, Lorg/swiftp/SessionThread;->d:Z

    iput-boolean v2, p0, Lorg/swiftp/SessionThread;->e:Z

    new-instance v0, Lorg/swiftp/a;

    invoke-direct {v0}, Lorg/swiftp/a;-><init>()V

    iput-object v0, p0, Lorg/swiftp/SessionThread;->a:Lorg/swiftp/a;

    iput-boolean v2, p0, Lorg/swiftp/SessionThread;->f:Z

    invoke-static {}, Lorg/swiftp/ae;->getChrootDir()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lorg/swiftp/SessionThread;->g:Ljava/io/File;

    iput-object v3, p0, Lorg/swiftp/SessionThread;->h:Ljava/net/Socket;

    iput-object v3, p0, Lorg/swiftp/SessionThread;->i:Ljava/io/File;

    iput-object v3, p0, Lorg/swiftp/SessionThread;->k:Ljava/io/OutputStream;

    const-string v0, "UTF-8"

    iput-object v0, p0, Lorg/swiftp/SessionThread;->m:Ljava/lang/String;

    iput v2, p0, Lorg/swiftp/SessionThread;->o:I

    iput-object p1, p0, Lorg/swiftp/SessionThread;->b:Ljava/net/Socket;

    iput-object p3, p0, Lorg/swiftp/SessionThread;->n:Lorg/swiftp/SessionThread$Source;

    iput-object p2, p0, Lorg/swiftp/SessionThread;->j:Lorg/swiftp/ab;

    sget-object v0, Lorg/swiftp/SessionThread$Source;->LOCAL:Lorg/swiftp/SessionThread$Source;

    if-ne p3, v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/swiftp/SessionThread;->l:Z

    :goto_0
    return-void

    :cond_0
    iput-boolean v2, p0, Lorg/swiftp/SessionThread;->l:Z

    goto :goto_0
.end method

.method public static compareLen([B[BI)Z
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-lt v1, p2, :cond_1

    const/4 v0, 0x1

    :cond_0
    return v0

    :cond_1
    aget-byte v2, p0, v1

    aget-byte v3, p1, v1

    if-ne v2, v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static stringToBB(Ljava/lang/String;)Ljava/nio/ByteBuffer;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final authAttempt(Z)V
    .locals 3

    if-eqz p1, :cond_1

    iget-object v0, p0, Lorg/swiftp/SessionThread;->c:Lorg/swiftp/af;

    const/4 v1, 0x4

    const-string v2, "Authentication complete"

    invoke-virtual {v0, v1, v2}, Lorg/swiftp/af;->l(ILjava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/swiftp/SessionThread;->f:Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lorg/swiftp/SessionThread;->n:Lorg/swiftp/SessionThread$Source;

    sget-object v1, Lorg/swiftp/SessionThread$Source;->PROXY:Lorg/swiftp/SessionThread$Source;

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Lorg/swiftp/SessionThread;->quit()V

    :goto_1
    iget v0, p0, Lorg/swiftp/SessionThread;->o:I

    sget v1, Lorg/swiftp/SessionThread;->p:I

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lorg/swiftp/SessionThread;->c:Lorg/swiftp/af;

    const-string v1, "Too many auth fails, quitting session"

    invoke-virtual {v0, v1}, Lorg/swiftp/af;->i(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/swiftp/SessionThread;->quit()V

    goto :goto_0

    :cond_2
    iget v0, p0, Lorg/swiftp/SessionThread;->o:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/swiftp/SessionThread;->o:I

    iget-object v0, p0, Lorg/swiftp/SessionThread;->c:Lorg/swiftp/af;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Auth failed: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lorg/swiftp/SessionThread;->o:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lorg/swiftp/SessionThread;->p:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/swiftp/af;->i(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public final closeDataSocket()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lorg/swiftp/SessionThread;->c:Lorg/swiftp/af;

    const/4 v1, 0x3

    const-string v2, "Closing data socket"

    invoke-virtual {v0, v1, v2}, Lorg/swiftp/af;->l(ILjava/lang/String;)V

    iget-object v0, p0, Lorg/swiftp/SessionThread;->k:Ljava/io/OutputStream;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lorg/swiftp/SessionThread;->k:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    iput-object v3, p0, Lorg/swiftp/SessionThread;->k:Ljava/io/OutputStream;

    :cond_0
    iget-object v0, p0, Lorg/swiftp/SessionThread;->h:Ljava/net/Socket;

    if-eqz v0, :cond_1

    :try_start_1
    iget-object v0, p0, Lorg/swiftp/SessionThread;->h:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_1
    :goto_1
    iput-object v3, p0, Lorg/swiftp/SessionThread;->h:Ljava/net/Socket;

    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public final closeSocket()V
    .locals 1

    iget-object v0, p0, Lorg/swiftp/SessionThread;->b:Ljava/net/Socket;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/swiftp/SessionThread;->b:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final getAccount()Lorg/swiftp/a;
    .locals 1

    iget-object v0, p0, Lorg/swiftp/SessionThread;->a:Lorg/swiftp/a;

    return-object v0
.end method

.method public final getDataSocket()Ljava/net/Socket;
    .locals 1

    iget-object v0, p0, Lorg/swiftp/SessionThread;->h:Ljava/net/Socket;

    return-object v0
.end method

.method public final getDataSocketPasvIp()Ljava/net/InetAddress;
    .locals 1

    iget-object v0, p0, Lorg/swiftp/SessionThread;->b:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method public final getEncoding()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/swiftp/SessionThread;->m:Ljava/lang/String;

    return-object v0
.end method

.method public final getRenameFrom()Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lorg/swiftp/SessionThread;->i:Ljava/io/File;

    return-object v0
.end method

.method public final getWorkingDir()Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lorg/swiftp/SessionThread;->g:Ljava/io/File;

    return-object v0
.end method

.method public final isAuthenticated()Z
    .locals 1

    iget-boolean v0, p0, Lorg/swiftp/SessionThread;->f:Z

    return v0
.end method

.method public final isBinaryMode()Z
    .locals 1

    iget-boolean v0, p0, Lorg/swiftp/SessionThread;->e:Z

    return v0
.end method

.method public final isPasvMode()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final onPasv()I
    .locals 1

    iget-object v0, p0, Lorg/swiftp/SessionThread;->j:Lorg/swiftp/ab;

    invoke-virtual {v0}, Lorg/swiftp/ab;->onPasv()I

    move-result v0

    return v0
.end method

.method public final onPort(Ljava/net/InetAddress;I)Z
    .locals 1

    iget-object v0, p0, Lorg/swiftp/SessionThread;->j:Lorg/swiftp/ab;

    invoke-virtual {v0, p1, p2}, Lorg/swiftp/ab;->onPort(Ljava/net/InetAddress;I)Z

    move-result v0

    return v0
.end method

.method public final quit()V
    .locals 2

    iget-object v0, p0, Lorg/swiftp/SessionThread;->c:Lorg/swiftp/af;

    const-string v1, "SessionThread told to quit"

    invoke-virtual {v0, v1}, Lorg/swiftp/af;->d(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/swiftp/SessionThread;->closeSocket()V

    return-void
.end method

.method public final receiveFromDataSocket([B)I
    .locals 6

    const/4 v2, 0x0

    const/4 v1, -0x1

    const/4 v0, -0x2

    const/4 v5, 0x4

    iget-object v3, p0, Lorg/swiftp/SessionThread;->h:Ljava/net/Socket;

    if-nez v3, :cond_0

    iget-object v1, p0, Lorg/swiftp/SessionThread;->c:Lorg/swiftp/af;

    const-string v2, "Can\'t receive from null dataSocket"

    invoke-virtual {v1, v5, v2}, Lorg/swiftp/af;->l(ILjava/lang/String;)V

    :goto_0
    return v0

    :cond_0
    iget-object v3, p0, Lorg/swiftp/SessionThread;->h:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->isConnected()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v1, p0, Lorg/swiftp/SessionThread;->c:Lorg/swiftp/af;

    const-string v2, "Can\'t receive from unconnected socket"

    invoke-virtual {v1, v5, v2}, Lorg/swiftp/af;->l(ILjava/lang/String;)V

    goto :goto_0

    :cond_1
    :try_start_0
    iget-object v0, p0, Lorg/swiftp/SessionThread;->h:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    :cond_2
    const/4 v0, 0x0

    array-length v4, p1

    invoke-virtual {v3, p1, v0, v4}, Ljava/io/InputStream;->read([BII)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_2

    if-ne v0, v1, :cond_3

    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v0, p0, Lorg/swiftp/SessionThread;->c:Lorg/swiftp/af;

    const-string v1, "Error reading data socket"

    invoke-virtual {v0, v5, v1}, Lorg/swiftp/af;->l(ILjava/lang/String;)V

    move v0, v2

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lorg/swiftp/SessionThread;->j:Lorg/swiftp/ab;

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Lorg/swiftp/ab;->reportTraffic(J)V

    goto :goto_0
.end method

.method public final run()V
    .locals 7

    const/4 v6, 0x4

    iget-object v0, p0, Lorg/swiftp/SessionThread;->c:Lorg/swiftp/af;

    const-string v1, "SessionThread started"

    invoke-virtual {v0, v6, v1}, Lorg/swiftp/af;->l(ILjava/lang/String;)V

    iget-boolean v0, p0, Lorg/swiftp/SessionThread;->l:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "220 SwiFTP "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lorg/swiftp/ak;->getVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ready\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/swiftp/SessionThread;->writeString(Ljava/lang/String;)V

    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    iget-object v2, p0, Lorg/swiftp/SessionThread;->b:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v2, 0x2000

    invoke-direct {v0, v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    invoke-static {v2, v1}, Lcom/vivo/PCTools/PcFtpRemote/FTPServerService;->writeMonitor(ZLjava/lang/String;)V

    iget-object v2, p0, Lorg/swiftp/SessionThread;->c:Lorg/swiftp/af;

    const/4 v3, 0x3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Received line from client: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/swiftp/af;->l(ILjava/lang/String;)V

    invoke-static {p0, v1}, Lorg/swiftp/ad;->a(Lorg/swiftp/SessionThread;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v0, p0, Lorg/swiftp/SessionThread;->c:Lorg/swiftp/af;

    const-string v1, "Connection was dropped"

    invoke-virtual {v0, v6, v1}, Lorg/swiftp/af;->l(ILjava/lang/String;)V

    :goto_1
    invoke-virtual {p0}, Lorg/swiftp/SessionThread;->closeSocket()V

    return-void

    :cond_1
    :try_start_1
    iget-object v0, p0, Lorg/swiftp/SessionThread;->c:Lorg/swiftp/af;

    const-string v1, "readLine gave null, quitting"

    invoke-virtual {v0, v1}, Lorg/swiftp/af;->i(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public final sendViaDataSocket(Ljava/lang/String;)Z
    .locals 4

    :try_start_0
    iget-object v0, p0, Lorg/swiftp/SessionThread;->m:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    iget-object v1, p0, Lorg/swiftp/SessionThread;->c:Lorg/swiftp/af;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Using data connection encoding: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/swiftp/SessionThread;->m:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/swiftp/af;->d(Ljava/lang/String;)V

    array-length v1, v0

    invoke-virtual {p0, v0, v1}, Lorg/swiftp/SessionThread;->sendViaDataSocket([BI)Z
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    iget-object v0, p0, Lorg/swiftp/SessionThread;->c:Lorg/swiftp/af;

    const/4 v1, 0x6

    const-string v2, "Unsupported encoding for data socket send"

    invoke-virtual {v0, v1, v2}, Lorg/swiftp/af;->l(ILjava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final sendViaDataSocket([BI)Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lorg/swiftp/SessionThread;->sendViaDataSocket([BII)Z

    move-result v0

    return v0
.end method

.method public final sendViaDataSocket([BII)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v0, 0x0

    const/4 v4, 0x4

    iget-object v2, p0, Lorg/swiftp/SessionThread;->k:Ljava/io/OutputStream;

    if-nez v2, :cond_0

    iget-object v1, p0, Lorg/swiftp/SessionThread;->c:Lorg/swiftp/af;

    const-string v2, "Can\'t send via null dataOutputStream"

    invoke-virtual {v1, v4, v2}, Lorg/swiftp/af;->l(ILjava/lang/String;)V

    :goto_0
    return v0

    :cond_0
    if-nez p3, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    :try_start_0
    iget-object v2, p0, Lorg/swiftp/SessionThread;->k:Ljava/io/OutputStream;

    invoke-virtual {v2, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Lorg/swiftp/SessionThread;->j:Lorg/swiftp/ab;

    int-to-long v2, p3

    invoke-virtual {v0, v2, v3}, Lorg/swiftp/ab;->reportTraffic(J)V

    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    iget-object v2, p0, Lorg/swiftp/SessionThread;->c:Lorg/swiftp/af;

    const-string v3, "Couldn\'t write output stream for data socket"

    invoke-virtual {v2, v4, v3}, Lorg/swiftp/af;->l(ILjava/lang/String;)V

    iget-object v2, p0, Lorg/swiftp/SessionThread;->c:Lorg/swiftp/af;

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v4, v1}, Lorg/swiftp/af;->l(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public final setAccount(Lorg/swiftp/a;)V
    .locals 0

    iput-object p1, p0, Lorg/swiftp/SessionThread;->a:Lorg/swiftp/a;

    return-void
.end method

.method public final setBinaryMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/swiftp/SessionThread;->e:Z

    return-void
.end method

.method public final setDataSocket(Ljava/net/Socket;)V
    .locals 0

    iput-object p1, p0, Lorg/swiftp/SessionThread;->h:Ljava/net/Socket;

    return-void
.end method

.method public final setEncoding(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/swiftp/SessionThread;->m:Ljava/lang/String;

    return-void
.end method

.method public final setRenameFrom(Ljava/io/File;)V
    .locals 0

    iput-object p1, p0, Lorg/swiftp/SessionThread;->i:Ljava/io/File;

    return-void
.end method

.method public final setWorkingDir(Ljava/io/File;)V
    .locals 3

    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lorg/swiftp/SessionThread;->g:Ljava/io/File;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v0, p0, Lorg/swiftp/SessionThread;->c:Lorg/swiftp/af;

    const/4 v1, 0x4

    const-string v2, "SessionThread canonical error"

    invoke-virtual {v0, v1, v2}, Lorg/swiftp/af;->l(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public final startUsingDataSocket()Z
    .locals 5

    const/4 v4, 0x4

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lorg/swiftp/SessionThread;->j:Lorg/swiftp/ab;

    invoke-virtual {v1}, Lorg/swiftp/ab;->onTransfer()Ljava/net/Socket;

    move-result-object v1

    iput-object v1, p0, Lorg/swiftp/SessionThread;->h:Ljava/net/Socket;

    iget-object v1, p0, Lorg/swiftp/SessionThread;->h:Ljava/net/Socket;

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/swiftp/SessionThread;->c:Lorg/swiftp/af;

    const/4 v2, 0x4

    const-string v3, "dataSocketFactory.onTransfer() returned null"

    invoke-virtual {v1, v2, v3}, Lorg/swiftp/af;->l(ILjava/lang/String;)V

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lorg/swiftp/SessionThread;->h:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    iput-object v1, p0, Lorg/swiftp/SessionThread;->k:Ljava/io/OutputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    iget-object v1, p0, Lorg/swiftp/SessionThread;->c:Lorg/swiftp/af;

    const-string v2, "IOException getting OutputStream for data socket"

    invoke-virtual {v1, v4, v2}, Lorg/swiftp/af;->l(ILjava/lang/String;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/swiftp/SessionThread;->h:Ljava/net/Socket;

    goto :goto_0
.end method

.method public final writeBytes([B)V
    .locals 3

    :try_start_0
    new-instance v0, Ljava/io/BufferedOutputStream;

    iget-object v1, p0, Lorg/swiftp/SessionThread;->b:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    sget v2, Lorg/swiftp/ac;->a:I

    invoke-direct {v0, v1, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    invoke-virtual {v0, p1}, Ljava/io/BufferedOutputStream;->write([B)V

    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->flush()V

    iget-object v0, p0, Lorg/swiftp/SessionThread;->j:Lorg/swiftp/ab;

    array-length v1, p1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lorg/swiftp/ab;->reportTraffic(J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v0, p0, Lorg/swiftp/SessionThread;->c:Lorg/swiftp/af;

    const/4 v1, 0x4

    const-string v2, "Exception writing socket"

    invoke-virtual {v0, v1, v2}, Lorg/swiftp/af;->l(ILjava/lang/String;)V

    invoke-virtual {p0}, Lorg/swiftp/SessionThread;->closeSocket()V

    goto :goto_0
.end method

.method public final writeString(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    invoke-static {v0, p1}, Lcom/vivo/PCTools/PcFtpRemote/FTPServerService;->writeMonitor(ZLjava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lorg/swiftp/SessionThread;->m:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Lorg/swiftp/SessionThread;->writeBytes([B)V

    return-void

    :catch_0
    move-exception v0

    iget-object v0, p0, Lorg/swiftp/SessionThread;->c:Lorg/swiftp/af;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unsupported encoding: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/swiftp/SessionThread;->m:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/swiftp/af;->e(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    goto :goto_0
.end method
