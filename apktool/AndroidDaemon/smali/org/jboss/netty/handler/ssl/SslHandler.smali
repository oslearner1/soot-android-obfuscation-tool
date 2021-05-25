.class public Lorg/jboss/netty/handler/ssl/SslHandler;
.super Lorg/jboss/netty/handler/codec/frame/FrameDecoder;

# interfaces
.implements Lorg/jboss/netty/channel/ChannelDownstreamHandler;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final EMPTY_BUFFER:Ljava/nio/ByteBuffer;

.field private static final IGNORABLE_CLASS_IN_STACK:Ljava/util/regex/Pattern;

.field private static final IGNORABLE_ERROR_MESSAGE:Ljava/util/regex/Pattern;

.field private static defaultBufferPool:Lorg/jboss/netty/handler/ssl/SslBufferPool;

.field private static final logger:Lorg/jboss/netty/logging/InternalLogger;


# instance fields
.field private final bufferPool:Lorg/jboss/netty/handler/ssl/SslBufferPool;

.field private closeOnSSLException:Z

.field private volatile ctx:Lorg/jboss/netty/channel/ChannelHandlerContext;

.field private final delegatedTaskExecutor:Ljava/util/concurrent/Executor;

.field private volatile enableRenegotiation:Z

.field private final engine:Ljavax/net/ssl/SSLEngine;

.field private volatile handshakeFuture:Lorg/jboss/netty/channel/ChannelFuture;

.field final handshakeLock:Ljava/lang/Object;

.field private volatile handshaken:Z

.field private handshaking:Z

.field ignoreClosedChannelException:I

.field final ignoreClosedChannelExceptionLock:Ljava/lang/Object;

.field private volatile issueHandshake:Z

.field private final pendingEncryptedWrites:Ljava/util/Queue;

.field private final pendingEncryptedWritesLock:Lorg/jboss/netty/util/internal/NonReentrantLock;

.field private final pendingUnencryptedWrites:Ljava/util/Queue;

.field private final sentCloseNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final sentFirstMessage:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final sslEngineCloseFuture:Lorg/jboss/netty/handler/ssl/h;

.field private final startTls:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const-class v0, Lorg/jboss/netty/handler/ssl/SslHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/jboss/netty/handler/ssl/SslHandler;->$assertionsDisabled:Z

    const-class v0, Lorg/jboss/netty/handler/ssl/SslHandler;

    invoke-static {v0}, Lorg/jboss/netty/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lorg/jboss/netty/logging/InternalLogger;

    move-result-object v0

    sput-object v0, Lorg/jboss/netty/handler/ssl/SslHandler;->logger:Lorg/jboss/netty/logging/InternalLogger;

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sput-object v0, Lorg/jboss/netty/handler/ssl/SslHandler;->EMPTY_BUFFER:Ljava/nio/ByteBuffer;

    const-string v0, "^.*(Socket|DatagramChannel|SctpChannel).*$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/jboss/netty/handler/ssl/SslHandler;->IGNORABLE_CLASS_IN_STACK:Ljava/util/regex/Pattern;

    const-string v0, "^.*(?:connection.*reset|connection.*closed|broken.*pipe).*$"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/jboss/netty/handler/ssl/SslHandler;->IGNORABLE_ERROR_MESSAGE:Ljava/util/regex/Pattern;

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public constructor <init>(Ljavax/net/ssl/SSLEngine;)V
    .locals 2

    invoke-static {}, Lorg/jboss/netty/handler/ssl/SslHandler;->getDefaultBufferPool()Lorg/jboss/netty/handler/ssl/SslBufferPool;

    move-result-object v0

    sget-object v1, Lorg/jboss/netty/handler/ssl/a;->a:Lorg/jboss/netty/handler/ssl/a;

    invoke-direct {p0, p1, v0, v1}, Lorg/jboss/netty/handler/ssl/SslHandler;-><init>(Ljavax/net/ssl/SSLEngine;Lorg/jboss/netty/handler/ssl/SslBufferPool;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public constructor <init>(Ljavax/net/ssl/SSLEngine;Ljava/util/concurrent/Executor;)V
    .locals 1

    invoke-static {}, Lorg/jboss/netty/handler/ssl/SslHandler;->getDefaultBufferPool()Lorg/jboss/netty/handler/ssl/SslBufferPool;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lorg/jboss/netty/handler/ssl/SslHandler;-><init>(Ljavax/net/ssl/SSLEngine;Lorg/jboss/netty/handler/ssl/SslBufferPool;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public constructor <init>(Ljavax/net/ssl/SSLEngine;Lorg/jboss/netty/handler/ssl/SslBufferPool;)V
    .locals 1

    sget-object v0, Lorg/jboss/netty/handler/ssl/a;->a:Lorg/jboss/netty/handler/ssl/a;

    invoke-direct {p0, p1, p2, v0}, Lorg/jboss/netty/handler/ssl/SslHandler;-><init>(Ljavax/net/ssl/SSLEngine;Lorg/jboss/netty/handler/ssl/SslBufferPool;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public constructor <init>(Ljavax/net/ssl/SSLEngine;Lorg/jboss/netty/handler/ssl/SslBufferPool;Ljava/util/concurrent/Executor;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lorg/jboss/netty/handler/ssl/SslHandler;-><init>(Ljavax/net/ssl/SSLEngine;Lorg/jboss/netty/handler/ssl/SslBufferPool;ZLjava/util/concurrent/Executor;)V

    return-void
.end method

.method public constructor <init>(Ljavax/net/ssl/SSLEngine;Lorg/jboss/netty/handler/ssl/SslBufferPool;Z)V
    .locals 1

    sget-object v0, Lorg/jboss/netty/handler/ssl/a;->a:Lorg/jboss/netty/handler/ssl/a;

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/jboss/netty/handler/ssl/SslHandler;-><init>(Ljavax/net/ssl/SSLEngine;Lorg/jboss/netty/handler/ssl/SslBufferPool;ZLjava/util/concurrent/Executor;)V

    return-void
.end method

.method public constructor <init>(Ljavax/net/ssl/SSLEngine;Lorg/jboss/netty/handler/ssl/SslBufferPool;ZLjava/util/concurrent/Executor;)V
    .locals 2

    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/frame/FrameDecoder;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->enableRenegotiation:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->handshakeLock:Ljava/lang/Object;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->sentFirstMessage:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->sentCloseNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->ignoreClosedChannelExceptionLock:Ljava/lang/Object;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->pendingUnencryptedWrites:Ljava/util/Queue;

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->pendingEncryptedWrites:Ljava/util/Queue;

    new-instance v0, Lorg/jboss/netty/util/internal/NonReentrantLock;

    invoke-direct {v0}, Lorg/jboss/netty/util/internal/NonReentrantLock;-><init>()V

    iput-object v0, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->pendingEncryptedWritesLock:Lorg/jboss/netty/util/internal/NonReentrantLock;

    new-instance v0, Lorg/jboss/netty/handler/ssl/h;

    invoke-direct {v0, p0}, Lorg/jboss/netty/handler/ssl/h;-><init>(Lorg/jboss/netty/handler/ssl/SslHandler;)V

    iput-object v0, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->sslEngineCloseFuture:Lorg/jboss/netty/handler/ssl/h;

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "engine"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "bufferPool"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-nez p4, :cond_2

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "delegatedTaskExecutor"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iput-object p1, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->engine:Ljavax/net/ssl/SSLEngine;

    iput-object p2, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->bufferPool:Lorg/jboss/netty/handler/ssl/SslBufferPool;

    iput-object p4, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->delegatedTaskExecutor:Ljava/util/concurrent/Executor;

    iput-boolean p3, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->startTls:Z

    return-void
.end method

.method public constructor <init>(Ljavax/net/ssl/SSLEngine;Z)V
    .locals 1

    invoke-static {}, Lorg/jboss/netty/handler/ssl/SslHandler;->getDefaultBufferPool()Lorg/jboss/netty/handler/ssl/SslBufferPool;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lorg/jboss/netty/handler/ssl/SslHandler;-><init>(Ljavax/net/ssl/SSLEngine;Lorg/jboss/netty/handler/ssl/SslBufferPool;Z)V

    return-void
.end method

.method public constructor <init>(Ljavax/net/ssl/SSLEngine;ZLjava/util/concurrent/Executor;)V
    .locals 1

    invoke-static {}, Lorg/jboss/netty/handler/ssl/SslHandler;->getDefaultBufferPool()Lorg/jboss/netty/handler/ssl/SslBufferPool;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2, p3}, Lorg/jboss/netty/handler/ssl/SslHandler;-><init>(Ljavax/net/ssl/SSLEngine;Lorg/jboss/netty/handler/ssl/SslBufferPool;ZLjava/util/concurrent/Executor;)V

    return-void
.end method

.method static synthetic access$000(Lorg/jboss/netty/handler/ssl/SslHandler;)Lorg/jboss/netty/channel/ChannelHandlerContext;
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->ctx:Lorg/jboss/netty/channel/ChannelHandlerContext;

    return-object v0
.end method

.method private closeOutboundAndChannel(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelStateEvent;)V
    .locals 8

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-interface {p2}, Lorg/jboss/netty/channel/ChannelStateEvent;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v0

    invoke-interface {v0}, Lorg/jboss/netty/channel/Channel;->isConnected()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p1, p2}, Lorg/jboss/netty/channel/ChannelHandlerContext;->sendDownstream(Lorg/jboss/netty/channel/ChannelEvent;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    invoke-interface {p2}, Lorg/jboss/netty/channel/ChannelStateEvent;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v2

    sget-object v3, Lorg/jboss/netty/buffer/ChannelBuffers;->EMPTY_BUFFER:Lorg/jboss/netty/buffer/ChannelBuffer;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lorg/jboss/netty/handler/ssl/SslHandler;->unwrap(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/buffer/ChannelBuffer;II)Lorg/jboss/netty/buffer/ChannelBuffer;
    :try_end_0
    .catch Ljavax/net/ssl/SSLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    :goto_1
    :try_start_1
    iget-object v0, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->isInboundDone()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->sentCloseNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->closeOutbound()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-interface {p2}, Lorg/jboss/netty/channel/ChannelStateEvent;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/jboss/netty/handler/ssl/SslHandler;->wrapNonAppData(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/Channel;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v0

    new-instance v1, Lorg/jboss/netty/handler/ssl/f;

    invoke-direct {v1, p1, p2}, Lorg/jboss/netty/handler/ssl/f;-><init>(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelStateEvent;)V

    invoke-interface {v0, v1}, Lorg/jboss/netty/channel/ChannelFuture;->addListener(Lorg/jboss/netty/channel/ChannelFutureListener;)V
    :try_end_2
    .catch Ljavax/net/ssl/SSLException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v0, v6

    :goto_2
    if-nez v0, :cond_0

    invoke-interface {p1, p2}, Lorg/jboss/netty/channel/ChannelHandlerContext;->sendDownstream(Lorg/jboss/netty/channel/ChannelEvent;)V

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_3
    sget-object v1, Lorg/jboss/netty/handler/ssl/SslHandler;->logger:Lorg/jboss/netty/logging/InternalLogger;

    invoke-interface {v1}, Lorg/jboss/netty/logging/InternalLogger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lorg/jboss/netty/handler/ssl/SslHandler;->logger:Lorg/jboss/netty/logging/InternalLogger;

    const-string v2, "Failed to unwrap before sending a close_notify message"

    invoke-interface {v1, v2, v0}, Lorg/jboss/netty/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-interface {p1, p2}, Lorg/jboss/netty/channel/ChannelHandlerContext;->sendDownstream(Lorg/jboss/netty/channel/ChannelEvent;)V

    throw v0

    :catch_1
    move-exception v0

    :try_start_4
    sget-object v1, Lorg/jboss/netty/handler/ssl/SslHandler;->logger:Lorg/jboss/netty/logging/InternalLogger;

    invoke-interface {v1}, Lorg/jboss/netty/logging/InternalLogger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Lorg/jboss/netty/handler/ssl/SslHandler;->logger:Lorg/jboss/netty/logging/InternalLogger;

    const-string v2, "Failed to encode a close_notify message"

    invoke-interface {v1, v2, v0}, Lorg/jboss/netty/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_3
    move v0, v7

    goto :goto_2

    :cond_4
    move v0, v6

    goto :goto_2

    :cond_5
    move v0, v7

    goto :goto_2
.end method

.method private flushPendingEncryptedWrites(Lorg/jboss/netty/channel/ChannelHandlerContext;)V
    .locals 2

    iget-object v0, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->pendingEncryptedWritesLock:Lorg/jboss/netty/util/internal/NonReentrantLock;

    invoke-virtual {v0}, Lorg/jboss/netty/util/internal/NonReentrantLock;->tryLock()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    :goto_1
    :try_start_0
    iget-object v0, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->pendingEncryptedWrites:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/channel/MessageEvent;

    if-eqz v0, :cond_1

    invoke-interface {p1, v0}, Lorg/jboss/netty/channel/ChannelHandlerContext;->sendDownstream(Lorg/jboss/netty/channel/ChannelEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->pendingEncryptedWritesLock:Lorg/jboss/netty/util/internal/NonReentrantLock;

    invoke-virtual {v1}, Lorg/jboss/netty/util/internal/NonReentrantLock;->unlock()V

    throw v0

    :cond_1
    iget-object v0, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->pendingEncryptedWritesLock:Lorg/jboss/netty/util/internal/NonReentrantLock;

    invoke-virtual {v0}, Lorg/jboss/netty/util/internal/NonReentrantLock;->unlock()V

    goto :goto_0
.end method

.method public static declared-synchronized getDefaultBufferPool()Lorg/jboss/netty/handler/ssl/SslBufferPool;
    .locals 2

    const-class v1, Lorg/jboss/netty/handler/ssl/SslHandler;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lorg/jboss/netty/handler/ssl/SslHandler;->defaultBufferPool:Lorg/jboss/netty/handler/ssl/SslBufferPool;

    if-nez v0, :cond_0

    new-instance v0, Lorg/jboss/netty/handler/ssl/SslBufferPool;

    invoke-direct {v0}, Lorg/jboss/netty/handler/ssl/SslBufferPool;-><init>()V

    sput-object v0, Lorg/jboss/netty/handler/ssl/SslHandler;->defaultBufferPool:Lorg/jboss/netty/handler/ssl/SslBufferPool;

    :cond_0
    sget-object v0, Lorg/jboss/netty/handler/ssl/SslHandler;->defaultBufferPool:Lorg/jboss/netty/handler/ssl/SslBufferPool;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static getShort(Lorg/jboss/netty/buffer/ChannelBuffer;I)S
    .locals 2

    invoke-interface {p0, p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->getByte(I)B

    move-result v0

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 v1, p1, 0x1

    invoke-interface {p0, v1}, Lorg/jboss/netty/buffer/ChannelBuffer;->getByte(I)B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    int-to-short v0, v0

    return v0
.end method

.method private handleRenegotiation(Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;)V
    .locals 3

    const/4 v0, 0x1

    sget-object v1, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NOT_HANDSHAKING:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-eq p1, v1, :cond_0

    sget-object v1, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->FINISHED:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-ne p1, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v1, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->handshaken:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->handshakeLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v2, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->handshaking:Z

    if-eqz v2, :cond_2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_2
    :try_start_1
    iget-object v2, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v2}, Ljavax/net/ssl/SSLEngine;->isInboundDone()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v2}, Ljavax/net/ssl/SSLEngine;->isOutboundDone()Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    monitor-exit v1

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lorg/jboss/netty/handler/ssl/SslHandler;->isEnableRenegotiation()Z

    move-result v2

    if-eqz v2, :cond_5

    :goto_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lorg/jboss/netty/handler/ssl/SslHandler;->handshake()Lorg/jboss/netty/channel/ChannelFuture;

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    const/4 v2, 0x1

    :try_start_2
    iput-boolean v2, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->handshaking:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->ctx:Lorg/jboss/netty/channel/ChannelHandlerContext;

    new-instance v1, Ljavax/net/ssl/SSLException;

    const-string v2, "renegotiation attempted by peer; closing the connection"

    invoke-direct {v1, v2}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lorg/jboss/netty/channel/Channels;->fireExceptionCaught(Lorg/jboss/netty/channel/ChannelHandlerContext;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->ctx:Lorg/jboss/netty/channel/ChannelHandlerContext;

    iget-object v1, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->ctx:Lorg/jboss/netty/channel/ChannelHandlerContext;

    invoke-interface {v1}, Lorg/jboss/netty/channel/ChannelHandlerContext;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v1

    invoke-static {v1}, Lorg/jboss/netty/channel/Channels;->succeededFuture(Lorg/jboss/netty/channel/Channel;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/jboss/netty/channel/Channels;->close(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelFuture;)V

    goto :goto_0
.end method

.method private ignoreException(Ljava/lang/Throwable;)Z
    .locals 8

    const/4 v1, 0x0

    const/4 v0, 0x1

    instance-of v2, p1, Ljavax/net/ssl/SSLException;

    if-nez v2, :cond_3

    instance-of v2, p1, Ljava/io/IOException;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v2}, Ljavax/net/ssl/SSLEngine;->isOutboundDone()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lorg/jboss/netty/handler/ssl/SslHandler;->IGNORABLE_ERROR_MESSAGE:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    array-length v4, v3

    move v2, v1

    :goto_1
    if-ge v2, v4, :cond_3

    aget-object v5, v3, v2

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v5

    const-string v7, "org.jboss.netty."

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2

    const-string v7, "read"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    sget-object v5, Lorg/jboss/netty/handler/ssl/SslHandler;->IGNORABLE_CLASS_IN_STACK:Ljava/util/regex/Pattern;

    invoke-virtual {v5, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-nez v5, :cond_0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    const-class v6, Ljava/nio/channels/SocketChannel;

    invoke-virtual {v6, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    if-nez v6, :cond_0

    const-class v6, Ljava/nio/channels/DatagramChannel;

    invoke-virtual {v6, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-static {}, Lorg/jboss/netty/util/internal/DetectionUtil;->javaVersion()I

    move-result v6

    const/4 v7, 0x7

    if-lt v6, v7, :cond_2

    const-string v6, "com.sun.nio.sctp.SctpChannel"

    invoke-virtual {v5}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-nez v5, :cond_0

    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v5

    goto :goto_2
.end method

.method private offerEncryptedWriteRequest(Lorg/jboss/netty/channel/MessageEvent;)V
    .locals 2

    iget-object v0, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->pendingEncryptedWritesLock:Lorg/jboss/netty/util/internal/NonReentrantLock;

    invoke-virtual {v0}, Lorg/jboss/netty/util/internal/NonReentrantLock;->tryLock()Z

    move-result v1

    :try_start_0
    iget-object v0, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->pendingEncryptedWrites:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    iget-object v0, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->pendingEncryptedWritesLock:Lorg/jboss/netty/util/internal/NonReentrantLock;

    invoke-virtual {v0}, Lorg/jboss/netty/util/internal/NonReentrantLock;->unlock()V

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->pendingEncryptedWritesLock:Lorg/jboss/netty/util/internal/NonReentrantLock;

    invoke-virtual {v1}, Lorg/jboss/netty/util/internal/NonReentrantLock;->unlock()V

    :cond_1
    throw v0
.end method

.method private runDelegatedTasks()V
    .locals 3

    :goto_0
    iget-object v1, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->handshakeLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->getDelegatedTask()Ljava/lang/Runnable;

    move-result-object v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->delegatedTaskExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Lorg/jboss/netty/handler/ssl/c;

    invoke-direct {v2, p0, v0}, Lorg/jboss/netty/handler/ssl/c;-><init>(Lorg/jboss/netty/handler/ssl/SslHandler;Ljava/lang/Runnable;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_0
    return-void
.end method

.method private setHandshakeFailure(Lorg/jboss/netty/channel/Channel;Ljavax/net/ssl/SSLException;)V
    .locals 4

    iget-object v1, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->handshakeLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->handshaking:Z

    if-nez v0, :cond_1

    monitor-exit v1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->handshaking:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->handshaken:Z

    iget-object v0, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->handshakeFuture:Lorg/jboss/netty/channel/ChannelFuture;

    if-nez v0, :cond_2

    invoke-static {p1}, Lorg/jboss/netty/channel/Channels;->future(Lorg/jboss/netty/channel/Channel;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v0

    iput-object v0, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->handshakeFuture:Lorg/jboss/netty/channel/ChannelFuture;

    :cond_2
    iget-object v0, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->closeOutbound()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->closeInbound()V
    :try_end_1
    .catch Ljavax/net/ssl/SSLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    :goto_1
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v0, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->handshakeFuture:Lorg/jboss/netty/channel/ChannelFuture;

    invoke-interface {v0, p2}, Lorg/jboss/netty/channel/ChannelFuture;->setFailure(Ljava/lang/Throwable;)Z

    iget-boolean v0, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->closeOnSSLException:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->ctx:Lorg/jboss/netty/channel/ChannelHandlerContext;

    invoke-static {p1}, Lorg/jboss/netty/channel/Channels;->future(Lorg/jboss/netty/channel/Channel;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/jboss/netty/channel/Channels;->close(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelFuture;)V

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_3
    sget-object v2, Lorg/jboss/netty/handler/ssl/SslHandler;->logger:Lorg/jboss/netty/logging/InternalLogger;

    invoke-interface {v2}, Lorg/jboss/netty/logging/InternalLogger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    sget-object v2, Lorg/jboss/netty/handler/ssl/SslHandler;->logger:Lorg/jboss/netty/logging/InternalLogger;

    const-string v3, "SSLEngine.closeInbound() raised an exception after a handshake failure."

    invoke-interface {v2, v3, v0}, Lorg/jboss/netty/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private setHandshakeSuccess(Lorg/jboss/netty/channel/Channel;)V
    .locals 2

    iget-object v1, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->handshakeLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->handshaking:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->handshaken:Z

    iget-object v0, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->handshakeFuture:Lorg/jboss/netty/channel/ChannelFuture;

    if-nez v0, :cond_0

    invoke-static {p1}, Lorg/jboss/netty/channel/Channels;->future(Lorg/jboss/netty/channel/Channel;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v0

    iput-object v0, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->handshakeFuture:Lorg/jboss/netty/channel/ChannelFuture;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->handshakeFuture:Lorg/jboss/netty/channel/ChannelFuture;

    invoke-interface {v0}, Lorg/jboss/netty/channel/ChannelFuture;->setSuccess()Z

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private unwrap(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/buffer/ChannelBuffer;II)Lorg/jboss/netty/buffer/ChannelBuffer;
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-interface {p3, p4, p5}, Lorg/jboss/netty/buffer/ChannelBuffer;->toByteBuffer(II)Ljava/nio/ByteBuffer;

    move-result-object v3

    iget-object v2, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->bufferPool:Lorg/jboss/netty/handler/ssl/SslBufferPool;

    invoke-virtual {v2}, Lorg/jboss/netty/handler/ssl/SslBufferPool;->acquireBuffer()Ljava/nio/ByteBuffer;

    move-result-object v4

    :cond_0
    :goto_0
    :try_start_0
    iget-object v5, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->handshakeLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_0
    .catch Ljavax/net/ssl/SSLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-boolean v2, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->handshaken:Z

    if-nez v2, :cond_6

    iget-boolean v2, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->handshaking:Z

    if-nez v2, :cond_6

    iget-object v2, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v2}, Ljavax/net/ssl/SSLEngine;->getUseClientMode()Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v2}, Ljavax/net/ssl/SSLEngine;->isInboundDone()Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v2}, Ljavax/net/ssl/SSLEngine;->isOutboundDone()Z

    move-result v2

    if-nez v2, :cond_6

    move v2, v1

    :goto_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v2, :cond_1

    :try_start_2
    invoke-virtual {p0}, Lorg/jboss/netty/handler/ssl/SslHandler;->handshake()Lorg/jboss/netty/channel/ChannelFuture;

    :cond_1
    iget-object v2, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->handshakeLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_2
    .catch Ljavax/net/ssl/SSLException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-object v5, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v5, v3, v4}, Ljavax/net/ssl/SSLEngine;->unwrap(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v5

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    invoke-virtual {v5}, Ljavax/net/ssl/SSLEngineResult;->getStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v2

    sget-object v6, Ljavax/net/ssl/SSLEngineResult$Status;->CLOSED:Ljavax/net/ssl/SSLEngineResult$Status;

    if-ne v2, v6, :cond_2

    iget-object v2, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->sslEngineCloseFuture:Lorg/jboss/netty/handler/ssl/h;

    invoke-virtual {v2}, Lorg/jboss/netty/handler/ssl/h;->a()V

    :cond_2
    invoke-virtual {v5}, Ljavax/net/ssl/SSLEngineResult;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/jboss/netty/handler/ssl/SslHandler;->handleRenegotiation(Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;)V

    sget-object v5, Lorg/jboss/netty/handler/ssl/e;->b:[I

    invoke-virtual {v2}, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Unknown handshake status: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4
    .catch Ljavax/net/ssl/SSLException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catch_0
    move-exception v0

    :try_start_5
    invoke-direct {p0, p2, v0}, Lorg/jboss/netty/handler/ssl/SslHandler;->setHandshakeFailure(Lorg/jboss/netty/channel/Channel;Ljavax/net/ssl/SSLException;)V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->bufferPool:Lorg/jboss/netty/handler/ssl/SslBufferPool;

    invoke-virtual {v1, v4}, Lorg/jboss/netty/handler/ssl/SslBufferPool;->releaseBuffer(Ljava/nio/ByteBuffer;)V

    throw v0

    :catchall_1
    move-exception v0

    :try_start_6
    monitor-exit v5

    throw v0

    :catchall_2
    move-exception v0

    monitor-exit v2

    throw v0

    :pswitch_0
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v2}, Ljavax/net/ssl/SSLEngine;->isInboundDone()Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_3
    :goto_2
    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->handshakeLock:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->pendingEncryptedWritesLock:Lorg/jboss/netty/util/internal/NonReentrantLock;

    invoke-virtual {v0}, Lorg/jboss/netty/util/internal/NonReentrantLock;->isHeldByCurrentThread()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-direct {p0, p1, p2}, Lorg/jboss/netty/handler/ssl/SslHandler;->wrap(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/Channel;)Lorg/jboss/netty/channel/ChannelFuture;

    :cond_4
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Lorg/jboss/netty/channel/ChannelHandlerContext;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v0

    invoke-interface {v0}, Lorg/jboss/netty/channel/Channel;->getConfig()Lorg/jboss/netty/channel/ChannelConfig;

    move-result-object v0

    invoke-interface {v0}, Lorg/jboss/netty/channel/ChannelConfig;->getBufferFactory()Lorg/jboss/netty/buffer/ChannelBufferFactory;

    move-result-object v0

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    invoke-interface {v0, v1}, Lorg/jboss/netty/buffer/ChannelBufferFactory;->getBuffer(I)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    invoke-interface {v0, v4}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeBytes(Ljava/nio/ByteBuffer;)V
    :try_end_6
    .catch Ljavax/net/ssl/SSLException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    iget-object v1, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->bufferPool:Lorg/jboss/netty/handler/ssl/SslBufferPool;

    invoke-virtual {v1, v4}, Lorg/jboss/netty/handler/ssl/SslBufferPool;->releaseBuffer(Ljava/nio/ByteBuffer;)V

    :goto_3
    return-object v0

    :pswitch_1
    :try_start_7
    invoke-direct {p0, p1, p2}, Lorg/jboss/netty/handler/ssl/SslHandler;->wrapNonAppData(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/Channel;)Lorg/jboss/netty/channel/ChannelFuture;

    goto/16 :goto_0

    :pswitch_2
    invoke-direct {p0}, Lorg/jboss/netty/handler/ssl/SslHandler;->runDelegatedTasks()V

    goto/16 :goto_0

    :pswitch_3
    invoke-direct {p0, p2}, Lorg/jboss/netty/handler/ssl/SslHandler;->setHandshakeSuccess(Lorg/jboss/netty/channel/Channel;)V
    :try_end_7
    .catch Ljavax/net/ssl/SSLException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move v0, v1

    goto :goto_2

    :pswitch_4
    move v0, v1

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->bufferPool:Lorg/jboss/netty/handler/ssl/SslBufferPool;

    invoke-virtual {v0, v4}, Lorg/jboss/netty/handler/ssl/SslBufferPool;->releaseBuffer(Ljava/nio/ByteBuffer;)V

    const/4 v0, 0x0

    goto :goto_3

    :cond_6
    move v2, v0

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private wrap(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/Channel;)Lorg/jboss/netty/channel/ChannelFuture;
    .locals 12

    const/4 v2, 0x1

    const/4 v4, 0x0

    const/4 v6, 0x0

    iget-object v0, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->bufferPool:Lorg/jboss/netty/handler/ssl/SslBufferPool;

    invoke-virtual {v0}, Lorg/jboss/netty/handler/ssl/SslBufferPool;->acquireBuffer()Ljava/nio/ByteBuffer;

    move-result-object v3

    move v1, v4

    :goto_0
    :try_start_0
    iget-object v5, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->pendingUnencryptedWrites:Ljava/util/Queue;

    monitor-enter v5
    :try_end_0
    .catch Ljavax/net/ssl/SSLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    :try_start_1
    iget-object v0, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->pendingUnencryptedWrites:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/handler/ssl/g;

    if-nez v0, :cond_3

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v2

    move v2, v4

    :goto_1
    iget-object v5, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->bufferPool:Lorg/jboss/netty/handler/ssl/SslBufferPool;

    invoke-virtual {v5, v3}, Lorg/jboss/netty/handler/ssl/SslBufferPool;->releaseBuffer(Ljava/nio/ByteBuffer;)V

    if-eqz v1, :cond_0

    invoke-direct {p0, p1}, Lorg/jboss/netty/handler/ssl/SslHandler;->flushPendingEncryptedWrites(Lorg/jboss/netty/channel/ChannelHandlerContext;)V

    :cond_0
    if-nez v0, :cond_1

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v0, "SSLEngine already closed"

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    :goto_2
    iget-object v3, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->pendingUnencryptedWrites:Ljava/util/Queue;

    monitor-enter v3

    :try_start_2
    iget-object v0, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->pendingUnencryptedWrites:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/handler/ssl/g;

    if-nez v0, :cond_10

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    :cond_1
    if-eqz v2, :cond_2

    sget-object v3, Lorg/jboss/netty/buffer/ChannelBuffers;->EMPTY_BUFFER:Lorg/jboss/netty/buffer/ChannelBuffer;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lorg/jboss/netty/handler/ssl/SslHandler;->unwrap(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/buffer/ChannelBuffer;II)Lorg/jboss/netty/buffer/ChannelBuffer;

    :cond_2
    if-nez v6, :cond_11

    invoke-static {p2}, Lorg/jboss/netty/channel/Channels;->succeededFuture(Lorg/jboss/netty/channel/Channel;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v0

    :goto_3
    return-object v0

    :cond_3
    :try_start_3
    iget-object v7, v0, Lorg/jboss/netty/handler/ssl/g;->b:Ljava/nio/ByteBuffer;

    if-nez v7, :cond_7

    iget-object v7, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->pendingUnencryptedWrites:Ljava/util/Queue;

    invoke-interface {v7}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    new-instance v7, Lorg/jboss/netty/channel/DownstreamMessageEvent;

    iget-object v0, v0, Lorg/jboss/netty/handler/ssl/g;->a:Lorg/jboss/netty/channel/ChannelFuture;

    sget-object v8, Lorg/jboss/netty/buffer/ChannelBuffers;->EMPTY_BUFFER:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {p2}, Lorg/jboss/netty/channel/Channel;->getRemoteAddress()Ljava/net/SocketAddress;

    move-result-object v9

    invoke-direct {v7, p2, v0, v8, v9}, Lorg/jboss/netty/channel/DownstreamMessageEvent;-><init>(Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/channel/ChannelFuture;Ljava/lang/Object;Ljava/net/SocketAddress;)V

    invoke-direct {p0, v7}, Lorg/jboss/netty/handler/ssl/SslHandler;->offerEncryptedWriteRequest(Lorg/jboss/netty/channel/MessageEvent;)V

    move v1, v2

    :cond_4
    :goto_4
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :goto_5
    :try_start_4
    monitor-exit v5

    throw v0
    :try_end_4
    .catch Ljavax/net/ssl/SSLException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_6

    :catch_0
    move-exception v0

    :try_start_5
    invoke-direct {p0, p2, v0}, Lorg/jboss/netty/handler/ssl/SslHandler;->setHandshakeFailure(Lorg/jboss/netty/channel/Channel;Ljavax/net/ssl/SSLException;)V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v0

    move v2, v4

    move v11, v1

    move-object v1, v0

    move v0, v11

    :goto_6
    iget-object v4, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->bufferPool:Lorg/jboss/netty/handler/ssl/SslBufferPool;

    invoke-virtual {v4, v3}, Lorg/jboss/netty/handler/ssl/SslBufferPool;->releaseBuffer(Ljava/nio/ByteBuffer;)V

    if-eqz v0, :cond_5

    invoke-direct {p0, p1}, Lorg/jboss/netty/handler/ssl/SslHandler;->flushPendingEncryptedWrites(Lorg/jboss/netty/channel/ChannelHandlerContext;)V

    :cond_5
    if-nez v2, :cond_6

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v0, "SSLEngine already closed"

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    :goto_7
    iget-object v3, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->pendingUnencryptedWrites:Ljava/util/Queue;

    monitor-enter v3

    :try_start_6
    iget-object v0, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->pendingUnencryptedWrites:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/handler/ssl/g;

    if-nez v0, :cond_f

    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    :cond_6
    throw v1

    :cond_7
    :try_start_7
    iget-object v8, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->handshakeLock:Ljava/lang/Object;

    monitor-enter v8
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :try_start_8
    iget-object v9, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v9, v7, v3}, Ljavax/net/ssl/SSLEngine;->wrap(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v9

    monitor-exit v8
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :try_start_9
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v8

    if-nez v8, :cond_8

    iget-object v8, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->pendingUnencryptedWrites:Ljava/util/Queue;

    invoke-interface {v8}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    :cond_8
    invoke-virtual {v9}, Ljavax/net/ssl/SSLEngineResult;->bytesProduced()I

    move-result v8

    if-lez v8, :cond_b

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v6

    iget-object v7, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->ctx:Lorg/jboss/netty/channel/ChannelHandlerContext;

    invoke-interface {v7}, Lorg/jboss/netty/channel/ChannelHandlerContext;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v7

    invoke-interface {v7}, Lorg/jboss/netty/channel/Channel;->getConfig()Lorg/jboss/netty/channel/ChannelConfig;

    move-result-object v7

    invoke-interface {v7}, Lorg/jboss/netty/channel/ChannelConfig;->getBufferFactory()Lorg/jboss/netty/buffer/ChannelBufferFactory;

    move-result-object v7

    invoke-interface {v7, v6}, Lorg/jboss/netty/buffer/ChannelBufferFactory;->getBuffer(I)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v7

    invoke-interface {v7, v3}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeBytes(Ljava/nio/ByteBuffer;)V

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    iget-object v6, v0, Lorg/jboss/netty/handler/ssl/g;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-static {p2}, Lorg/jboss/netty/channel/Channels;->succeededFuture(Lorg/jboss/netty/channel/Channel;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v6

    :goto_8
    new-instance v0, Lorg/jboss/netty/channel/DownstreamMessageEvent;

    invoke-interface {p2}, Lorg/jboss/netty/channel/Channel;->getRemoteAddress()Ljava/net/SocketAddress;

    move-result-object v8

    invoke-direct {v0, p2, v6, v7, v8}, Lorg/jboss/netty/channel/DownstreamMessageEvent;-><init>(Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/channel/ChannelFuture;Ljava/lang/Object;Ljava/net/SocketAddress;)V

    invoke-direct {p0, v0}, Lorg/jboss/netty/handler/ssl/SslHandler;->offerEncryptedWriteRequest(Lorg/jboss/netty/channel/MessageEvent;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    move v1, v2

    goto/16 :goto_4

    :catchall_2
    move-exception v0

    :try_start_a
    monitor-exit v8

    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    :catchall_3
    move-exception v0

    :try_start_b
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v6

    if-nez v6, :cond_9

    iget-object v6, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->pendingUnencryptedWrites:Ljava/util/Queue;

    invoke-interface {v6}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    :cond_9
    throw v0

    :cond_a
    iget-object v6, v0, Lorg/jboss/netty/handler/ssl/g;->a:Lorg/jboss/netty/channel/ChannelFuture;

    goto :goto_8

    :cond_b
    invoke-virtual {v9}, Ljavax/net/ssl/SSLEngineResult;->getStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v0

    sget-object v8, Ljavax/net/ssl/SSLEngineResult$Status;->CLOSED:Ljavax/net/ssl/SSLEngineResult$Status;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    if-ne v0, v8, :cond_c

    :try_start_c
    monitor-exit v5
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_7

    move v2, v4

    move v0, v4

    goto/16 :goto_1

    :cond_c
    :try_start_d
    invoke-virtual {v9}, Ljavax/net/ssl/SSLEngineResult;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/jboss/netty/handler/ssl/SslHandler;->handleRenegotiation(Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;)V

    sget-object v8, Lorg/jboss/netty/handler/ssl/e;->b:[I

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->ordinal()I

    move-result v10

    aget v8, v8, v10

    packed-switch v8, :pswitch_data_0

    new-instance v6, Ljava/lang/IllegalStateException;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Unknown handshake status: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    :pswitch_0
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_4

    monitor-exit v5
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    move v0, v2

    move v2, v4

    goto/16 :goto_1

    :pswitch_1
    :try_start_e
    monitor-exit v5
    :try_end_e
    .catch Ljavax/net/ssl/SSLException; {:try_start_e .. :try_end_e} :catch_0
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    move v0, v2

    goto/16 :goto_1

    :pswitch_2
    :try_start_f
    invoke-direct {p0}, Lorg/jboss/netty/handler/ssl/SslHandler;->runDelegatedTasks()V

    goto/16 :goto_4

    :pswitch_3
    sget-object v7, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->FINISHED:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-ne v0, v7, :cond_d

    invoke-direct {p0, p2}, Lorg/jboss/netty/handler/ssl/SslHandler;->setHandshakeSuccess(Lorg/jboss/netty/channel/Channel;)V

    :cond_d
    invoke-virtual {v9}, Ljavax/net/ssl/SSLEngineResult;->getStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v0

    sget-object v7, Ljavax/net/ssl/SSLEngineResult$Status;->CLOSED:Ljavax/net/ssl/SSLEngineResult$Status;

    if-ne v0, v7, :cond_e

    move v2, v4

    :cond_e
    monitor-exit v5
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    move v0, v2

    move v2, v4

    goto/16 :goto_1

    :catchall_4
    move-exception v0

    monitor-exit v3

    throw v0

    :cond_f
    monitor-exit v3

    iget-object v0, v0, Lorg/jboss/netty/handler/ssl/g;->a:Lorg/jboss/netty/channel/ChannelFuture;

    invoke-interface {v0, v2}, Lorg/jboss/netty/channel/ChannelFuture;->setFailure(Ljava/lang/Throwable;)Z

    goto/16 :goto_7

    :catchall_5
    move-exception v0

    monitor-exit v3

    throw v0

    :cond_10
    monitor-exit v3

    iget-object v0, v0, Lorg/jboss/netty/handler/ssl/g;->a:Lorg/jboss/netty/channel/ChannelFuture;

    invoke-interface {v0, v1}, Lorg/jboss/netty/channel/ChannelFuture;->setFailure(Ljava/lang/Throwable;)Z

    goto/16 :goto_2

    :catchall_6
    move-exception v0

    move-object v11, v0

    move v0, v1

    move-object v1, v11

    goto/16 :goto_6

    :catchall_7
    move-exception v0

    move v2, v4

    goto/16 :goto_5

    :cond_11
    move-object v0, v6

    goto/16 :goto_3

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method private wrapNonAppData(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/Channel;)Lorg/jboss/netty/channel/ChannelFuture;
    .locals 9

    const/4 v6, 0x0

    iget-object v0, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->bufferPool:Lorg/jboss/netty/handler/ssl/SslBufferPool;

    invoke-virtual {v0}, Lorg/jboss/netty/handler/ssl/SslBufferPool;->acquireBuffer()Ljava/nio/ByteBuffer;

    move-result-object v7

    :cond_0
    :try_start_0
    iget-object v1, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->handshakeLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljavax/net/ssl/SSLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->engine:Ljavax/net/ssl/SSLEngine;

    sget-object v2, Lorg/jboss/netty/handler/ssl/SslHandler;->EMPTY_BUFFER:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v2, v7}, Ljavax/net/ssl/SSLEngine;->wrap(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v8

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v8}, Ljavax/net/ssl/SSLEngineResult;->bytesProduced()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    invoke-interface {p1}, Lorg/jboss/netty/channel/ChannelHandlerContext;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v0

    invoke-interface {v0}, Lorg/jboss/netty/channel/Channel;->getConfig()Lorg/jboss/netty/channel/ChannelConfig;

    move-result-object v0

    invoke-interface {v0}, Lorg/jboss/netty/channel/ChannelConfig;->getBufferFactory()Lorg/jboss/netty/buffer/ChannelBufferFactory;

    move-result-object v0

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    invoke-interface {v0, v1}, Lorg/jboss/netty/buffer/ChannelBufferFactory;->getBuffer(I)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    invoke-interface {v0, v7}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeBytes(Ljava/nio/ByteBuffer;)V

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    invoke-static {p2}, Lorg/jboss/netty/channel/Channels;->future(Lorg/jboss/netty/channel/Channel;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v6

    new-instance v1, Lorg/jboss/netty/handler/ssl/b;

    invoke-direct {v1, p0}, Lorg/jboss/netty/handler/ssl/b;-><init>(Lorg/jboss/netty/handler/ssl/SslHandler;)V

    invoke-interface {v6, v1}, Lorg/jboss/netty/channel/ChannelFuture;->addListener(Lorg/jboss/netty/channel/ChannelFutureListener;)V

    invoke-static {p1, v6, v0}, Lorg/jboss/netty/channel/Channels;->write(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelFuture;Ljava/lang/Object;)V

    :cond_1
    invoke-virtual {v8}, Ljavax/net/ssl/SSLEngineResult;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/jboss/netty/handler/ssl/SslHandler;->handleRenegotiation(Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;)V

    sget-object v1, Lorg/jboss/netty/handler/ssl/e;->b:[I

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unexpected handshake status: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_2
    .catch Ljavax/net/ssl/SSLException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catch_0
    move-exception v0

    :try_start_3
    invoke-direct {p0, p2, v0}, Lorg/jboss/netty/handler/ssl/SslHandler;->setHandshakeFailure(Lorg/jboss/netty/channel/Channel;Ljavax/net/ssl/SSLException;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->bufferPool:Lorg/jboss/netty/handler/ssl/SslBufferPool;

    invoke-virtual {v1, v7}, Lorg/jboss/netty/handler/ssl/SslBufferPool;->releaseBuffer(Ljava/nio/ByteBuffer;)V

    throw v0

    :catchall_1
    move-exception v0

    :try_start_4
    monitor-exit v1

    throw v0

    :pswitch_0
    invoke-direct {p0, p2}, Lorg/jboss/netty/handler/ssl/SslHandler;->setHandshakeSuccess(Lorg/jboss/netty/channel/Channel;)V

    invoke-direct {p0}, Lorg/jboss/netty/handler/ssl/SslHandler;->runDelegatedTasks()V

    :cond_2
    :goto_0
    :pswitch_1
    invoke-virtual {v8}, Ljavax/net/ssl/SSLEngineResult;->bytesProduced()I
    :try_end_4
    .catch Ljavax/net/ssl/SSLException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->bufferPool:Lorg/jboss/netty/handler/ssl/SslBufferPool;

    invoke-virtual {v0, v7}, Lorg/jboss/netty/handler/ssl/SslBufferPool;->releaseBuffer(Ljava/nio/ByteBuffer;)V

    if-nez v6, :cond_3

    invoke-static {p2}, Lorg/jboss/netty/channel/Channels;->succeededFuture(Lorg/jboss/netty/channel/Channel;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v0

    :goto_1
    return-object v0

    :pswitch_2
    :try_start_5
    invoke-direct {p0}, Lorg/jboss/netty/handler/ssl/SslHandler;->runDelegatedTasks()V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->handshakeLock:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v3, Lorg/jboss/netty/buffer/ChannelBuffers;->EMPTY_BUFFER:Lorg/jboss/netty/buffer/ChannelBuffer;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lorg/jboss/netty/handler/ssl/SslHandler;->unwrap(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/buffer/ChannelBuffer;II)Lorg/jboss/netty/buffer/ChannelBuffer;
    :try_end_5
    .catch Ljavax/net/ssl/SSLException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    :cond_3
    move-object v0, v6

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public afterRemove(Lorg/jboss/netty/channel/ChannelHandlerContext;)V
    .locals 3

    const/4 v1, 0x0

    :goto_0
    iget-object v0, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->pendingUnencryptedWrites:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/handler/ssl/g;

    if-eqz v0, :cond_1

    if-nez v1, :cond_0

    new-instance v1, Ljava/io/IOException;

    const-string v2, "Unable to write data"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    :cond_0
    iget-object v0, v0, Lorg/jboss/netty/handler/ssl/g;->a:Lorg/jboss/netty/channel/ChannelFuture;

    invoke-interface {v0, v1}, Lorg/jboss/netty/channel/ChannelFuture;->setFailure(Ljava/lang/Throwable;)Z

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v0, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->pendingEncryptedWrites:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/channel/MessageEvent;

    if-eqz v0, :cond_3

    if-nez v1, :cond_2

    new-instance v1, Ljava/io/IOException;

    const-string v2, "Unable to write data"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    :cond_2
    invoke-interface {v0}, Lorg/jboss/netty/channel/MessageEvent;->getFuture()Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v0

    invoke-interface {v0, v1}, Lorg/jboss/netty/channel/ChannelFuture;->setFailure(Ljava/lang/Throwable;)Z

    goto :goto_1

    :cond_3
    if-eqz v1, :cond_4

    invoke-static {p1, v1}, Lorg/jboss/netty/channel/Channels;->fireExceptionCaughtLater(Lorg/jboss/netty/channel/ChannelHandlerContext;Ljava/lang/Throwable;)Lorg/jboss/netty/channel/ChannelFuture;

    :cond_4
    return-void
.end method

.method public beforeAdd(Lorg/jboss/netty/channel/ChannelHandlerContext;)V
    .locals 0

    invoke-super {p0, p1}, Lorg/jboss/netty/handler/codec/frame/FrameDecoder;->beforeAdd(Lorg/jboss/netty/channel/ChannelHandlerContext;)V

    iput-object p1, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->ctx:Lorg/jboss/netty/channel/ChannelHandlerContext;

    return-void
.end method

.method public channelClosed(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelStateEvent;)V
    .locals 3

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->pendingUnencryptedWrites:Ljava/util/Queue;

    monitor-enter v2

    :goto_0
    :try_start_0
    iget-object v0, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->pendingUnencryptedWrites:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/handler/ssl/g;

    if-eqz v0, :cond_1

    if-nez v1, :cond_0

    new-instance v1, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v1}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    :cond_0
    iget-object v0, v0, Lorg/jboss/netty/handler/ssl/g;->a:Lorg/jboss/netty/channel/ChannelFuture;

    invoke-interface {v0, v1}, Lorg/jboss/netty/channel/ChannelFuture;->setFailure(Ljava/lang/Throwable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_1
    :goto_1
    :try_start_1
    iget-object v0, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->pendingEncryptedWrites:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/channel/MessageEvent;

    if-eqz v0, :cond_3

    if-nez v1, :cond_2

    new-instance v1, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v1}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    :cond_2
    invoke-interface {v0}, Lorg/jboss/netty/channel/MessageEvent;->getFuture()Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v0

    invoke-interface {v0, v1}, Lorg/jboss/netty/channel/ChannelFuture;->setFailure(Ljava/lang/Throwable;)Z

    goto :goto_1

    :cond_3
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_4

    invoke-static {p1, v1}, Lorg/jboss/netty/channel/Channels;->fireExceptionCaught(Lorg/jboss/netty/channel/ChannelHandlerContext;Ljava/lang/Throwable;)V

    :cond_4
    invoke-super {p0, p1, p2}, Lorg/jboss/netty/handler/codec/frame/FrameDecoder;->channelClosed(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelStateEvent;)V

    return-void
.end method

.method public channelConnected(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelStateEvent;)V
    .locals 2

    iget-boolean v0, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->issueHandshake:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/jboss/netty/handler/ssl/SslHandler;->handshake()Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v0

    new-instance v1, Lorg/jboss/netty/handler/ssl/d;

    invoke-direct {v1, p0, p1, p2}, Lorg/jboss/netty/handler/ssl/d;-><init>(Lorg/jboss/netty/handler/ssl/SslHandler;Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelStateEvent;)V

    invoke-interface {v0, v1}, Lorg/jboss/netty/channel/ChannelFuture;->addListener(Lorg/jboss/netty/channel/ChannelFutureListener;)V

    :goto_0
    return-void

    :cond_0
    invoke-super {p0, p1, p2}, Lorg/jboss/netty/handler/codec/frame/FrameDecoder;->channelConnected(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelStateEvent;)V

    goto :goto_0
.end method

.method public channelDisconnected(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelStateEvent;)V
    .locals 7

    const/4 v4, 0x0

    iget-object v1, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->handshakeLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->handshaking:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->handshakeFuture:Lorg/jboss/netty/channel/ChannelFuture;

    new-instance v2, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v2}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    invoke-interface {v0, v2}, Lorg/jboss/netty/channel/ChannelFuture;->setFailure(Ljava/lang/Throwable;)Z

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-super {p0, p1, p2}, Lorg/jboss/netty/handler/codec/frame/FrameDecoder;->channelDisconnected(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelStateEvent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-interface {p2}, Lorg/jboss/netty/channel/ChannelStateEvent;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v2

    sget-object v3, Lorg/jboss/netty/buffer/ChannelBuffers;->EMPTY_BUFFER:Lorg/jboss/netty/buffer/ChannelBuffer;

    move-object v0, p0

    move-object v1, p1

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lorg/jboss/netty/handler/ssl/SslHandler;->unwrap(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/buffer/ChannelBuffer;II)Lorg/jboss/netty/buffer/ChannelBuffer;

    iget-object v0, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->closeOutbound()V

    iget-object v0, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->sentCloseNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->handshaken:Z

    if-eqz v0, :cond_1

    :try_start_2
    iget-object v0, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->closeInbound()V
    :try_end_2
    .catch Ljavax/net/ssl/SSLException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_1
    :goto_0
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :catchall_1
    move-exception v6

    invoke-interface {p2}, Lorg/jboss/netty/channel/ChannelStateEvent;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v2

    sget-object v3, Lorg/jboss/netty/buffer/ChannelBuffers;->EMPTY_BUFFER:Lorg/jboss/netty/buffer/ChannelBuffer;

    move-object v0, p0

    move-object v1, p1

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lorg/jboss/netty/handler/ssl/SslHandler;->unwrap(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/buffer/ChannelBuffer;II)Lorg/jboss/netty/buffer/ChannelBuffer;

    iget-object v0, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->closeOutbound()V

    iget-object v0, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->sentCloseNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->handshaken:Z

    if-eqz v0, :cond_2

    :try_start_3
    iget-object v0, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->closeInbound()V
    :try_end_3
    .catch Ljavax/net/ssl/SSLException; {:try_start_3 .. :try_end_3} :catch_0

    :cond_2
    :goto_1
    throw v6

    :catch_0
    move-exception v0

    sget-object v1, Lorg/jboss/netty/handler/ssl/SslHandler;->logger:Lorg/jboss/netty/logging/InternalLogger;

    invoke-interface {v1}, Lorg/jboss/netty/logging/InternalLogger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lorg/jboss/netty/handler/ssl/SslHandler;->logger:Lorg/jboss/netty/logging/InternalLogger;

    const-string v2, "Failed to clean up SSLEngine."

    invoke-interface {v1, v2, v0}, Lorg/jboss/netty/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_1
    move-exception v0

    sget-object v1, Lorg/jboss/netty/handler/ssl/SslHandler;->logger:Lorg/jboss/netty/logging/InternalLogger;

    invoke-interface {v1}, Lorg/jboss/netty/logging/InternalLogger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lorg/jboss/netty/handler/ssl/SslHandler;->logger:Lorg/jboss/netty/logging/InternalLogger;

    const-string v2, "Failed to clean up SSLEngine."

    invoke-interface {v1, v2, v0}, Lorg/jboss/netty/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public close()Lorg/jboss/netty/channel/ChannelFuture;
    .locals 4

    iget-object v1, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->ctx:Lorg/jboss/netty/channel/ChannelHandlerContext;

    invoke-interface {v1}, Lorg/jboss/netty/channel/ChannelHandlerContext;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v2

    :try_start_0
    iget-object v0, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->closeOutbound()V

    invoke-direct {p0, v1, v2}, Lorg/jboss/netty/handler/ssl/SslHandler;->wrapNonAppData(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/Channel;)Lorg/jboss/netty/channel/ChannelFuture;
    :try_end_0
    .catch Ljavax/net/ssl/SSLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-static {v1, v0}, Lorg/jboss/netty/channel/Channels;->fireExceptionCaught(Lorg/jboss/netty/channel/ChannelHandlerContext;Ljava/lang/Throwable;)V

    iget-boolean v3, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->closeOnSSLException:Z

    if-eqz v3, :cond_0

    invoke-static {v2}, Lorg/jboss/netty/channel/Channels;->future(Lorg/jboss/netty/channel/Channel;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v3

    invoke-static {v1, v3}, Lorg/jboss/netty/channel/Channels;->close(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelFuture;)V

    :cond_0
    invoke-static {v2, v0}, Lorg/jboss/netty/channel/Channels;->failedFuture(Lorg/jboss/netty/channel/Channel;Ljava/lang/Throwable;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v0

    goto :goto_0
.end method

.method public close(Lorg/jboss/netty/channel/Channel;)Lorg/jboss/netty/channel/ChannelFuture;
    .locals 1

    invoke-virtual {p0}, Lorg/jboss/netty/handler/ssl/SslHandler;->close()Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0
.end method

.method protected decode(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/buffer/ChannelBuffer;)Ljava/lang/Object;
    .locals 9

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v3, 0x3

    const/4 v2, 0x2

    const/4 v1, 0x0

    invoke-interface {p3}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v0

    const/4 v4, 0x5

    if-ge v0, v4, :cond_0

    move-object v0, v6

    :goto_0
    return-object v0

    :cond_0
    invoke-interface {p3}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v0

    invoke-interface {p3, v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->getUnsignedByte(I)S

    move-result v0

    packed-switch v0, :pswitch_data_0

    move v4, v1

    :goto_1
    if-eqz v4, :cond_d

    invoke-interface {p3}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-interface {p3, v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->getUnsignedByte(I)S

    move-result v0

    if-ne v0, v3, :cond_c

    invoke-interface {p3}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v0

    add-int/lit8 v0, v0, 0x3

    invoke-static {p3, v0}, Lorg/jboss/netty/handler/ssl/SslHandler;->getShort(Lorg/jboss/netty/buffer/ChannelBuffer;I)S

    move-result v0

    const v7, 0xffff

    and-int/2addr v0, v7

    add-int/lit8 v0, v0, 0x5

    const/4 v7, 0x5

    if-gt v0, v7, :cond_b

    :goto_2
    move v4, v0

    move v0, v1

    :goto_3
    if-nez v0, :cond_5

    invoke-interface {p3}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v0

    invoke-interface {p3, v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->getUnsignedByte(I)S

    move-result v0

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_2

    move v0, v2

    :goto_4
    invoke-interface {p3}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v7

    add-int/2addr v7, v0

    add-int/lit8 v7, v7, 0x1

    invoke-interface {p3, v7}, Lorg/jboss/netty/buffer/ChannelBuffer;->getUnsignedByte(I)S

    move-result v7

    if-eq v7, v2, :cond_1

    if-ne v7, v3, :cond_a

    :cond_1
    if-ne v0, v2, :cond_3

    invoke-interface {p3}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v2

    invoke-static {p3, v2}, Lorg/jboss/netty/handler/ssl/SslHandler;->getShort(Lorg/jboss/netty/buffer/ChannelBuffer;I)S

    move-result v2

    and-int/lit16 v2, v2, 0x7fff

    add-int/lit8 v2, v2, 0x2

    :goto_5
    if-gt v2, v0, :cond_9

    move v0, v2

    :goto_6
    move v5, v0

    :goto_7
    if-nez v1, :cond_6

    new-instance v0, Lorg/jboss/netty/handler/ssl/NotSslRecordException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "not an SSL/TLS record: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p3}, Lorg/jboss/netty/buffer/ChannelBuffers;->hexDump(Lorg/jboss/netty/buffer/ChannelBuffer;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jboss/netty/handler/ssl/NotSslRecordException;-><init>(Ljava/lang/String;)V

    invoke-interface {p3}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v1

    invoke-interface {p3, v1}, Lorg/jboss/netty/buffer/ChannelBuffer;->skipBytes(I)V

    iget-boolean v1, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->closeOnSSLException:Z

    if-eqz v1, :cond_4

    invoke-static {p1, v0}, Lorg/jboss/netty/channel/Channels;->fireExceptionCaught(Lorg/jboss/netty/channel/ChannelHandlerContext;Ljava/lang/Throwable;)V

    invoke-static {p2}, Lorg/jboss/netty/channel/Channels;->future(Lorg/jboss/netty/channel/Channel;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/jboss/netty/channel/Channels;->close(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelFuture;)V

    move-object v0, v6

    goto/16 :goto_0

    :pswitch_0
    move v4, v5

    goto/16 :goto_1

    :cond_2
    move v0, v3

    goto :goto_4

    :cond_3
    invoke-interface {p3}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v2

    invoke-static {p3, v2}, Lorg/jboss/netty/handler/ssl/SslHandler;->getShort(Lorg/jboss/netty/buffer/ChannelBuffer;I)S

    move-result v2

    and-int/lit16 v2, v2, 0x3fff

    add-int/lit8 v2, v2, 0x3

    goto :goto_5

    :cond_4
    throw v0

    :cond_5
    move v5, v4

    :cond_6
    sget-boolean v0, Lorg/jboss/netty/handler/ssl/SslHandler;->$assertionsDisabled:Z

    if-nez v0, :cond_7

    if-gtz v5, :cond_7

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_7
    invoke-interface {p3}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v0

    if-ge v0, v5, :cond_8

    move-object v0, v6

    goto/16 :goto_0

    :cond_8
    invoke-interface {p3}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v4

    invoke-interface {p3, v5}, Lorg/jboss/netty/buffer/ChannelBuffer;->skipBytes(I)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lorg/jboss/netty/handler/ssl/SslHandler;->unwrap(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/buffer/ChannelBuffer;II)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    goto/16 :goto_0

    :cond_9
    move v1, v5

    move v5, v2

    goto :goto_7

    :cond_a
    move v0, v4

    goto :goto_6

    :cond_b
    move v8, v4

    move v4, v0

    move v0, v8

    goto/16 :goto_3

    :cond_c
    move v0, v1

    goto/16 :goto_2

    :cond_d
    move v0, v4

    move v4, v1

    goto/16 :goto_3

    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public exceptionCaught(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ExceptionEvent;)V
    .locals 4

    invoke-interface {p2}, Lorg/jboss/netty/channel/ExceptionEvent;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v1, v0, Ljava/io/IOException;

    if-eqz v1, :cond_2

    instance-of v1, v0, Ljava/nio/channels/ClosedChannelException;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->ignoreClosedChannelExceptionLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v2, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->ignoreClosedChannelException:I

    if-lez v2, :cond_1

    iget v2, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->ignoreClosedChannelException:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->ignoreClosedChannelException:I

    sget-object v2, Lorg/jboss/netty/handler/ssl/SslHandler;->logger:Lorg/jboss/netty/logging/InternalLogger;

    invoke-interface {v2}, Lorg/jboss/netty/logging/InternalLogger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lorg/jboss/netty/handler/ssl/SslHandler;->logger:Lorg/jboss/netty/logging/InternalLogger;

    const-string v3, "Swallowing an exception raised while writing non-app data"

    invoke-interface {v2, v3, v0}, Lorg/jboss/netty/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    return-void

    :cond_1
    monitor-exit v1

    :cond_2
    invoke-interface {p1, p2}, Lorg/jboss/netty/channel/ChannelHandlerContext;->sendUpstream(Lorg/jboss/netty/channel/ChannelEvent;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_3
    invoke-direct {p0, v0}, Lorg/jboss/netty/handler/ssl/SslHandler;->ignoreException(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0
.end method

.method public getCloseOnSSLException()Z
    .locals 1

    iget-boolean v0, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->closeOnSSLException:Z

    return v0
.end method

.method public getEngine()Ljavax/net/ssl/SSLEngine;
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->engine:Ljavax/net/ssl/SSLEngine;

    return-object v0
.end method

.method public getSSLEngineInboundCloseFuture()Lorg/jboss/netty/channel/ChannelFuture;
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->sslEngineCloseFuture:Lorg/jboss/netty/handler/ssl/h;

    return-object v0
.end method

.method public handleDownstream(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelEvent;)V
    .locals 5

    instance-of v0, p2, Lorg/jboss/netty/channel/ChannelStateEvent;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lorg/jboss/netty/channel/ChannelStateEvent;

    sget-object v1, Lorg/jboss/netty/handler/ssl/e;->a:[I

    invoke-interface {v0}, Lorg/jboss/netty/channel/ChannelStateEvent;->getState()Lorg/jboss/netty/channel/ChannelState;

    move-result-object v2

    invoke-virtual {v2}, Lorg/jboss/netty/channel/ChannelState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :cond_0
    instance-of v0, p2, Lorg/jboss/netty/channel/MessageEvent;

    if-nez v0, :cond_2

    invoke-interface {p1, p2}, Lorg/jboss/netty/channel/ChannelHandlerContext;->sendDownstream(Lorg/jboss/netty/channel/ChannelEvent;)V

    :goto_0
    return-void

    :pswitch_0
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v0}, Lorg/jboss/netty/channel/ChannelStateEvent;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {v0}, Lorg/jboss/netty/channel/ChannelStateEvent;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    :cond_1
    invoke-direct {p0, p1, v0}, Lorg/jboss/netty/handler/ssl/SslHandler;->closeOutboundAndChannel(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelStateEvent;)V

    goto :goto_0

    :cond_2
    move-object v0, p2

    check-cast v0, Lorg/jboss/netty/channel/MessageEvent;

    invoke-interface {v0}, Lorg/jboss/netty/channel/MessageEvent;->getMessage()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lorg/jboss/netty/buffer/ChannelBuffer;

    if-nez v1, :cond_3

    invoke-interface {p1, p2}, Lorg/jboss/netty/channel/ChannelHandlerContext;->sendDownstream(Lorg/jboss/netty/channel/ChannelEvent;)V

    goto :goto_0

    :cond_3
    iget-boolean v1, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->startTls:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->sentFirstMessage:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1, p2}, Lorg/jboss/netty/channel/ChannelHandlerContext;->sendDownstream(Lorg/jboss/netty/channel/ChannelEvent;)V

    goto :goto_0

    :cond_4
    invoke-interface {v0}, Lorg/jboss/netty/channel/MessageEvent;->getMessage()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readable()Z

    move-result v1

    if-eqz v1, :cond_5

    new-instance v1, Lorg/jboss/netty/handler/ssl/g;

    invoke-interface {p2}, Lorg/jboss/netty/channel/ChannelEvent;->getFuture()Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v2

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v3

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v4

    invoke-interface {v0, v3, v4}, Lorg/jboss/netty/buffer/ChannelBuffer;->toByteBuffer(II)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lorg/jboss/netty/handler/ssl/g;-><init>(Lorg/jboss/netty/channel/ChannelFuture;Ljava/nio/ByteBuffer;)V

    move-object v0, v1

    :goto_1
    iget-object v1, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->pendingUnencryptedWrites:Ljava/util/Queue;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->pendingUnencryptedWrites:Ljava/util/Queue;

    invoke-interface {v2, v0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    move-result v0

    sget-boolean v2, Lorg/jboss/netty/handler/ssl/SslHandler;->$assertionsDisabled:Z

    if-nez v2, :cond_6

    if-nez v0, :cond_6

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_5
    new-instance v0, Lorg/jboss/netty/handler/ssl/g;

    invoke-interface {p2}, Lorg/jboss/netty/channel/ChannelEvent;->getFuture()Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/jboss/netty/handler/ssl/g;-><init>(Lorg/jboss/netty/channel/ChannelFuture;Ljava/nio/ByteBuffer;)V

    goto :goto_1

    :cond_6
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-interface {p2}, Lorg/jboss/netty/channel/ChannelEvent;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/jboss/netty/handler/ssl/SslHandler;->wrap(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/Channel;)Lorg/jboss/netty/channel/ChannelFuture;

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public handshake()Lorg/jboss/netty/channel/ChannelFuture;
    .locals 6

    iget-boolean v0, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->handshaken:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/jboss/netty/handler/ssl/SslHandler;->isEnableRenegotiation()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "renegotiation disabled"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v2, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->ctx:Lorg/jboss/netty/channel/ChannelHandlerContext;

    invoke-interface {v2}, Lorg/jboss/netty/channel/ChannelHandlerContext;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v3

    const/4 v0, 0x0

    iget-object v4, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->handshakeLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    iget-boolean v1, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->handshaking:Z

    if-eqz v1, :cond_2

    iget-object v0, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->handshakeFuture:Lorg/jboss/netty/channel/ChannelFuture;

    monitor-exit v4

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->handshaking:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v1, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v1}, Ljavax/net/ssl/SSLEngine;->beginHandshake()V

    invoke-direct {p0}, Lorg/jboss/netty/handler/ssl/SslHandler;->runDelegatedTasks()V

    invoke-static {v3}, Lorg/jboss/netty/channel/Channels;->future(Lorg/jboss/netty/channel/Channel;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v1

    iput-object v1, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->handshakeFuture:Lorg/jboss/netty/channel/ChannelFuture;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    :goto_1
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v1, :cond_3

    :try_start_3
    invoke-direct {p0, v2, v3}, Lorg/jboss/netty/handler/ssl/SslHandler;->wrapNonAppData(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/Channel;)Lorg/jboss/netty/channel/ChannelFuture;
    :try_end_3
    .catch Ljavax/net/ssl/SSLException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-interface {v0, v1}, Lorg/jboss/netty/channel/ChannelFuture;->setFailure(Ljava/lang/Throwable;)Z

    invoke-static {v2, v1}, Lorg/jboss/netty/channel/Channels;->fireExceptionCaught(Lorg/jboss/netty/channel/ChannelHandlerContext;Ljava/lang/Throwable;)V

    iget-boolean v1, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->closeOnSSLException:Z

    if-eqz v1, :cond_1

    invoke-static {v3}, Lorg/jboss/netty/channel/Channels;->future(Lorg/jboss/netty/channel/Channel;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v1

    invoke-static {v2, v1}, Lorg/jboss/netty/channel/Channels;->close(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelFuture;)V

    goto :goto_0

    :catch_1
    move-exception v0

    :try_start_4
    invoke-static {v3, v0}, Lorg/jboss/netty/channel/Channels;->failedFuture(Lorg/jboss/netty/channel/Channel;Ljava/lang/Throwable;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v1

    iput-object v1, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->handshakeFuture:Lorg/jboss/netty/channel/ChannelFuture;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v4

    throw v0

    :cond_3
    invoke-static {v2, v1}, Lorg/jboss/netty/channel/Channels;->fireExceptionCaught(Lorg/jboss/netty/channel/ChannelHandlerContext;Ljava/lang/Throwable;)V

    iget-boolean v1, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->closeOnSSLException:Z

    if-eqz v1, :cond_1

    invoke-static {v3}, Lorg/jboss/netty/channel/Channels;->future(Lorg/jboss/netty/channel/Channel;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v1

    invoke-static {v2, v1}, Lorg/jboss/netty/channel/Channels;->close(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelFuture;)V

    goto :goto_0
.end method

.method public handshake(Lorg/jboss/netty/channel/Channel;)Lorg/jboss/netty/channel/ChannelFuture;
    .locals 1

    invoke-virtual {p0}, Lorg/jboss/netty/handler/ssl/SslHandler;->handshake()Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0
.end method

.method public isEnableRenegotiation()Z
    .locals 1

    iget-boolean v0, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->enableRenegotiation:Z

    return v0
.end method

.method public isIssueHandshake()Z
    .locals 1

    iget-boolean v0, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->issueHandshake:Z

    return v0
.end method

.method public setCloseOnSSLException(Z)V
    .locals 2

    iget-object v0, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->ctx:Lorg/jboss/netty/channel/ChannelHandlerContext;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can only get changed before attached to ChannelPipeline"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-boolean p1, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->closeOnSSLException:Z

    return-void
.end method

.method public setEnableRenegotiation(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->enableRenegotiation:Z

    return-void
.end method

.method public setIssueHandshake(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->issueHandshake:Z

    return-void
.end method
