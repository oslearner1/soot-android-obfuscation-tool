.class Lorg/jboss/netty/channel/socket/nio/i;
.super Lorg/jboss/netty/channel/socket/nio/AbstractNioChannelSink;


# static fields
.field static final a:Lorg/jboss/netty/logging/InternalLogger;

.field private static final d:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static synthetic h:Z


# instance fields
.field final b:Ljava/util/concurrent/Executor;

.field final c:I

.field private final e:[Lorg/jboss/netty/channel/socket/nio/l;

.field private final f:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final g:Lorg/jboss/netty/channel/socket/nio/WorkerPool;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/jboss/netty/channel/socket/nio/i;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/jboss/netty/channel/socket/nio/i;->h:Z

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lorg/jboss/netty/channel/socket/nio/i;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    const-class v0, Lorg/jboss/netty/channel/socket/nio/i;

    invoke-static {v0}, Lorg/jboss/netty/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lorg/jboss/netty/logging/InternalLogger;

    move-result-object v0

    sput-object v0, Lorg/jboss/netty/channel/socket/nio/i;->a:Lorg/jboss/netty/logging/InternalLogger;

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Ljava/util/concurrent/Executor;ILorg/jboss/netty/channel/socket/nio/WorkerPool;)V
    .locals 3

    invoke-direct {p0}, Lorg/jboss/netty/channel/socket/nio/AbstractNioChannelSink;-><init>()V

    sget-object v0, Lorg/jboss/netty/channel/socket/nio/i;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    iput v0, p0, Lorg/jboss/netty/channel/socket/nio/i;->c:I

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lorg/jboss/netty/channel/socket/nio/i;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p1, p0, Lorg/jboss/netty/channel/socket/nio/i;->b:Ljava/util/concurrent/Executor;

    new-array v0, p2, [Lorg/jboss/netty/channel/socket/nio/l;

    iput-object v0, p0, Lorg/jboss/netty/channel/socket/nio/i;->e:[Lorg/jboss/netty/channel/socket/nio/l;

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/jboss/netty/channel/socket/nio/i;->e:[Lorg/jboss/netty/channel/socket/nio/l;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lorg/jboss/netty/channel/socket/nio/i;->e:[Lorg/jboss/netty/channel/socket/nio/l;

    new-instance v2, Lorg/jboss/netty/channel/socket/nio/l;

    invoke-direct {v2, p0, v0}, Lorg/jboss/netty/channel/socket/nio/l;-><init>(Lorg/jboss/netty/channel/socket/nio/i;I)V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iput-object p3, p0, Lorg/jboss/netty/channel/socket/nio/i;->g:Lorg/jboss/netty/channel/socket/nio/WorkerPool;

    return-void
.end method


# virtual methods
.method final a()Lorg/jboss/netty/channel/socket/nio/NioWorker;
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/i;->g:Lorg/jboss/netty/channel/socket/nio/WorkerPool;

    invoke-interface {v0}, Lorg/jboss/netty/channel/socket/nio/WorkerPool;->nextWorker()Lorg/jboss/netty/channel/socket/Worker;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/channel/socket/nio/NioWorker;

    return-object v0
.end method

.method public eventSunk(Lorg/jboss/netty/channel/ChannelPipeline;Lorg/jboss/netty/channel/ChannelEvent;)V
    .locals 5

    instance-of v0, p2, Lorg/jboss/netty/channel/ChannelStateEvent;

    if-eqz v0, :cond_4

    check-cast p2, Lorg/jboss/netty/channel/ChannelStateEvent;

    invoke-interface {p2}, Lorg/jboss/netty/channel/ChannelStateEvent;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/channel/socket/nio/h;

    invoke-interface {p2}, Lorg/jboss/netty/channel/ChannelStateEvent;->getFuture()Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v3

    invoke-interface {p2}, Lorg/jboss/netty/channel/ChannelStateEvent;->getState()Lorg/jboss/netty/channel/ChannelState;

    move-result-object v2

    invoke-interface {p2}, Lorg/jboss/netty/channel/ChannelStateEvent;->getValue()Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lorg/jboss/netty/channel/socket/nio/k;->a:[I

    invoke-virtual {v2}, Lorg/jboss/netty/channel/ChannelState;->ordinal()I

    move-result v2

    aget v2, v4, v2

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v2, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lorg/jboss/netty/channel/socket/nio/h;->worker:Lorg/jboss/netty/channel/socket/nio/d;

    invoke-virtual {v1, v0, v3}, Lorg/jboss/netty/channel/socket/nio/d;->close(Lorg/jboss/netty/channel/socket/nio/a;Lorg/jboss/netty/channel/ChannelFuture;)V

    goto :goto_0

    :pswitch_1
    if-eqz v1, :cond_1

    check-cast v1, Ljava/net/SocketAddress;

    :try_start_0
    iget-object v2, v0, Lorg/jboss/netty/channel/socket/nio/h;->channel:Ljava/nio/channels/SelectableChannel;

    check-cast v2, Ljava/nio/channels/SocketChannel;

    invoke-virtual {v2}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/net/Socket;->bind(Ljava/net/SocketAddress;)V

    const/4 v1, 0x1

    iput-boolean v1, v0, Lorg/jboss/netty/channel/socket/nio/h;->b:Z

    invoke-virtual {v0}, Lorg/jboss/netty/channel/socket/nio/h;->setBound()V

    invoke-interface {v3}, Lorg/jboss/netty/channel/ChannelFuture;->setSuccess()Z

    invoke-virtual {v0}, Lorg/jboss/netty/channel/socket/nio/h;->getLocalAddress()Ljava/net/InetSocketAddress;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/jboss/netty/channel/Channels;->fireChannelBound(Lorg/jboss/netty/channel/Channel;Ljava/net/SocketAddress;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-interface {v3, v1}, Lorg/jboss/netty/channel/ChannelFuture;->setFailure(Ljava/lang/Throwable;)Z

    invoke-static {v0, v1}, Lorg/jboss/netty/channel/Channels;->fireExceptionCaught(Lorg/jboss/netty/channel/Channel;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    iget-object v1, v0, Lorg/jboss/netty/channel/socket/nio/h;->worker:Lorg/jboss/netty/channel/socket/nio/d;

    invoke-virtual {v1, v0, v3}, Lorg/jboss/netty/channel/socket/nio/d;->close(Lorg/jboss/netty/channel/socket/nio/a;Lorg/jboss/netty/channel/ChannelFuture;)V

    goto :goto_0

    :pswitch_2
    if-eqz v1, :cond_3

    check-cast v1, Ljava/net/SocketAddress;

    :try_start_1
    iget-object v2, v0, Lorg/jboss/netty/channel/socket/nio/h;->channel:Ljava/nio/channels/SelectableChannel;

    check-cast v2, Ljava/nio/channels/SocketChannel;

    invoke-virtual {v2, v1}, Ljava/nio/channels/SocketChannel;->connect(Ljava/net/SocketAddress;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, v0, Lorg/jboss/netty/channel/socket/nio/h;->worker:Lorg/jboss/netty/channel/socket/nio/d;

    invoke-virtual {v1, v0, v3}, Lorg/jboss/netty/channel/socket/nio/d;->register(Lorg/jboss/netty/channel/socket/nio/a;Lorg/jboss/netty/channel/ChannelFuture;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    invoke-interface {v3, v1}, Lorg/jboss/netty/channel/ChannelFuture;->setFailure(Ljava/lang/Throwable;)Z

    invoke-static {v0, v1}, Lorg/jboss/netty/channel/Channels;->fireExceptionCaught(Lorg/jboss/netty/channel/Channel;Ljava/lang/Throwable;)V

    iget-object v1, v0, Lorg/jboss/netty/channel/socket/nio/h;->worker:Lorg/jboss/netty/channel/socket/nio/d;

    invoke-static {v0}, Lorg/jboss/netty/channel/Channels;->succeededFuture(Lorg/jboss/netty/channel/Channel;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/jboss/netty/channel/socket/nio/d;->close(Lorg/jboss/netty/channel/socket/nio/a;Lorg/jboss/netty/channel/ChannelFuture;)V

    goto :goto_0

    :cond_2
    :try_start_2
    invoke-virtual {v0}, Lorg/jboss/netty/channel/socket/nio/h;->getCloseFuture()Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v1

    new-instance v2, Lorg/jboss/netty/channel/socket/nio/j;

    invoke-direct {v2, p0, v3}, Lorg/jboss/netty/channel/socket/nio/j;-><init>(Lorg/jboss/netty/channel/socket/nio/i;Lorg/jboss/netty/channel/ChannelFuture;)V

    invoke-interface {v1, v2}, Lorg/jboss/netty/channel/ChannelFuture;->addListener(Lorg/jboss/netty/channel/ChannelFutureListener;)V

    sget-object v1, Lorg/jboss/netty/channel/ChannelFutureListener;->CLOSE_ON_FAILURE:Lorg/jboss/netty/channel/ChannelFutureListener;

    invoke-interface {v3, v1}, Lorg/jboss/netty/channel/ChannelFuture;->addListener(Lorg/jboss/netty/channel/ChannelFutureListener;)V

    iput-object v3, v0, Lorg/jboss/netty/channel/socket/nio/h;->a:Lorg/jboss/netty/channel/ChannelFuture;

    iget-object v1, p0, Lorg/jboss/netty/channel/socket/nio/i;->e:[Lorg/jboss/netty/channel/socket/nio/l;

    iget-object v2, p0, Lorg/jboss/netty/channel/socket/nio/i;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v2

    iget-object v4, p0, Lorg/jboss/netty/channel/socket/nio/i;->e:[Lorg/jboss/netty/channel/socket/nio/l;

    array-length v4, v4

    rem-int/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v1, v0}, Lorg/jboss/netty/channel/socket/nio/l;->a(Lorg/jboss/netty/channel/socket/nio/h;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    :cond_3
    iget-object v1, v0, Lorg/jboss/netty/channel/socket/nio/h;->worker:Lorg/jboss/netty/channel/socket/nio/d;

    invoke-virtual {v1, v0, v3}, Lorg/jboss/netty/channel/socket/nio/d;->close(Lorg/jboss/netty/channel/socket/nio/a;Lorg/jboss/netty/channel/ChannelFuture;)V

    goto/16 :goto_0

    :pswitch_3
    iget-object v2, v0, Lorg/jboss/netty/channel/socket/nio/h;->worker:Lorg/jboss/netty/channel/socket/nio/d;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v0, v3, v1}, Lorg/jboss/netty/channel/socket/nio/d;->setInterestOps(Lorg/jboss/netty/channel/socket/nio/a;Lorg/jboss/netty/channel/ChannelFuture;I)V

    goto/16 :goto_0

    :cond_4
    instance-of v0, p2, Lorg/jboss/netty/channel/MessageEvent;

    if-eqz v0, :cond_0

    check-cast p2, Lorg/jboss/netty/channel/MessageEvent;

    invoke-interface {p2}, Lorg/jboss/netty/channel/MessageEvent;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/channel/socket/nio/NioSocketChannel;

    iget-object v1, v0, Lorg/jboss/netty/channel/socket/nio/NioSocketChannel;->writeBufferQueue:Ljava/util/Queue;

    invoke-interface {v1, p2}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    move-result v1

    sget-boolean v2, Lorg/jboss/netty/channel/socket/nio/i;->h:Z

    if-nez v2, :cond_5

    if-nez v1, :cond_5

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_5
    iget-object v1, v0, Lorg/jboss/netty/channel/socket/nio/NioSocketChannel;->worker:Lorg/jboss/netty/channel/socket/nio/d;

    invoke-virtual {v1, v0}, Lorg/jboss/netty/channel/socket/nio/d;->writeFromUserCode(Lorg/jboss/netty/channel/socket/nio/a;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
