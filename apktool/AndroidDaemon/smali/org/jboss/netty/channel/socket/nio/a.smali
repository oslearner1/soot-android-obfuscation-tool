.class abstract Lorg/jboss/netty/channel/socket/nio/a;
.super Lorg/jboss/netty/channel/AbstractChannel;


# instance fields
.field final channel:Ljava/nio/channels/SelectableChannel;

.field currentWriteBuffer:Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$SendBuffer;

.field currentWriteEvent:Lorg/jboss/netty/channel/MessageEvent;

.field final highWaterMarkCounter:Ljava/util/concurrent/atomic/AtomicInteger;

.field inWriteNowLoop:Z

.field final interestOpsLock:Ljava/lang/Object;

.field private volatile localAddress:Ljava/net/InetSocketAddress;

.field volatile remoteAddress:Ljava/net/InetSocketAddress;

.field final worker:Lorg/jboss/netty/channel/socket/nio/d;

.field final writeBufferQueue:Ljava/util/Queue;

.field final writeBufferSize:Ljava/util/concurrent/atomic/AtomicInteger;

.field final writeLock:Ljava/lang/Object;

.field writeSuspended:Z

.field final writeTask:Ljava/lang/Runnable;

.field final writeTaskInTaskQueue:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method protected constructor <init>(Ljava/lang/Integer;Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/channel/ChannelFactory;Lorg/jboss/netty/channel/ChannelPipeline;Lorg/jboss/netty/channel/ChannelSink;Lorg/jboss/netty/channel/socket/nio/d;Ljava/nio/channels/SelectableChannel;)V
    .locals 1

    invoke-direct/range {p0 .. p5}, Lorg/jboss/netty/channel/AbstractChannel;-><init>(Ljava/lang/Integer;Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/channel/ChannelFactory;Lorg/jboss/netty/channel/ChannelPipeline;Lorg/jboss/netty/channel/ChannelSink;)V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/jboss/netty/channel/socket/nio/a;->interestOpsLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/jboss/netty/channel/socket/nio/a;->writeLock:Ljava/lang/Object;

    new-instance v0, Lorg/jboss/netty/channel/socket/nio/c;

    invoke-direct {v0, p0}, Lorg/jboss/netty/channel/socket/nio/c;-><init>(Lorg/jboss/netty/channel/socket/nio/a;)V

    iput-object v0, p0, Lorg/jboss/netty/channel/socket/nio/a;->writeTask:Ljava/lang/Runnable;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lorg/jboss/netty/channel/socket/nio/a;->writeTaskInTaskQueue:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Lorg/jboss/netty/channel/socket/nio/b;

    invoke-direct {v0, p0}, Lorg/jboss/netty/channel/socket/nio/b;-><init>(Lorg/jboss/netty/channel/socket/nio/a;)V

    iput-object v0, p0, Lorg/jboss/netty/channel/socket/nio/a;->writeBufferQueue:Ljava/util/Queue;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lorg/jboss/netty/channel/socket/nio/a;->writeBufferSize:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lorg/jboss/netty/channel/socket/nio/a;->highWaterMarkCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p6, p0, Lorg/jboss/netty/channel/socket/nio/a;->worker:Lorg/jboss/netty/channel/socket/nio/d;

    iput-object p7, p0, Lorg/jboss/netty/channel/socket/nio/a;->channel:Ljava/nio/channels/SelectableChannel;

    return-void
.end method

.method protected constructor <init>(Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/channel/ChannelFactory;Lorg/jboss/netty/channel/ChannelPipeline;Lorg/jboss/netty/channel/ChannelSink;Lorg/jboss/netty/channel/socket/nio/d;Ljava/nio/channels/SelectableChannel;)V
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/jboss/netty/channel/AbstractChannel;-><init>(Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/channel/ChannelFactory;Lorg/jboss/netty/channel/ChannelPipeline;Lorg/jboss/netty/channel/ChannelSink;)V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/jboss/netty/channel/socket/nio/a;->interestOpsLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/jboss/netty/channel/socket/nio/a;->writeLock:Ljava/lang/Object;

    new-instance v0, Lorg/jboss/netty/channel/socket/nio/c;

    invoke-direct {v0, p0}, Lorg/jboss/netty/channel/socket/nio/c;-><init>(Lorg/jboss/netty/channel/socket/nio/a;)V

    iput-object v0, p0, Lorg/jboss/netty/channel/socket/nio/a;->writeTask:Ljava/lang/Runnable;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lorg/jboss/netty/channel/socket/nio/a;->writeTaskInTaskQueue:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Lorg/jboss/netty/channel/socket/nio/b;

    invoke-direct {v0, p0}, Lorg/jboss/netty/channel/socket/nio/b;-><init>(Lorg/jboss/netty/channel/socket/nio/a;)V

    iput-object v0, p0, Lorg/jboss/netty/channel/socket/nio/a;->writeBufferQueue:Ljava/util/Queue;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lorg/jboss/netty/channel/socket/nio/a;->writeBufferSize:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lorg/jboss/netty/channel/socket/nio/a;->highWaterMarkCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p5, p0, Lorg/jboss/netty/channel/socket/nio/a;->worker:Lorg/jboss/netty/channel/socket/nio/d;

    iput-object p6, p0, Lorg/jboss/netty/channel/socket/nio/a;->channel:Ljava/nio/channels/SelectableChannel;

    return-void
.end method


# virtual methods
.method public bridge synthetic getConfig()Lorg/jboss/netty/channel/ChannelConfig;
    .locals 1

    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/nio/a;->getConfig()Lorg/jboss/netty/channel/socket/nio/NioChannelConfig;

    move-result-object v0

    return-object v0
.end method

.method public abstract getConfig()Lorg/jboss/netty/channel/socket/nio/NioChannelConfig;
.end method

.method public getInterestOps()I
    .locals 3

    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/nio/a;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x4

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/nio/a;->getRawInterestOps()I

    move-result v0

    iget-object v1, p0, Lorg/jboss/netty/channel/socket/nio/a;->writeBufferSize:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-eqz v1, :cond_4

    iget-object v2, p0, Lorg/jboss/netty/channel/socket/nio/a;->highWaterMarkCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    if-lez v2, :cond_2

    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/nio/a;->getConfig()Lorg/jboss/netty/channel/socket/nio/NioChannelConfig;

    move-result-object v2

    invoke-interface {v2}, Lorg/jboss/netty/channel/socket/nio/NioChannelConfig;->getWriteBufferLowWaterMark()I

    move-result v2

    if-lt v1, v2, :cond_1

    or-int/lit8 v0, v0, 0x4

    goto :goto_0

    :cond_1
    and-int/lit8 v0, v0, -0x5

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/nio/a;->getConfig()Lorg/jboss/netty/channel/socket/nio/NioChannelConfig;

    move-result-object v2

    invoke-interface {v2}, Lorg/jboss/netty/channel/socket/nio/NioChannelConfig;->getWriteBufferHighWaterMark()I

    move-result v2

    if-lt v1, v2, :cond_3

    or-int/lit8 v0, v0, 0x4

    goto :goto_0

    :cond_3
    and-int/lit8 v0, v0, -0x5

    goto :goto_0

    :cond_4
    and-int/lit8 v0, v0, -0x5

    goto :goto_0
.end method

.method public getLocalAddress()Ljava/net/InetSocketAddress;
    .locals 2

    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/a;->localAddress:Ljava/net/InetSocketAddress;

    if-nez v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/nio/a;->getLocalSocketAddress()Ljava/net/InetSocketAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->isAnyLocalAddress()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iput-object v0, p0, Lorg/jboss/netty/channel/socket/nio/a;->localAddress:Ljava/net/InetSocketAddress;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic getLocalAddress()Ljava/net/SocketAddress;
    .locals 1

    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/nio/a;->getLocalAddress()Ljava/net/InetSocketAddress;

    move-result-object v0

    return-object v0
.end method

.method abstract getLocalSocketAddress()Ljava/net/InetSocketAddress;
.end method

.method getRawInterestOps()I
    .locals 1

    invoke-super {p0}, Lorg/jboss/netty/channel/AbstractChannel;->getInterestOps()I

    move-result v0

    return v0
.end method

.method public getRemoteAddress()Ljava/net/InetSocketAddress;
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/a;->remoteAddress:Ljava/net/InetSocketAddress;

    if-nez v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/nio/a;->getRemoteSocketAddress()Ljava/net/InetSocketAddress;

    move-result-object v0

    iput-object v0, p0, Lorg/jboss/netty/channel/socket/nio/a;->remoteAddress:Ljava/net/InetSocketAddress;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic getRemoteAddress()Ljava/net/SocketAddress;
    .locals 1

    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/nio/a;->getRemoteAddress()Ljava/net/InetSocketAddress;

    move-result-object v0

    return-object v0
.end method

.method abstract getRemoteSocketAddress()Ljava/net/InetSocketAddress;
.end method

.method public getWorker()Lorg/jboss/netty/channel/socket/nio/d;
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/a;->worker:Lorg/jboss/netty/channel/socket/nio/d;

    return-object v0
.end method

.method protected setClosed()Z
    .locals 1

    invoke-super {p0}, Lorg/jboss/netty/channel/AbstractChannel;->setClosed()Z

    move-result v0

    return v0
.end method

.method setRawInterestOpsNow(I)V
    .locals 0

    invoke-super {p0, p1}, Lorg/jboss/netty/channel/AbstractChannel;->setInterestOpsNow(I)V

    return-void
.end method
