.class Lorg/jboss/netty/channel/socket/nio/u;
.super Lorg/jboss/netty/channel/socket/nio/AbstractNioChannelSink;


# static fields
.field static final a:Lorg/jboss/netty/logging/InternalLogger;

.field private static final b:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static synthetic e:Z


# instance fields
.field private c:I

.field private final d:Lorg/jboss/netty/channel/socket/nio/WorkerPool;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/jboss/netty/channel/socket/nio/u;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/jboss/netty/channel/socket/nio/u;->e:Z

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lorg/jboss/netty/channel/socket/nio/u;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    const-class v0, Lorg/jboss/netty/channel/socket/nio/u;

    invoke-static {v0}, Lorg/jboss/netty/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lorg/jboss/netty/logging/InternalLogger;

    move-result-object v0

    sput-object v0, Lorg/jboss/netty/channel/socket/nio/u;->a:Lorg/jboss/netty/logging/InternalLogger;

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lorg/jboss/netty/channel/socket/nio/WorkerPool;)V
    .locals 1

    invoke-direct {p0}, Lorg/jboss/netty/channel/socket/nio/AbstractNioChannelSink;-><init>()V

    sget-object v0, Lorg/jboss/netty/channel/socket/nio/u;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    iput v0, p0, Lorg/jboss/netty/channel/socket/nio/u;->c:I

    iput-object p1, p0, Lorg/jboss/netty/channel/socket/nio/u;->d:Lorg/jboss/netty/channel/socket/nio/WorkerPool;

    return-void
.end method

.method private static a(Lorg/jboss/netty/channel/socket/nio/t;Lorg/jboss/netty/channel/ChannelFuture;)V
    .locals 2

    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/nio/t;->isBound()Z

    move-result v0

    :try_start_0
    iget-object v1, p0, Lorg/jboss/netty/channel/socket/nio/t;->a:Ljava/nio/channels/ServerSocketChannel;

    invoke-virtual {v1}, Ljava/nio/channels/ServerSocketChannel;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/jboss/netty/channel/socket/nio/t;->a:Ljava/nio/channels/ServerSocketChannel;

    invoke-virtual {v1}, Ljava/nio/channels/ServerSocketChannel;->close()V

    iget-object v1, p0, Lorg/jboss/netty/channel/socket/nio/t;->c:Ljava/nio/channels/Selector;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/nio/channels/Selector;->wakeup()Ljava/nio/channels/Selector;

    :cond_0
    iget-object v1, p0, Lorg/jboss/netty/channel/socket/nio/t;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/nio/t;->setClosed()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Lorg/jboss/netty/channel/ChannelFuture;->setSuccess()Z

    if-eqz v0, :cond_1

    invoke-static {p0}, Lorg/jboss/netty/channel/Channels;->fireChannelUnbound(Lorg/jboss/netty/channel/Channel;)V

    :cond_1
    invoke-static {p0}, Lorg/jboss/netty/channel/Channels;->fireChannelClosed(Lorg/jboss/netty/channel/Channel;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    :try_start_2
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/t;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    :goto_1
    return-void

    :cond_2
    :try_start_3
    invoke-interface {p1}, Lorg/jboss/netty/channel/ChannelFuture;->setSuccess()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_4
    iget-object v1, p0, Lorg/jboss/netty/channel/socket/nio/t;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    invoke-interface {p1, v0}, Lorg/jboss/netty/channel/ChannelFuture;->setFailure(Ljava/lang/Throwable;)Z

    invoke-static {p0, v0}, Lorg/jboss/netty/channel/Channels;->fireExceptionCaught(Lorg/jboss/netty/channel/Channel;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private a(Lorg/jboss/netty/channel/socket/nio/t;Lorg/jboss/netty/channel/ChannelFuture;Ljava/net/SocketAddress;)V
    .locals 6

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p1, Lorg/jboss/netty/channel/socket/nio/t;->a:Ljava/nio/channels/ServerSocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/ServerSocketChannel;->socket()Ljava/net/ServerSocket;

    move-result-object v0

    invoke-virtual {p1}, Lorg/jboss/netty/channel/socket/nio/t;->getConfig()Lorg/jboss/netty/channel/socket/ServerSocketChannelConfig;

    move-result-object v2

    invoke-interface {v2}, Lorg/jboss/netty/channel/socket/ServerSocketChannelConfig;->getBacklog()I

    move-result v2

    invoke-virtual {v0, p3, v2}, Ljava/net/ServerSocket;->bind(Ljava/net/SocketAddress;I)V

    const/4 v1, 0x1

    invoke-interface {p2}, Lorg/jboss/netty/channel/ChannelFuture;->setSuccess()Z

    invoke-virtual {p1}, Lorg/jboss/netty/channel/socket/nio/t;->getLocalAddress()Ljava/net/InetSocketAddress;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/jboss/netty/channel/Channels;->fireChannelBound(Lorg/jboss/netty/channel/Channel;Ljava/net/SocketAddress;)V

    invoke-virtual {p1}, Lorg/jboss/netty/channel/socket/nio/t;->getFactory()Lorg/jboss/netty/channel/ChannelFactory;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/channel/socket/nio/NioServerSocketChannelFactory;

    iget-object v0, v0, Lorg/jboss/netty/channel/socket/nio/NioServerSocketChannelFactory;->bossExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Lorg/jboss/netty/util/ThreadRenamingRunnable;

    new-instance v3, Lorg/jboss/netty/channel/socket/nio/w;

    invoke-direct {v3, p0, p1}, Lorg/jboss/netty/channel/socket/nio/w;-><init>(Lorg/jboss/netty/channel/socket/nio/u;Lorg/jboss/netty/channel/socket/nio/t;)V

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "New I/O server boss #"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p0, Lorg/jboss/netty/channel/socket/nio/u;->c:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x29

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/jboss/netty/util/ThreadRenamingRunnable;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-static {v0, v2}, Lorg/jboss/netty/util/internal/DeadLockProofWorker;->start(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    :try_start_1
    invoke-interface {p2, v0}, Lorg/jboss/netty/channel/ChannelFuture;->setFailure(Ljava/lang/Throwable;)Z

    invoke-static {p1, v0}, Lorg/jboss/netty/channel/Channels;->fireExceptionCaught(Lorg/jboss/netty/channel/Channel;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_0

    invoke-static {p1, p2}, Lorg/jboss/netty/channel/socket/nio/u;->a(Lorg/jboss/netty/channel/socket/nio/t;Lorg/jboss/netty/channel/ChannelFuture;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz v1, :cond_1

    invoke-static {p1, p2}, Lorg/jboss/netty/channel/socket/nio/u;->a(Lorg/jboss/netty/channel/socket/nio/t;Lorg/jboss/netty/channel/ChannelFuture;)V

    :cond_1
    throw v0
.end method


# virtual methods
.method final a()Lorg/jboss/netty/channel/socket/nio/NioWorker;
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/u;->d:Lorg/jboss/netty/channel/socket/nio/WorkerPool;

    invoke-interface {v0}, Lorg/jboss/netty/channel/socket/nio/WorkerPool;->nextWorker()Lorg/jboss/netty/channel/socket/Worker;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/channel/socket/nio/NioWorker;

    return-object v0
.end method

.method public eventSunk(Lorg/jboss/netty/channel/ChannelPipeline;Lorg/jboss/netty/channel/ChannelEvent;)V
    .locals 5

    invoke-interface {p2}, Lorg/jboss/netty/channel/ChannelEvent;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v0

    instance-of v1, v0, Lorg/jboss/netty/channel/socket/nio/t;

    if-eqz v1, :cond_2

    instance-of v0, p2, Lorg/jboss/netty/channel/ChannelStateEvent;

    if-eqz v0, :cond_0

    check-cast p2, Lorg/jboss/netty/channel/ChannelStateEvent;

    invoke-interface {p2}, Lorg/jboss/netty/channel/ChannelStateEvent;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/channel/socket/nio/t;

    invoke-interface {p2}, Lorg/jboss/netty/channel/ChannelStateEvent;->getFuture()Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v2

    invoke-interface {p2}, Lorg/jboss/netty/channel/ChannelStateEvent;->getState()Lorg/jboss/netty/channel/ChannelState;

    move-result-object v3

    invoke-interface {p2}, Lorg/jboss/netty/channel/ChannelStateEvent;->getValue()Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lorg/jboss/netty/channel/socket/nio/v;->a:[I

    invoke-virtual {v3}, Lorg/jboss/netty/channel/ChannelState;->ordinal()I

    move-result v3

    aget v3, v4, v3

    packed-switch v3, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v3, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_1
    invoke-static {v0, v2}, Lorg/jboss/netty/channel/socket/nio/u;->a(Lorg/jboss/netty/channel/socket/nio/t;Lorg/jboss/netty/channel/ChannelFuture;)V

    goto :goto_0

    :pswitch_1
    if-eqz v1, :cond_1

    check-cast v1, Ljava/net/SocketAddress;

    invoke-direct {p0, v0, v2, v1}, Lorg/jboss/netty/channel/socket/nio/u;->a(Lorg/jboss/netty/channel/socket/nio/t;Lorg/jboss/netty/channel/ChannelFuture;Ljava/net/SocketAddress;)V

    goto :goto_0

    :cond_2
    instance-of v0, v0, Lorg/jboss/netty/channel/socket/nio/NioSocketChannel;

    if-eqz v0, :cond_0

    instance-of v0, p2, Lorg/jboss/netty/channel/ChannelStateEvent;

    if-eqz v0, :cond_3

    check-cast p2, Lorg/jboss/netty/channel/ChannelStateEvent;

    invoke-interface {p2}, Lorg/jboss/netty/channel/ChannelStateEvent;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/channel/socket/nio/NioSocketChannel;

    invoke-interface {p2}, Lorg/jboss/netty/channel/ChannelStateEvent;->getFuture()Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v2

    invoke-interface {p2}, Lorg/jboss/netty/channel/ChannelStateEvent;->getState()Lorg/jboss/netty/channel/ChannelState;

    move-result-object v3

    invoke-interface {p2}, Lorg/jboss/netty/channel/ChannelStateEvent;->getValue()Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lorg/jboss/netty/channel/socket/nio/v;->a:[I

    invoke-virtual {v3}, Lorg/jboss/netty/channel/ChannelState;->ordinal()I

    move-result v3

    aget v3, v4, v3

    packed-switch v3, :pswitch_data_1

    goto :goto_0

    :pswitch_2
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v3, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lorg/jboss/netty/channel/socket/nio/NioSocketChannel;->worker:Lorg/jboss/netty/channel/socket/nio/d;

    invoke-virtual {v1, v0, v2}, Lorg/jboss/netty/channel/socket/nio/d;->close(Lorg/jboss/netty/channel/socket/nio/a;Lorg/jboss/netty/channel/ChannelFuture;)V

    goto :goto_0

    :pswitch_3
    if-nez v1, :cond_0

    iget-object v1, v0, Lorg/jboss/netty/channel/socket/nio/NioSocketChannel;->worker:Lorg/jboss/netty/channel/socket/nio/d;

    invoke-virtual {v1, v0, v2}, Lorg/jboss/netty/channel/socket/nio/d;->close(Lorg/jboss/netty/channel/socket/nio/a;Lorg/jboss/netty/channel/ChannelFuture;)V

    goto :goto_0

    :pswitch_4
    iget-object v3, v0, Lorg/jboss/netty/channel/socket/nio/NioSocketChannel;->worker:Lorg/jboss/netty/channel/socket/nio/d;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v3, v0, v2, v1}, Lorg/jboss/netty/channel/socket/nio/d;->setInterestOps(Lorg/jboss/netty/channel/socket/nio/a;Lorg/jboss/netty/channel/ChannelFuture;I)V

    goto :goto_0

    :cond_3
    instance-of v0, p2, Lorg/jboss/netty/channel/MessageEvent;

    if-eqz v0, :cond_0

    check-cast p2, Lorg/jboss/netty/channel/MessageEvent;

    invoke-interface {p2}, Lorg/jboss/netty/channel/MessageEvent;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/channel/socket/nio/NioSocketChannel;

    iget-object v1, v0, Lorg/jboss/netty/channel/socket/nio/NioSocketChannel;->writeBufferQueue:Ljava/util/Queue;

    invoke-interface {v1, p2}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    move-result v1

    sget-boolean v2, Lorg/jboss/netty/channel/socket/nio/u;->e:Z

    if-nez v2, :cond_4

    if-nez v1, :cond_4

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_4
    iget-object v1, v0, Lorg/jboss/netty/channel/socket/nio/NioSocketChannel;->worker:Lorg/jboss/netty/channel/socket/nio/d;

    invoke-virtual {v1, v0}, Lorg/jboss/netty/channel/socket/nio/d;->writeFromUserCode(Lorg/jboss/netty/channel/socket/nio/a;)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
