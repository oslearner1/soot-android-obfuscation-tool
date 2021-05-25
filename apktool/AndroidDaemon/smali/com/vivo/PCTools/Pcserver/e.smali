.class public Lcom/vivo/PCTools/Pcserver/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static a:Ljava/lang/String;

.field private static volatile b:Lcom/vivo/PCTools/Pcserver/e;

.field private static final f:Lorg/jboss/netty/channel/group/ChannelGroup;


# instance fields
.field private c:Landroid/content/Context;

.field private d:Z

.field private e:Ljava/lang/String;

.field private g:Lorg/jboss/netty/bootstrap/ServerBootstrap;

.field private final h:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    sput-object v0, Lcom/vivo/PCTools/Pcserver/e;->b:Lcom/vivo/PCTools/Pcserver/e;

    new-instance v0, Lorg/jboss/netty/channel/group/DefaultChannelGroup;

    const-string v1, "vivoAssistant-server"

    invoke-direct {v0, v1}, Lorg/jboss/netty/channel/group/DefaultChannelGroup;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/vivo/PCTools/Pcserver/e;->f:Lorg/jboss/netty/channel/group/ChannelGroup;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/vivo/PCTools/Pcserver/e;->c:Landroid/content/Context;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vivo/PCTools/Pcserver/e;->d:Z

    const-string v0, "ToolsServer"

    iput-object v0, p0, Lcom/vivo/PCTools/Pcserver/e;->e:Ljava/lang/String;

    iput-object v1, p0, Lcom/vivo/PCTools/Pcserver/e;->g:Lorg/jboss/netty/bootstrap/ServerBootstrap;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/vivo/PCTools/Pcserver/e;->h:Ljava/lang/Object;

    return-void
.end method

.method public static getInstance()Lcom/vivo/PCTools/Pcserver/e;
    .locals 2

    sget-object v0, Lcom/vivo/PCTools/Pcserver/e;->b:Lcom/vivo/PCTools/Pcserver/e;

    if-nez v0, :cond_1

    const-class v1, Lcom/vivo/PCTools/Pcserver/e;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/vivo/PCTools/Pcserver/e;->b:Lcom/vivo/PCTools/Pcserver/e;

    if-nez v0, :cond_0

    new-instance v0, Lcom/vivo/PCTools/Pcserver/e;

    invoke-direct {v0}, Lcom/vivo/PCTools/Pcserver/e;-><init>()V

    sput-object v0, Lcom/vivo/PCTools/Pcserver/e;->b:Lcom/vivo/PCTools/Pcserver/e;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/vivo/PCTools/Pcserver/e;->b:Lcom/vivo/PCTools/Pcserver/e;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public getAllChannels()Lorg/jboss/netty/channel/group/ChannelGroup;
    .locals 2

    iget-object v1, p0, Lcom/vivo/PCTools/Pcserver/e;->h:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/vivo/PCTools/Pcserver/e;->f:Lorg/jboss/netty/channel/group/ChannelGroup;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/vivo/PCTools/Pcserver/e;->c:Landroid/content/Context;

    return-object v0
.end method

.method public isRunning()Z
    .locals 1

    iget-boolean v0, p0, Lcom/vivo/PCTools/Pcserver/e;->d:Z

    return v0
.end method

.method public run()V
    .locals 7

    const/4 v5, 0x1

    const/4 v6, 0x0

    iput-boolean v5, p0, Lcom/vivo/PCTools/Pcserver/e;->d:Z

    new-instance v1, Lorg/jboss/netty/util/HashedWheelTimer;

    invoke-direct {v1}, Lorg/jboss/netty/util/HashedWheelTimer;-><init>()V

    new-instance v2, Lorg/jboss/netty/channel/socket/nio/NioServerSocketChannelFactory;

    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lorg/jboss/netty/channel/socket/nio/NioServerSocketChannelFactory;-><init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;)V

    new-instance v0, Lorg/jboss/netty/bootstrap/ServerBootstrap;

    invoke-direct {v0, v2}, Lorg/jboss/netty/bootstrap/ServerBootstrap;-><init>(Lorg/jboss/netty/channel/ChannelFactory;)V

    iput-object v0, p0, Lcom/vivo/PCTools/Pcserver/e;->g:Lorg/jboss/netty/bootstrap/ServerBootstrap;

    iget-object v0, p0, Lcom/vivo/PCTools/Pcserver/e;->g:Lorg/jboss/netty/bootstrap/ServerBootstrap;

    new-instance v3, Lcom/vivo/PCTools/Pcserver/d;

    iget-object v4, p0, Lcom/vivo/PCTools/Pcserver/e;->c:Landroid/content/Context;

    invoke-direct {v3, v4, v1}, Lcom/vivo/PCTools/Pcserver/d;-><init>(Landroid/content/Context;Lorg/jboss/netty/util/HashedWheelTimer;)V

    invoke-virtual {v0, v3}, Lorg/jboss/netty/bootstrap/ServerBootstrap;->setPipelineFactory(Lorg/jboss/netty/channel/ChannelPipelineFactory;)V

    iget-object v0, p0, Lcom/vivo/PCTools/Pcserver/e;->g:Lorg/jboss/netty/bootstrap/ServerBootstrap;

    const-string v3, "child.tcpNoDelay"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/jboss/netty/bootstrap/ServerBootstrap;->setOption(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/vivo/PCTools/Pcserver/e;->g:Lorg/jboss/netty/bootstrap/ServerBootstrap;

    const-string v3, "child.keepAlive"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/jboss/netty/bootstrap/ServerBootstrap;->setOption(Ljava/lang/String;Ljava/lang/Object;)V

    :try_start_0
    iget-object v0, p0, Lcom/vivo/PCTools/Pcserver/e;->g:Lorg/jboss/netty/bootstrap/ServerBootstrap;

    new-instance v3, Ljava/net/InetSocketAddress;

    const/16 v4, 0x15b4

    invoke-direct {v3, v4}, Ljava/net/InetSocketAddress;-><init>(I)V

    invoke-virtual {v0, v3}, Lorg/jboss/netty/bootstrap/ServerBootstrap;->bind(Ljava/net/SocketAddress;)Lorg/jboss/netty/channel/Channel;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v3, Lcom/vivo/PCTools/Pcserver/e;->f:Lorg/jboss/netty/channel/group/ChannelGroup;

    invoke-interface {v3, v0}, Lorg/jboss/netty/channel/group/ChannelGroup;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/vivo/PCTools/Pcserver/e;->h:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v0, p0, Lcom/vivo/PCTools/Pcserver/e;->h:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_0
    sget-object v0, Lcom/vivo/PCTools/Pcserver/e;->f:Lorg/jboss/netty/channel/group/ChannelGroup;

    invoke-interface {v0}, Lorg/jboss/netty/channel/group/ChannelGroup;->close()Lorg/jboss/netty/channel/group/ChannelGroupFuture;

    move-result-object v0

    sget-object v3, Lcom/vivo/PCTools/Pcserver/e;->f:Lorg/jboss/netty/channel/group/ChannelGroup;

    invoke-interface {v3}, Lorg/jboss/netty/channel/group/ChannelGroup;->clear()V

    invoke-interface {v0}, Lorg/jboss/netty/channel/group/ChannelGroupFuture;->awaitUninterruptibly()Lorg/jboss/netty/channel/group/ChannelGroupFuture;

    invoke-interface {v2}, Lorg/jboss/netty/channel/ChannelFactory;->releaseExternalResources()V

    invoke-virtual {v1}, Lorg/jboss/netty/util/HashedWheelTimer;->stop()Ljava/util/Set;

    iput-boolean v6, p0, Lcom/vivo/PCTools/Pcserver/e;->d:Z

    iget-object v0, p0, Lcom/vivo/PCTools/Pcserver/e;->e:Ljava/lang/String;

    const-string v1, "server shutdown"

    invoke-static {v0, v1}, Lcom/vivo/PCTools/util/b;->logE(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void

    :catch_0
    move-exception v0

    :try_start_3
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v3

    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catch_1
    move-exception v0

    :try_start_5
    const-string v3, "Server"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "bind error:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/vivo/PCTools/util/b;->logE(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    sget-object v0, Lcom/vivo/PCTools/Pcserver/e;->f:Lorg/jboss/netty/channel/group/ChannelGroup;

    invoke-interface {v0}, Lorg/jboss/netty/channel/group/ChannelGroup;->close()Lorg/jboss/netty/channel/group/ChannelGroupFuture;

    move-result-object v0

    sget-object v3, Lcom/vivo/PCTools/Pcserver/e;->f:Lorg/jboss/netty/channel/group/ChannelGroup;

    invoke-interface {v3}, Lorg/jboss/netty/channel/group/ChannelGroup;->clear()V

    invoke-interface {v0}, Lorg/jboss/netty/channel/group/ChannelGroupFuture;->awaitUninterruptibly()Lorg/jboss/netty/channel/group/ChannelGroupFuture;

    invoke-interface {v2}, Lorg/jboss/netty/channel/ChannelFactory;->releaseExternalResources()V

    invoke-virtual {v1}, Lorg/jboss/netty/util/HashedWheelTimer;->stop()Ljava/util/Set;

    iput-boolean v6, p0, Lcom/vivo/PCTools/Pcserver/e;->d:Z

    iget-object v0, p0, Lcom/vivo/PCTools/Pcserver/e;->e:Ljava/lang/String;

    const-string v1, "server shutdown"

    invoke-static {v0, v1}, Lcom/vivo/PCTools/util/b;->logE(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catchall_1
    move-exception v0

    sget-object v3, Lcom/vivo/PCTools/Pcserver/e;->f:Lorg/jboss/netty/channel/group/ChannelGroup;

    invoke-interface {v3}, Lorg/jboss/netty/channel/group/ChannelGroup;->close()Lorg/jboss/netty/channel/group/ChannelGroupFuture;

    move-result-object v3

    sget-object v4, Lcom/vivo/PCTools/Pcserver/e;->f:Lorg/jboss/netty/channel/group/ChannelGroup;

    invoke-interface {v4}, Lorg/jboss/netty/channel/group/ChannelGroup;->clear()V

    invoke-interface {v3}, Lorg/jboss/netty/channel/group/ChannelGroupFuture;->awaitUninterruptibly()Lorg/jboss/netty/channel/group/ChannelGroupFuture;

    invoke-interface {v2}, Lorg/jboss/netty/channel/ChannelFactory;->releaseExternalResources()V

    invoke-virtual {v1}, Lorg/jboss/netty/util/HashedWheelTimer;->stop()Ljava/util/Set;

    iput-boolean v6, p0, Lcom/vivo/PCTools/Pcserver/e;->d:Z

    iget-object v1, p0, Lcom/vivo/PCTools/Pcserver/e;->e:Ljava/lang/String;

    const-string v2, "server shutdown"

    invoke-static {v1, v2}, Lcom/vivo/PCTools/util/b;->logE(Ljava/lang/String;Ljava/lang/String;)V

    throw v0
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/vivo/PCTools/Pcserver/e;->c:Landroid/content/Context;

    return-void
.end method

.method public shutdown()V
    .locals 3

    iget-object v1, p0, Lcom/vivo/PCTools/Pcserver/e;->h:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/vivo/PCTools/Pcserver/e;->h:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    iget-object v0, p0, Lcom/vivo/PCTools/Pcserver/e;->e:Ljava/lang/String;

    const-string v2, "Server shutdown\n"

    invoke-static {v0, v2}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public start()V
    .locals 3

    iget-object v1, p0, Lcom/vivo/PCTools/Pcserver/e;->h:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    new-instance v0, Ljava/lang/Thread;

    invoke-static {}, Lcom/vivo/PCTools/Pcserver/e;->getInstance()Lcom/vivo/PCTools/Pcserver/e;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    iget-object v0, p0, Lcom/vivo/PCTools/Pcserver/e;->e:Ljava/lang/String;

    const-string v2, "Server Ready\n"

    invoke-static {v0, v2}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
