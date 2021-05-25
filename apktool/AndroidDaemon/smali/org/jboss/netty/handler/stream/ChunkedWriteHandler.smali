.class public Lorg/jboss/netty/handler/stream/ChunkedWriteHandler;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/jboss/netty/channel/ChannelDownstreamHandler;
.implements Lorg/jboss/netty/channel/ChannelUpstreamHandler;
.implements Lorg/jboss/netty/channel/LifeCycleAwareChannelHandler;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final logger:Lorg/jboss/netty/logging/InternalLogger;


# instance fields
.field private volatile ctx:Lorg/jboss/netty/channel/ChannelHandlerContext;

.field private currentEvent:Lorg/jboss/netty/channel/MessageEvent;

.field private final flush:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final queue:Ljava/util/Queue;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/jboss/netty/handler/stream/ChunkedWriteHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/jboss/netty/handler/stream/ChunkedWriteHandler;->$assertionsDisabled:Z

    const-class v0, Lorg/jboss/netty/handler/stream/ChunkedWriteHandler;

    invoke-static {v0}, Lorg/jboss/netty/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lorg/jboss/netty/logging/InternalLogger;

    move-result-object v0

    sput-object v0, Lorg/jboss/netty/handler/stream/ChunkedWriteHandler;->logger:Lorg/jboss/netty/logging/InternalLogger;

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lorg/jboss/netty/handler/stream/ChunkedWriteHandler;->queue:Ljava/util/Queue;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lorg/jboss/netty/handler/stream/ChunkedWriteHandler;->flush:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method static closeInput(Lorg/jboss/netty/handler/stream/ChunkedInput;)V
    .locals 3

    :try_start_0
    invoke-interface {p0}, Lorg/jboss/netty/handler/stream/ChunkedInput;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lorg/jboss/netty/handler/stream/ChunkedWriteHandler;->logger:Lorg/jboss/netty/logging/InternalLogger;

    invoke-interface {v1}, Lorg/jboss/netty/logging/InternalLogger;->isWarnEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lorg/jboss/netty/handler/stream/ChunkedWriteHandler;->logger:Lorg/jboss/netty/logging/InternalLogger;

    const-string v2, "Failed to close a chunked input."

    invoke-interface {v1, v2, v0}, Lorg/jboss/netty/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private discard(Lorg/jboss/netty/channel/ChannelHandlerContext;Z)V
    .locals 5

    const/4 v2, 0x0

    move-object v1, v2

    :goto_0
    iget-object v0, p0, Lorg/jboss/netty/handler/stream/ChunkedWriteHandler;->currentEvent:Lorg/jboss/netty/channel/MessageEvent;

    iget-object v3, p0, Lorg/jboss/netty/handler/stream/ChunkedWriteHandler;->currentEvent:Lorg/jboss/netty/channel/MessageEvent;

    if-nez v3, :cond_1

    iget-object v0, p0, Lorg/jboss/netty/handler/stream/ChunkedWriteHandler;->queue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/channel/MessageEvent;

    move-object v3, v0

    :goto_1
    if-eqz v3, :cond_2

    invoke-interface {v3}, Lorg/jboss/netty/channel/MessageEvent;->getMessage()Ljava/lang/Object;

    move-result-object v0

    instance-of v4, v0, Lorg/jboss/netty/handler/stream/ChunkedInput;

    if-eqz v4, :cond_0

    check-cast v0, Lorg/jboss/netty/handler/stream/ChunkedInput;

    invoke-static {v0}, Lorg/jboss/netty/handler/stream/ChunkedWriteHandler;->closeInput(Lorg/jboss/netty/handler/stream/ChunkedInput;)V

    :cond_0
    if-nez v1, :cond_5

    new-instance v0, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v0}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    :goto_2
    invoke-interface {v3}, Lorg/jboss/netty/channel/MessageEvent;->getFuture()Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/jboss/netty/channel/ChannelFuture;->setFailure(Ljava/lang/Throwable;)Z

    move-object v1, v0

    goto :goto_0

    :cond_1
    iput-object v2, p0, Lorg/jboss/netty/handler/stream/ChunkedWriteHandler;->currentEvent:Lorg/jboss/netty/channel/MessageEvent;

    move-object v3, v0

    goto :goto_1

    :cond_2
    if-eqz v1, :cond_3

    if-eqz p2, :cond_4

    invoke-interface {p1}, Lorg/jboss/netty/channel/ChannelHandlerContext;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v0

    invoke-static {v0, v1}, Lorg/jboss/netty/channel/Channels;->fireExceptionCaught(Lorg/jboss/netty/channel/Channel;Ljava/lang/Throwable;)V

    :cond_3
    :goto_3
    return-void

    :cond_4
    invoke-interface {p1}, Lorg/jboss/netty/channel/ChannelHandlerContext;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v0

    invoke-static {v0, v1}, Lorg/jboss/netty/channel/Channels;->fireExceptionCaughtLater(Lorg/jboss/netty/channel/Channel;Ljava/lang/Throwable;)Lorg/jboss/netty/channel/ChannelFuture;

    goto :goto_3

    :cond_5
    move-object v0, v1

    goto :goto_2
.end method

.method private flush(Lorg/jboss/netty/channel/ChannelHandlerContext;Z)V
    .locals 9

    const/4 v2, 0x1

    const/4 v3, 0x0

    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/jboss/netty/channel/ChannelHandlerContext;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v5

    iget-object v0, p0, Lorg/jboss/netty/handler/stream/ChunkedWriteHandler;->flush:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v3, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v6

    if-eqz v6, :cond_8

    :try_start_0
    invoke-interface {v5}, Lorg/jboss/netty/channel/Channel;->isConnected()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0, p1, p2}, Lorg/jboss/netty/handler/stream/ChunkedWriteHandler;->discard(Lorg/jboss/netty/channel/ChannelHandlerContext;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lorg/jboss/netty/handler/stream/ChunkedWriteHandler;->flush:Ljava/util/concurrent/atomic/AtomicBoolean;

    :goto_1
    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_1
    return-void

    :cond_2
    :try_start_1
    invoke-interface {v5}, Lorg/jboss/netty/channel/Channel;->isWritable()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lorg/jboss/netty/handler/stream/ChunkedWriteHandler;->currentEvent:Lorg/jboss/netty/channel/MessageEvent;

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/jboss/netty/handler/stream/ChunkedWriteHandler;->queue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/channel/MessageEvent;

    iput-object v0, p0, Lorg/jboss/netty/handler/stream/ChunkedWriteHandler;->currentEvent:Lorg/jboss/netty/channel/MessageEvent;

    :cond_3
    iget-object v0, p0, Lorg/jboss/netty/handler/stream/ChunkedWriteHandler;->currentEvent:Lorg/jboss/netty/channel/MessageEvent;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lorg/jboss/netty/handler/stream/ChunkedWriteHandler;->currentEvent:Lorg/jboss/netty/channel/MessageEvent;

    invoke-interface {v0}, Lorg/jboss/netty/channel/MessageEvent;->getFuture()Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v0

    invoke-interface {v0}, Lorg/jboss/netty/channel/ChannelFuture;->isDone()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jboss/netty/handler/stream/ChunkedWriteHandler;->currentEvent:Lorg/jboss/netty/channel/MessageEvent;

    :goto_2
    invoke-interface {v5}, Lorg/jboss/netty/channel/Channel;->isConnected()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0, p1, p2}, Lorg/jboss/netty/handler/stream/ChunkedWriteHandler;->discard(Lorg/jboss/netty/channel/ChannelHandlerContext;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lorg/jboss/netty/handler/stream/ChunkedWriteHandler;->flush:Ljava/util/concurrent/atomic/AtomicBoolean;

    goto :goto_1

    :cond_4
    :try_start_2
    iget-object v7, p0, Lorg/jboss/netty/handler/stream/ChunkedWriteHandler;->currentEvent:Lorg/jboss/netty/channel/MessageEvent;

    invoke-interface {v7}, Lorg/jboss/netty/channel/MessageEvent;->getMessage()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lorg/jboss/netty/handler/stream/ChunkedInput;

    if-eqz v1, :cond_b

    check-cast v0, Lorg/jboss/netty/handler/stream/ChunkedInput;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-interface {v0}, Lorg/jboss/netty/handler/stream/ChunkedInput;->nextChunk()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Lorg/jboss/netty/handler/stream/ChunkedInput;->isEndOfInput()Z

    move-result v8

    if-nez v1, :cond_6

    sget-object v4, Lorg/jboss/netty/buffer/ChannelBuffers;->EMPTY_BUFFER:Lorg/jboss/netty/buffer/ChannelBuffer;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v8, :cond_5

    move v1, v2

    :goto_3
    if-nez v1, :cond_7

    if-eqz v8, :cond_a

    const/4 v1, 0x0

    :try_start_4
    iput-object v1, p0, Lorg/jboss/netty/handler/stream/ChunkedWriteHandler;->currentEvent:Lorg/jboss/netty/channel/MessageEvent;

    invoke-interface {v7}, Lorg/jboss/netty/channel/MessageEvent;->getFuture()Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v1

    new-instance v8, Lorg/jboss/netty/handler/stream/a;

    invoke-direct {v8, p0, v0}, Lorg/jboss/netty/handler/stream/a;-><init>(Lorg/jboss/netty/handler/stream/ChunkedWriteHandler;Lorg/jboss/netty/handler/stream/ChunkedInput;)V

    invoke-interface {v1, v8}, Lorg/jboss/netty/channel/ChannelFuture;->addListener(Lorg/jboss/netty/channel/ChannelFutureListener;)V

    move-object v0, v1

    :goto_4
    invoke-interface {v7}, Lorg/jboss/netty/channel/MessageEvent;->getRemoteAddress()Ljava/net/SocketAddress;

    move-result-object v1

    invoke-static {p1, v0, v4, v1}, Lorg/jboss/netty/channel/Channels;->write(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelFuture;Ljava/lang/Object;Ljava/net/SocketAddress;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/jboss/netty/handler/stream/ChunkedWriteHandler;->flush:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    throw v0

    :cond_5
    move v1, v3

    goto :goto_3

    :cond_6
    move-object v4, v1

    move v1, v3

    goto :goto_3

    :catch_0
    move-exception v1

    const/4 v4, 0x0

    :try_start_5
    iput-object v4, p0, Lorg/jboss/netty/handler/stream/ChunkedWriteHandler;->currentEvent:Lorg/jboss/netty/channel/MessageEvent;

    invoke-interface {v7}, Lorg/jboss/netty/channel/MessageEvent;->getFuture()Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v4

    invoke-interface {v4, v1}, Lorg/jboss/netty/channel/ChannelFuture;->setFailure(Ljava/lang/Throwable;)Z

    if-eqz p2, :cond_9

    invoke-static {p1, v1}, Lorg/jboss/netty/channel/Channels;->fireExceptionCaught(Lorg/jboss/netty/channel/ChannelHandlerContext;Ljava/lang/Throwable;)V

    :goto_5
    invoke-static {v0}, Lorg/jboss/netty/handler/stream/ChunkedWriteHandler;->closeInput(Lorg/jboss/netty/handler/stream/ChunkedInput;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_7
    iget-object v0, p0, Lorg/jboss/netty/handler/stream/ChunkedWriteHandler;->flush:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_8
    if-eqz v6, :cond_1

    invoke-interface {v5}, Lorg/jboss/netty/channel/Channel;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v5}, Lorg/jboss/netty/channel/Channel;->isWritable()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/jboss/netty/handler/stream/ChunkedWriteHandler;->queue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_0

    :cond_9
    :try_start_6
    invoke-static {p1, v1}, Lorg/jboss/netty/channel/Channels;->fireExceptionCaughtLater(Lorg/jboss/netty/channel/ChannelHandlerContext;Ljava/lang/Throwable;)Lorg/jboss/netty/channel/ChannelFuture;

    goto :goto_5

    :cond_a
    invoke-static {v5}, Lorg/jboss/netty/channel/Channels;->future(Lorg/jboss/netty/channel/Channel;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v0

    new-instance v1, Lorg/jboss/netty/handler/stream/b;

    invoke-direct {v1, p0, v7}, Lorg/jboss/netty/handler/stream/b;-><init>(Lorg/jboss/netty/handler/stream/ChunkedWriteHandler;Lorg/jboss/netty/channel/MessageEvent;)V

    invoke-interface {v0, v1}, Lorg/jboss/netty/channel/ChannelFuture;->addListener(Lorg/jboss/netty/channel/ChannelFutureListener;)V

    goto :goto_4

    :cond_b
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jboss/netty/handler/stream/ChunkedWriteHandler;->currentEvent:Lorg/jboss/netty/channel/MessageEvent;

    invoke-interface {p1, v7}, Lorg/jboss/netty/channel/ChannelHandlerContext;->sendDownstream(Lorg/jboss/netty/channel/ChannelEvent;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_2
.end method


# virtual methods
.method public afterAdd(Lorg/jboss/netty/channel/ChannelHandlerContext;)V
    .locals 0

    return-void
.end method

.method public afterRemove(Lorg/jboss/netty/channel/ChannelHandlerContext;)V
    .locals 5

    const/4 v3, 0x0

    const/4 v0, 0x0

    move v2, v0

    move-object v1, v3

    :goto_0
    iget-object v0, p0, Lorg/jboss/netty/handler/stream/ChunkedWriteHandler;->currentEvent:Lorg/jboss/netty/channel/MessageEvent;

    iget-object v4, p0, Lorg/jboss/netty/handler/stream/ChunkedWriteHandler;->currentEvent:Lorg/jboss/netty/channel/MessageEvent;

    if-nez v4, :cond_1

    iget-object v0, p0, Lorg/jboss/netty/handler/stream/ChunkedWriteHandler;->queue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/channel/MessageEvent;

    move-object v4, v0

    :goto_1
    if-eqz v4, :cond_2

    invoke-interface {v4}, Lorg/jboss/netty/channel/MessageEvent;->getMessage()Ljava/lang/Object;

    move-result-object v0

    instance-of v2, v0, Lorg/jboss/netty/handler/stream/ChunkedInput;

    if-eqz v2, :cond_0

    check-cast v0, Lorg/jboss/netty/handler/stream/ChunkedInput;

    invoke-static {v0}, Lorg/jboss/netty/handler/stream/ChunkedWriteHandler;->closeInput(Lorg/jboss/netty/handler/stream/ChunkedInput;)V

    :cond_0
    if-nez v1, :cond_4

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Unable to flush event, discarding"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    :goto_2
    invoke-interface {v4}, Lorg/jboss/netty/channel/MessageEvent;->getFuture()Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/jboss/netty/channel/ChannelFuture;->setFailure(Ljava/lang/Throwable;)Z

    const/4 v1, 0x1

    move v2, v1

    move-object v1, v0

    goto :goto_0

    :cond_1
    iput-object v3, p0, Lorg/jboss/netty/handler/stream/ChunkedWriteHandler;->currentEvent:Lorg/jboss/netty/channel/MessageEvent;

    move-object v4, v0

    goto :goto_1

    :cond_2
    if-eqz v2, :cond_3

    invoke-interface {p1}, Lorg/jboss/netty/channel/ChannelHandlerContext;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v0

    invoke-static {v0, v1}, Lorg/jboss/netty/channel/Channels;->fireExceptionCaughtLater(Lorg/jboss/netty/channel/Channel;Ljava/lang/Throwable;)Lorg/jboss/netty/channel/ChannelFuture;

    :cond_3
    return-void

    :cond_4
    move-object v0, v1

    goto :goto_2
.end method

.method public beforeAdd(Lorg/jboss/netty/channel/ChannelHandlerContext;)V
    .locals 0

    return-void
.end method

.method public beforeRemove(Lorg/jboss/netty/channel/ChannelHandlerContext;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/jboss/netty/handler/stream/ChunkedWriteHandler;->flush(Lorg/jboss/netty/channel/ChannelHandlerContext;Z)V

    return-void
.end method

.method public handleDownstream(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelEvent;)V
    .locals 2

    instance-of v0, p2, Lorg/jboss/netty/channel/MessageEvent;

    if-nez v0, :cond_1

    invoke-interface {p1, p2}, Lorg/jboss/netty/channel/ChannelHandlerContext;->sendDownstream(Lorg/jboss/netty/channel/ChannelEvent;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lorg/jboss/netty/handler/stream/ChunkedWriteHandler;->queue:Ljava/util/Queue;

    check-cast p2, Lorg/jboss/netty/channel/MessageEvent;

    invoke-interface {v0, p2}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    move-result v0

    sget-boolean v1, Lorg/jboss/netty/handler/stream/ChunkedWriteHandler;->$assertionsDisabled:Z

    if-nez v1, :cond_2

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_2
    invoke-interface {p1}, Lorg/jboss/netty/channel/ChannelHandlerContext;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v0

    invoke-interface {v0}, Lorg/jboss/netty/channel/Channel;->isWritable()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-interface {v0}, Lorg/jboss/netty/channel/Channel;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    :cond_3
    iput-object p1, p0, Lorg/jboss/netty/handler/stream/ChunkedWriteHandler;->ctx:Lorg/jboss/netty/channel/ChannelHandlerContext;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/jboss/netty/handler/stream/ChunkedWriteHandler;->flush(Lorg/jboss/netty/channel/ChannelHandlerContext;Z)V

    goto :goto_0
.end method

.method public handleUpstream(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelEvent;)V
    .locals 4

    const/4 v3, 0x1

    instance-of v0, p2, Lorg/jboss/netty/channel/ChannelStateEvent;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lorg/jboss/netty/channel/ChannelStateEvent;

    sget-object v1, Lorg/jboss/netty/handler/stream/c;->a:[I

    invoke-interface {v0}, Lorg/jboss/netty/channel/ChannelStateEvent;->getState()Lorg/jboss/netty/channel/ChannelState;

    move-result-object v2

    invoke-virtual {v2}, Lorg/jboss/netty/channel/ChannelState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    invoke-interface {p1, p2}, Lorg/jboss/netty/channel/ChannelHandlerContext;->sendUpstream(Lorg/jboss/netty/channel/ChannelEvent;)V

    return-void

    :pswitch_0
    invoke-direct {p0, p1, v3}, Lorg/jboss/netty/handler/stream/ChunkedWriteHandler;->flush(Lorg/jboss/netty/channel/ChannelHandlerContext;Z)V

    goto :goto_0

    :pswitch_1
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0}, Lorg/jboss/netty/channel/ChannelStateEvent;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1, v3}, Lorg/jboss/netty/handler/stream/ChunkedWriteHandler;->flush(Lorg/jboss/netty/channel/ChannelHandlerContext;Z)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public resumeTransfer()V
    .locals 3

    iget-object v0, p0, Lorg/jboss/netty/handler/stream/ChunkedWriteHandler;->ctx:Lorg/jboss/netty/channel/ChannelHandlerContext;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0, v0, v1}, Lorg/jboss/netty/handler/stream/ChunkedWriteHandler;->flush(Lorg/jboss/netty/channel/ChannelHandlerContext;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lorg/jboss/netty/handler/stream/ChunkedWriteHandler;->logger:Lorg/jboss/netty/logging/InternalLogger;

    invoke-interface {v1}, Lorg/jboss/netty/logging/InternalLogger;->isWarnEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lorg/jboss/netty/handler/stream/ChunkedWriteHandler;->logger:Lorg/jboss/netty/logging/InternalLogger;

    const-string v2, "Unexpected exception while sending chunks."

    invoke-interface {v1, v2, v0}, Lorg/jboss/netty/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
