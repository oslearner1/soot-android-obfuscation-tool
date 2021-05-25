.class public final Lcom/vivo/PCTools/PcFtp/b;
.super Ljava/lang/Thread;


# instance fields
.field private a:Ljava/net/ServerSocket;

.field private b:Ljava/util/List;

.field private c:Ljava/lang/String;

.field private d:Landroid/content/Context;

.field private e:I

.field private f:Z


# direct methods
.method public constructor <init>(ILandroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vivo/PCTools/PcFtp/b;->a:Ljava/net/ServerSocket;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vivo/PCTools/PcFtp/b;->b:Ljava/util/List;

    const-string v0, "127.0.0.1"

    iput-object v0, p0, Lcom/vivo/PCTools/PcFtp/b;->c:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/vivo/PCTools/PcFtp/b;->e:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vivo/PCTools/PcFtp/b;->f:Z

    iput p1, p0, Lcom/vivo/PCTools/PcFtp/b;->e:I

    iput-object p2, p0, Lcom/vivo/PCTools/PcFtp/b;->d:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final cleanupAndStopService()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/vivo/PCTools/PcFtp/b;->d:Landroid/content/Context;

    const-class v2, Lcom/vivo/PCTools/PcFtp/FtpService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/vivo/PCTools/PcFtp/b;->d:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    return-void
.end method

.method public final destroy()V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/vivo/PCTools/PcFtp/b;->a:Ljava/net/ServerSocket;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/vivo/PCTools/PcFtp/b;->a:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vivo/PCTools/PcFtp/b;->a:Ljava/net/ServerSocket;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iput-object v4, p0, Lcom/vivo/PCTools/PcFtp/b;->a:Ljava/net/ServerSocket;

    :cond_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "FtpServer"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "IOException: ftpsocket "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final registerSessionThread(Lcom/vivo/PCTools/PcFtp/a;)V
    .locals 5

    monitor-enter p0

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/vivo/PCTools/PcFtp/b;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/vivo/PCTools/PcFtp/b;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v0, "FtpServer"

    const-string v1, "Registered session thread"

    invoke-static {v0, v1}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    :try_start_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vivo/PCTools/PcFtp/a;

    invoke-virtual {v0}, Lcom/vivo/PCTools/PcFtp/a;->isAlive()Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "FtpServer"

    const-string v4, "Cleaning up finished session..."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v0}, Lcom/vivo/PCTools/PcFtp/a;->join()V

    const-string v3, "FtpServer"

    const-string v4, "Thread joined"

    invoke-static {v3, v4}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lcom/vivo/PCTools/PcFtp/a;->closeSocket()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_3
    const-string v0, "FtpServer"

    const-string v3, "Interrupted while joining"

    invoke-static {v0, v3}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    :try_start_4
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vivo/PCTools/PcFtp/a;

    iget-object v2, p0, Lcom/vivo/PCTools/PcFtp/b;->b:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method public final run()V
    .locals 5

    const/4 v1, 0x0

    const-string v0, ""

    const-string v2, "Have crate FtpServer Thread "

    invoke-static {v0, v2}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/PCTools/PcFtp/b;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/vivo/PCTools/s/a;->getInstance(Landroid/content/Context;)Lcom/vivo/PCTools/s/a;

    move-result-object v0

    iget v2, p0, Lcom/vivo/PCTools/PcFtp/b;->e:I

    if-nez v2, :cond_3

    const-string v0, "127.0.0.1"

    iput-object v0, p0, Lcom/vivo/PCTools/PcFtp/b;->c:Ljava/lang/String;

    :cond_0
    :try_start_0
    new-instance v0, Ljava/net/ServerSocket;

    const/16 v2, 0x849

    invoke-direct {v0, v2}, Ljava/net/ServerSocket;-><init>(I)V

    iput-object v0, p0, Lcom/vivo/PCTools/PcFtp/b;->a:Ljava/net/ServerSocket;

    const-string v0, "FtpServer"

    const-string v2, "listening port: 2121"

    invoke-static {v0, v2}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget-boolean v0, p0, Lcom/vivo/PCTools/PcFtp/b;->f:Z
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v0, :cond_4

    :goto_1
    if-eqz v1, :cond_1

    :try_start_1
    invoke-virtual {v1}, Ljava/net/Socket;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    :cond_1
    :goto_2
    iget v0, p0, Lcom/vivo/PCTools/PcFtp/b;->e:I

    sget v0, Lcom/vivo/PCTools/PcFtp/FtpService;->b:I

    :cond_2
    :goto_3
    return-void

    :cond_3
    iget-object v2, p0, Lcom/vivo/PCTools/PcFtp/b;->d:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/vivo/PCTools/s/a;->isWifiEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lcom/vivo/PCTools/s/a;->getIPAddressOld()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/PCTools/PcFtp/b;->c:Ljava/lang/String;

    iget-object v0, p0, Lcom/vivo/PCTools/PcFtp/b;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_3

    :cond_4
    :try_start_2
    iget-object v0, p0, Lcom/vivo/PCTools/PcFtp/b;->a:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v1

    new-instance v0, Lcom/vivo/PCTools/PcFtp/a;

    iget-object v2, p0, Lcom/vivo/PCTools/PcFtp/b;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/vivo/PCTools/PcFtp/b;->d:Landroid/content/Context;

    invoke-direct {v0, v1, v2, v3}, Lcom/vivo/PCTools/PcFtp/a;-><init>(Ljava/net/Socket;Ljava/lang/String;Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/vivo/PCTools/PcFtp/a;->start()V

    invoke-virtual {p0, v0}, Lcom/vivo/PCTools/PcFtp/b;->registerSessionThread(Lcom/vivo/PCTools/PcFtp/a;)V
    :try_end_2
    .catch Ljava/net/SocketException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "FtpServer"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "SocketException: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/SocketException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catch_1
    move-exception v0

    const-string v2, "FtpServer"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Exception: ftpsocket "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catch_2
    move-exception v0

    const-string v1, "FtpServer"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "IOException: client "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public final stopFtpServer()V
    .locals 5

    const/4 v4, 0x0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vivo/PCTools/PcFtp/b;->f:Z

    iget-object v0, p0, Lcom/vivo/PCTools/PcFtp/b;->a:Ljava/net/ServerSocket;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/vivo/PCTools/PcFtp/b;->a:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vivo/PCTools/PcFtp/b;->a:Ljava/net/ServerSocket;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iput-object v4, p0, Lcom/vivo/PCTools/PcFtp/b;->a:Ljava/net/ServerSocket;

    :cond_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "FtpServer"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "IOException: ftpsocket "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
