.class public Lorg/jboss/netty/channel/socket/nio/NioServerSocketChannelFactory;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/jboss/netty/channel/socket/ServerSocketChannelFactory;


# instance fields
.field final bossExecutor:Ljava/util/concurrent/Executor;

.field private final sink:Lorg/jboss/netty/channel/ChannelSink;

.field private final workerPool:Lorg/jboss/netty/channel/socket/nio/WorkerPool;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/jboss/netty/channel/socket/nio/NioServerSocketChannelFactory;-><init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;)V
    .locals 1

    sget v0, Lorg/jboss/netty/channel/socket/nio/aa;->a:I

    invoke-direct {p0, p1, p2, v0}, Lorg/jboss/netty/channel/socket/nio/NioServerSocketChannelFactory;-><init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;I)V

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;I)V
    .locals 1

    new-instance v0, Lorg/jboss/netty/channel/socket/nio/NioWorkerPool;

    invoke-direct {v0, p2, p3}, Lorg/jboss/netty/channel/socket/nio/NioWorkerPool;-><init>(Ljava/util/concurrent/Executor;I)V

    invoke-direct {p0, p1, v0}, Lorg/jboss/netty/channel/socket/nio/NioServerSocketChannelFactory;-><init>(Ljava/util/concurrent/Executor;Lorg/jboss/netty/channel/socket/nio/WorkerPool;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;Lorg/jboss/netty/channel/socket/nio/WorkerPool;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "bossExecutor"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "workerPool"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput-object p1, p0, Lorg/jboss/netty/channel/socket/nio/NioServerSocketChannelFactory;->bossExecutor:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lorg/jboss/netty/channel/socket/nio/NioServerSocketChannelFactory;->workerPool:Lorg/jboss/netty/channel/socket/nio/WorkerPool;

    new-instance v0, Lorg/jboss/netty/channel/socket/nio/u;

    invoke-direct {v0, p2}, Lorg/jboss/netty/channel/socket/nio/u;-><init>(Lorg/jboss/netty/channel/socket/nio/WorkerPool;)V

    iput-object v0, p0, Lorg/jboss/netty/channel/socket/nio/NioServerSocketChannelFactory;->sink:Lorg/jboss/netty/channel/ChannelSink;

    return-void
.end method


# virtual methods
.method public bridge synthetic newChannel(Lorg/jboss/netty/channel/ChannelPipeline;)Lorg/jboss/netty/channel/Channel;
    .locals 1

    invoke-virtual {p0, p1}, Lorg/jboss/netty/channel/socket/nio/NioServerSocketChannelFactory;->newChannel(Lorg/jboss/netty/channel/ChannelPipeline;)Lorg/jboss/netty/channel/socket/ServerSocketChannel;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newChannel(Lorg/jboss/netty/channel/ChannelPipeline;)Lorg/jboss/netty/channel/ServerChannel;
    .locals 1

    invoke-virtual {p0, p1}, Lorg/jboss/netty/channel/socket/nio/NioServerSocketChannelFactory;->newChannel(Lorg/jboss/netty/channel/ChannelPipeline;)Lorg/jboss/netty/channel/socket/ServerSocketChannel;

    move-result-object v0

    return-object v0
.end method

.method public newChannel(Lorg/jboss/netty/channel/ChannelPipeline;)Lorg/jboss/netty/channel/socket/ServerSocketChannel;
    .locals 2

    new-instance v0, Lorg/jboss/netty/channel/socket/nio/t;

    iget-object v1, p0, Lorg/jboss/netty/channel/socket/nio/NioServerSocketChannelFactory;->sink:Lorg/jboss/netty/channel/ChannelSink;

    invoke-direct {v0, p0, p1, v1}, Lorg/jboss/netty/channel/socket/nio/t;-><init>(Lorg/jboss/netty/channel/ChannelFactory;Lorg/jboss/netty/channel/ChannelPipeline;Lorg/jboss/netty/channel/ChannelSink;)V

    return-object v0
.end method

.method public releaseExternalResources()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/util/concurrent/Executor;

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/jboss/netty/channel/socket/nio/NioServerSocketChannelFactory;->bossExecutor:Ljava/util/concurrent/Executor;

    aput-object v2, v0, v1

    invoke-static {v0}, Lorg/jboss/netty/util/internal/ExecutorUtil;->terminate([Ljava/util/concurrent/Executor;)V

    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/NioServerSocketChannelFactory;->workerPool:Lorg/jboss/netty/channel/socket/nio/WorkerPool;

    instance-of v0, v0, Lorg/jboss/netty/util/ExternalResourceReleasable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/NioServerSocketChannelFactory;->workerPool:Lorg/jboss/netty/channel/socket/nio/WorkerPool;

    check-cast v0, Lorg/jboss/netty/util/ExternalResourceReleasable;

    invoke-interface {v0}, Lorg/jboss/netty/util/ExternalResourceReleasable;->releaseExternalResources()V

    :cond_0
    return-void
.end method
