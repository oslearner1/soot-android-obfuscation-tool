.class public Lorg/jboss/netty/channel/socket/nio/NioDatagramChannelFactory;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/jboss/netty/channel/socket/DatagramChannelFactory;


# instance fields
.field private final family:Lorg/jboss/netty/channel/socket/InternetProtocolFamily;

.field private final sink:Lorg/jboss/netty/channel/socket/nio/o;

.field private final workerPool:Lorg/jboss/netty/channel/socket/nio/WorkerPool;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/jboss/netty/channel/socket/nio/NioDatagramChannelFactory;-><init>(Ljava/util/concurrent/Executor;Lorg/jboss/netty/channel/socket/InternetProtocolFamily;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 1

    sget v0, Lorg/jboss/netty/channel/socket/nio/aa;->a:I

    invoke-direct {p0, p1, v0}, Lorg/jboss/netty/channel/socket/nio/NioDatagramChannelFactory;-><init>(Ljava/util/concurrent/Executor;I)V

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;I)V
    .locals 1

    new-instance v0, Lorg/jboss/netty/channel/socket/nio/NioDatagramWorkerPool;

    invoke-direct {v0, p1, p2}, Lorg/jboss/netty/channel/socket/nio/NioDatagramWorkerPool;-><init>(Ljava/util/concurrent/Executor;I)V

    invoke-direct {p0, v0}, Lorg/jboss/netty/channel/socket/nio/NioDatagramChannelFactory;-><init>(Lorg/jboss/netty/channel/socket/nio/WorkerPool;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;ILorg/jboss/netty/channel/socket/InternetProtocolFamily;)V
    .locals 1

    new-instance v0, Lorg/jboss/netty/channel/socket/nio/NioDatagramWorkerPool;

    invoke-direct {v0, p1, p2}, Lorg/jboss/netty/channel/socket/nio/NioDatagramWorkerPool;-><init>(Ljava/util/concurrent/Executor;I)V

    invoke-direct {p0, v0, p3}, Lorg/jboss/netty/channel/socket/nio/NioDatagramChannelFactory;-><init>(Lorg/jboss/netty/channel/socket/nio/WorkerPool;Lorg/jboss/netty/channel/socket/InternetProtocolFamily;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;Lorg/jboss/netty/channel/socket/InternetProtocolFamily;)V
    .locals 1

    sget v0, Lorg/jboss/netty/channel/socket/nio/aa;->a:I

    invoke-direct {p0, p1, v0, p2}, Lorg/jboss/netty/channel/socket/nio/NioDatagramChannelFactory;-><init>(Ljava/util/concurrent/Executor;ILorg/jboss/netty/channel/socket/InternetProtocolFamily;)V

    return-void
.end method

.method public constructor <init>(Lorg/jboss/netty/channel/socket/InternetProtocolFamily;)V
    .locals 1

    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lorg/jboss/netty/channel/socket/nio/NioDatagramChannelFactory;-><init>(Ljava/util/concurrent/Executor;Lorg/jboss/netty/channel/socket/InternetProtocolFamily;)V

    return-void
.end method

.method public constructor <init>(Lorg/jboss/netty/channel/socket/nio/WorkerPool;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/jboss/netty/channel/socket/nio/NioDatagramChannelFactory;-><init>(Lorg/jboss/netty/channel/socket/nio/WorkerPool;Lorg/jboss/netty/channel/socket/InternetProtocolFamily;)V

    return-void
.end method

.method public constructor <init>(Lorg/jboss/netty/channel/socket/nio/WorkerPool;Lorg/jboss/netty/channel/socket/InternetProtocolFamily;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/jboss/netty/channel/socket/nio/NioDatagramChannelFactory;->workerPool:Lorg/jboss/netty/channel/socket/nio/WorkerPool;

    iput-object p2, p0, Lorg/jboss/netty/channel/socket/nio/NioDatagramChannelFactory;->family:Lorg/jboss/netty/channel/socket/InternetProtocolFamily;

    new-instance v0, Lorg/jboss/netty/channel/socket/nio/o;

    invoke-direct {v0, p1}, Lorg/jboss/netty/channel/socket/nio/o;-><init>(Lorg/jboss/netty/channel/socket/nio/WorkerPool;)V

    iput-object v0, p0, Lorg/jboss/netty/channel/socket/nio/NioDatagramChannelFactory;->sink:Lorg/jboss/netty/channel/socket/nio/o;

    return-void
.end method


# virtual methods
.method public bridge synthetic newChannel(Lorg/jboss/netty/channel/ChannelPipeline;)Lorg/jboss/netty/channel/Channel;
    .locals 1

    invoke-virtual {p0, p1}, Lorg/jboss/netty/channel/socket/nio/NioDatagramChannelFactory;->newChannel(Lorg/jboss/netty/channel/ChannelPipeline;)Lorg/jboss/netty/channel/socket/DatagramChannel;

    move-result-object v0

    return-object v0
.end method

.method public newChannel(Lorg/jboss/netty/channel/ChannelPipeline;)Lorg/jboss/netty/channel/socket/DatagramChannel;
    .locals 6

    new-instance v0, Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;

    iget-object v3, p0, Lorg/jboss/netty/channel/socket/nio/NioDatagramChannelFactory;->sink:Lorg/jboss/netty/channel/socket/nio/o;

    iget-object v1, p0, Lorg/jboss/netty/channel/socket/nio/NioDatagramChannelFactory;->sink:Lorg/jboss/netty/channel/socket/nio/o;

    invoke-virtual {v1}, Lorg/jboss/netty/channel/socket/nio/o;->a()Lorg/jboss/netty/channel/socket/nio/NioDatagramWorker;

    move-result-object v4

    iget-object v5, p0, Lorg/jboss/netty/channel/socket/nio/NioDatagramChannelFactory;->family:Lorg/jboss/netty/channel/socket/InternetProtocolFamily;

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;-><init>(Lorg/jboss/netty/channel/ChannelFactory;Lorg/jboss/netty/channel/ChannelPipeline;Lorg/jboss/netty/channel/ChannelSink;Lorg/jboss/netty/channel/socket/nio/NioDatagramWorker;Lorg/jboss/netty/channel/socket/InternetProtocolFamily;)V

    return-object v0
.end method

.method public releaseExternalResources()V
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/NioDatagramChannelFactory;->workerPool:Lorg/jboss/netty/channel/socket/nio/WorkerPool;

    instance-of v0, v0, Lorg/jboss/netty/util/ExternalResourceReleasable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/NioDatagramChannelFactory;->workerPool:Lorg/jboss/netty/channel/socket/nio/WorkerPool;

    check-cast v0, Lorg/jboss/netty/util/ExternalResourceReleasable;

    invoke-interface {v0}, Lorg/jboss/netty/util/ExternalResourceReleasable;->releaseExternalResources()V

    :cond_0
    return-void
.end method
