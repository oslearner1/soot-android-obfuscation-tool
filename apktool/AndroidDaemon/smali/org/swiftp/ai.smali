.class public final Lorg/swiftp/ai;
.super Ljava/lang/Thread;


# instance fields
.field private a:Ljava/net/ServerSocket;

.field private b:Lcom/vivo/PCTools/PcFtpRemote/FTPServerService;

.field private c:Lorg/swiftp/af;

.field private d:Ljava/lang/String;

.field private e:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/net/ServerSocket;Lcom/vivo/PCTools/PcFtpRemote/FTPServerService;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    new-instance v0, Lorg/swiftp/af;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/swiftp/af;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/swiftp/ai;->c:Lorg/swiftp/af;

    const-string v0, "TcpListener"

    iput-object v0, p0, Lorg/swiftp/ai;->d:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/swiftp/ai;->e:Ljava/util/List;

    iput-object p1, p0, Lorg/swiftp/ai;->a:Ljava/net/ServerSocket;

    iput-object p2, p0, Lorg/swiftp/ai;->b:Lcom/vivo/PCTools/PcFtpRemote/FTPServerService;

    return-void
.end method


# virtual methods
.method public final quit()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lorg/swiftp/ai;->a:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v0, p0, Lorg/swiftp/ai;->c:Lorg/swiftp/af;

    const/4 v1, 0x3

    const-string v2, "Exception closing TcpListener listenSocket"

    invoke-virtual {v0, v1, v2}, Lorg/swiftp/af;->l(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public final registerSessionThread(Lcom/vivo/PCTools/PcFtpRemote/h;)V
    .locals 5

    monitor-enter p0

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lorg/swiftp/ai;->e:Ljava/util/List;

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

    iget-object v0, p0, Lorg/swiftp/ai;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lorg/swiftp/ai;->d:Ljava/lang/String;

    const-string v1, "Registered session thread"

    invoke-static {v0, v1}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    :try_start_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vivo/PCTools/PcFtpRemote/h;

    invoke-virtual {v0}, Lcom/vivo/PCTools/PcFtpRemote/h;->isAlive()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lorg/swiftp/ai;->d:Ljava/lang/String;

    const-string v4, "Cleaning up finished session..."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v0}, Lcom/vivo/PCTools/PcFtpRemote/h;->join()V

    iget-object v3, p0, Lorg/swiftp/ai;->d:Ljava/lang/String;

    const-string v4, "Thread joined"

    invoke-static {v3, v4}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lcom/vivo/PCTools/PcFtpRemote/h;->closeSocket()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_3
    iget-object v0, p0, Lorg/swiftp/ai;->d:Ljava/lang/String;

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

    check-cast v0, Lcom/vivo/PCTools/PcFtpRemote/h;

    iget-object v2, p0, Lorg/swiftp/ai;->e:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method public final run()V
    .locals 4

    :goto_0
    :try_start_0
    iget-object v0, p0, Lorg/swiftp/ai;->a:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v0

    invoke-static {}, Lcom/vivo/PCTools/PcFtpRemote/FTPServerService;->getWifiIp()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/vivo/PCTools/PcFtpRemote/h;

    iget-object v3, p0, Lorg/swiftp/ai;->b:Lcom/vivo/PCTools/PcFtpRemote/FTPServerService;

    invoke-direct {v2, v0, v1, v3}, Lcom/vivo/PCTools/PcFtpRemote/h;-><init>(Ljava/net/Socket;Ljava/lang/String;Landroid/content/Context;)V

    invoke-virtual {v2}, Lcom/vivo/PCTools/PcFtpRemote/h;->start()V

    invoke-virtual {p0, v2}, Lorg/swiftp/ai;->registerSessionThread(Lcom/vivo/PCTools/PcFtpRemote/h;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v0, p0, Lorg/swiftp/ai;->c:Lorg/swiftp/af;

    const/4 v1, 0x3

    const-string v2, "Exception in TcpListener"

    invoke-virtual {v0, v1, v2}, Lorg/swiftp/af;->l(ILjava/lang/String;)V

    return-void
.end method
