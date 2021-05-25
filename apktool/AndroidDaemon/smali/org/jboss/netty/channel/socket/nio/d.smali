.class abstract Lorg/jboss/netty/channel/socket/nio/d;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/jboss/netty/channel/socket/Worker;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field static final CLEANUP_INTERVAL:I = 0x100

.field private static final CONSTRAINT_LEVEL:I

.field private static final logger:Lorg/jboss/netty/logging/InternalLogger;

.field private static final nextId:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private final allowShutdownOnIdle:Z

.field private volatile cancelledKeys:I

.field private final eventQueue:Ljava/util/Queue;

.field private final executor:Ljava/util/concurrent/Executor;

.field final id:I

.field private final registerTaskQueue:Ljava/util/Queue;

.field volatile selector:Ljava/nio/channels/Selector;

.field private final selectorGuard:Ljava/util/concurrent/locks/ReadWriteLock;

.field protected final sendBufferPool:Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool;

.field private final startStopLock:Ljava/lang/Object;

.field private started:Z

.field protected volatile thread:Ljava/lang/Thread;

.field protected final wakenUp:Ljava/util/concurrent/atomic/AtomicBoolean;

.field protected final writeTaskQueue:Ljava/util/Queue;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/jboss/netty/channel/socket/nio/d;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/jboss/netty/channel/socket/nio/d;->$assertionsDisabled:Z

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lorg/jboss/netty/channel/socket/nio/d;->nextId:Ljava/util/concurrent/atomic/AtomicInteger;

    const-class v0, Lorg/jboss/netty/channel/socket/nio/d;

    invoke-static {v0}, Lorg/jboss/netty/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lorg/jboss/netty/logging/InternalLogger;

    move-result-object v0

    sput-object v0, Lorg/jboss/netty/channel/socket/nio/d;->logger:Lorg/jboss/netty/logging/InternalLogger;

    sget v0, Lorg/jboss/netty/channel/socket/nio/r;->b:I

    sput v0, Lorg/jboss/netty/channel/socket/nio/d;->CONSTRAINT_LEVEL:I

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/jboss/netty/channel/socket/nio/d;-><init>(Ljava/util/concurrent/Executor;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lorg/jboss/netty/channel/socket/nio/d;->nextId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    iput v0, p0, Lorg/jboss/netty/channel/socket/nio/d;->id:I

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lorg/jboss/netty/channel/socket/nio/d;->wakenUp:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Lorg/jboss/netty/channel/socket/nio/d;->selectorGuard:Ljava/util/concurrent/locks/ReadWriteLock;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/jboss/netty/channel/socket/nio/d;->startStopLock:Ljava/lang/Object;

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lorg/jboss/netty/channel/socket/nio/d;->registerTaskQueue:Ljava/util/Queue;

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lorg/jboss/netty/channel/socket/nio/d;->writeTaskQueue:Ljava/util/Queue;

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lorg/jboss/netty/channel/socket/nio/d;->eventQueue:Ljava/util/Queue;

    new-instance v0, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool;

    invoke-direct {v0}, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool;-><init>()V

    iput-object v0, p0, Lorg/jboss/netty/channel/socket/nio/d;->sendBufferPool:Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool;

    iput-object p1, p0, Lorg/jboss/netty/channel/socket/nio/d;->executor:Ljava/util/concurrent/Executor;

    iput-boolean p2, p0, Lorg/jboss/netty/channel/socket/nio/d;->allowShutdownOnIdle:Z

    return-void
.end method

.method private cleanUpCancelledKeys()Z
    .locals 3

    const/4 v0, 0x0

    iget v1, p0, Lorg/jboss/netty/channel/socket/nio/d;->cancelledKeys:I

    const/16 v2, 0x100

    if-lt v1, v2, :cond_0

    iput v0, p0, Lorg/jboss/netty/channel/socket/nio/d;->cancelledKeys:I

    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/d;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->selectNow()I

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private close(Ljava/nio/channels/SelectionKey;)V
    .locals 2

    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->attachment()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/channel/socket/nio/a;

    invoke-static {v0}, Lorg/jboss/netty/channel/Channels;->succeededFuture(Lorg/jboss/netty/channel/Channel;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/jboss/netty/channel/socket/nio/d;->close(Lorg/jboss/netty/channel/socket/nio/a;Lorg/jboss/netty/channel/ChannelFuture;)V

    return-void
.end method

.method static isIoThread(Lorg/jboss/netty/channel/socket/nio/a;)Z
    .locals 2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lorg/jboss/netty/channel/socket/nio/a;->worker:Lorg/jboss/netty/channel/socket/nio/d;

    iget-object v1, v1, Lorg/jboss/netty/channel/socket/nio/d;->thread:Ljava/lang/Thread;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private processEventQueue()V
    .locals 1

    :goto_0
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/d;->eventQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    invoke-direct {p0}, Lorg/jboss/netty/channel/socket/nio/d;->cleanUpCancelledKeys()Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method private processRegisterTaskQueue()V
    .locals 1

    :goto_0
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/d;->registerTaskQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    invoke-direct {p0}, Lorg/jboss/netty/channel/socket/nio/d;->cleanUpCancelledKeys()Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method private processSelectedKeys(Ljava/util/Set;)V
    .locals 4

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/channels/SelectionKey;

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    :try_start_0
    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->readyOps()I

    move-result v2

    and-int/lit8 v3, v2, 0x1

    if-nez v3, :cond_1

    if-nez v2, :cond_2

    :cond_1
    invoke-virtual {p0, v0}, Lorg/jboss/netty/channel/socket/nio/d;->read(Ljava/nio/channels/SelectionKey;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_2
    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_3

    invoke-virtual {p0, v0}, Lorg/jboss/netty/channel/socket/nio/d;->writeFromSelectorLoop(Ljava/nio/channels/SelectionKey;)V
    :try_end_0
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_0
    invoke-direct {p0}, Lorg/jboss/netty/channel/socket/nio/d;->cleanUpCancelledKeys()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_4
    return-void

    :catch_0
    move-exception v2

    invoke-direct {p0, v0}, Lorg/jboss/netty/channel/socket/nio/d;->close(Ljava/nio/channels/SelectionKey;)V

    goto :goto_0
.end method

.method private processWriteTaskQueue()V
    .locals 1

    :goto_0
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/d;->writeTaskQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    invoke-direct {p0}, Lorg/jboss/netty/channel/socket/nio/d;->cleanUpCancelledKeys()Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method private start()Ljava/nio/channels/Selector;
    .locals 4

    iget-boolean v0, p0, Lorg/jboss/netty/channel/socket/nio/d;->started:Z

    if-nez v0, :cond_0

    :try_start_0
    invoke-static {}, Ljava/nio/channels/Selector;->open()Ljava/nio/channels/Selector;

    move-result-object v0

    iput-object v0, p0, Lorg/jboss/netty/channel/socket/nio/d;->selector:Ljava/nio/channels/Selector;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/d;->executor:Ljava/util/concurrent/Executor;

    new-instance v1, Lorg/jboss/netty/util/ThreadRenamingRunnable;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "New I/O  worker #"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lorg/jboss/netty/channel/socket/nio/d;->id:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lorg/jboss/netty/util/ThreadRenamingRunnable;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lorg/jboss/netty/util/internal/DeadLockProofWorker;->start(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    sget-boolean v0, Lorg/jboss/netty/channel/socket/nio/d;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/d;->selector:Ljava/nio/channels/Selector;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/d;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->isOpen()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :catch_0
    move-exception v0

    new-instance v1, Lorg/jboss/netty/channel/ChannelException;

    const-string v2, "Failed to create a selector."

    invoke-direct {v1, v2, v0}, Lorg/jboss/netty/channel/ChannelException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catchall_0
    move-exception v0

    :try_start_2
    iget-object v1, p0, Lorg/jboss/netty/channel/socket/nio/d;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v1}, Ljava/nio/channels/Selector;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/jboss/netty/channel/socket/nio/d;->selector:Ljava/nio/channels/Selector;

    throw v0

    :catch_1
    move-exception v1

    sget-object v2, Lorg/jboss/netty/channel/socket/nio/d;->logger:Lorg/jboss/netty/logging/InternalLogger;

    const-string v3, "Failed to close a selector."

    invoke-interface {v2, v3, v1}, Lorg/jboss/netty/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jboss/netty/channel/socket/nio/d;->started:Z

    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/d;->selector:Ljava/nio/channels/Selector;

    return-object v0
.end method


# virtual methods
.method protected cleanUpWriteBuffer(Lorg/jboss/netty/channel/socket/nio/a;)V
    .locals 6

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v1, 0x0

    iget-object v4, p1, Lorg/jboss/netty/channel/socket/nio/a;->writeLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    iget-object v0, p1, Lorg/jboss/netty/channel/socket/nio/a;->currentWriteEvent:Lorg/jboss/netty/channel/MessageEvent;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/jboss/netty/channel/socket/nio/a;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v3, Ljava/nio/channels/NotYetConnectedException;

    invoke-direct {v3}, Ljava/nio/channels/NotYetConnectedException;-><init>()V

    :goto_0
    invoke-interface {v0}, Lorg/jboss/netty/channel/MessageEvent;->getFuture()Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v0

    iget-object v1, p1, Lorg/jboss/netty/channel/socket/nio/a;->currentWriteBuffer:Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$SendBuffer;

    invoke-interface {v1}, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$SendBuffer;->release()V

    const/4 v1, 0x0

    iput-object v1, p1, Lorg/jboss/netty/channel/socket/nio/a;->currentWriteBuffer:Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$SendBuffer;

    const/4 v1, 0x0

    iput-object v1, p1, Lorg/jboss/netty/channel/socket/nio/a;->currentWriteEvent:Lorg/jboss/netty/channel/MessageEvent;

    invoke-interface {v0, v3}, Lorg/jboss/netty/channel/ChannelFuture;->setFailure(Ljava/lang/Throwable;)Z

    move v1, v2

    :cond_0
    iget-object v5, p1, Lorg/jboss/netty/channel/socket/nio/a;->writeBufferQueue:Ljava/util/Queue;

    :goto_1
    invoke-interface {v5}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/channel/MessageEvent;

    if-eqz v0, :cond_4

    if-nez v3, :cond_1

    invoke-virtual {p1}, Lorg/jboss/netty/channel/socket/nio/a;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v1, Ljava/nio/channels/NotYetConnectedException;

    invoke-direct {v1}, Ljava/nio/channels/NotYetConnectedException;-><init>()V

    :goto_2
    move-object v3, v1

    move v1, v2

    :cond_1
    invoke-interface {v0}, Lorg/jboss/netty/channel/MessageEvent;->getFuture()Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v0

    invoke-interface {v0, v3}, Lorg/jboss/netty/channel/ChannelFuture;->setFailure(Ljava/lang/Throwable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v4

    throw v0

    :cond_2
    :try_start_1
    new-instance v3, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v3}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    goto :goto_0

    :cond_3
    new-instance v1, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v1}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    goto :goto_2

    :cond_4
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_5

    invoke-static {p1}, Lorg/jboss/netty/channel/socket/nio/d;->isIoThread(Lorg/jboss/netty/channel/socket/nio/a;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {p1, v3}, Lorg/jboss/netty/channel/Channels;->fireExceptionCaught(Lorg/jboss/netty/channel/Channel;Ljava/lang/Throwable;)V

    :cond_5
    :goto_3
    return-void

    :cond_6
    invoke-static {p1, v3}, Lorg/jboss/netty/channel/Channels;->fireExceptionCaughtLater(Lorg/jboss/netty/channel/Channel;Ljava/lang/Throwable;)Lorg/jboss/netty/channel/ChannelFuture;

    goto :goto_3
.end method

.method protected clearOpWrite(Lorg/jboss/netty/channel/socket/nio/a;)V
    .locals 4

    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/d;->selector:Ljava/nio/channels/Selector;

    iget-object v1, p1, Lorg/jboss/netty/channel/socket/nio/a;->channel:Ljava/nio/channels/SelectableChannel;

    invoke-virtual {v1, v0}, Ljava/nio/channels/SelectableChannel;->keyFor(Ljava/nio/channels/Selector;)Ljava/nio/channels/SelectionKey;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0, v0}, Lorg/jboss/netty/channel/socket/nio/d;->close(Ljava/nio/channels/SelectionKey;)V

    goto :goto_0

    :cond_1
    iget-object v1, p1, Lorg/jboss/netty/channel/socket/nio/a;->interestOpsLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p1}, Lorg/jboss/netty/channel/socket/nio/a;->getRawInterestOps()I

    move-result v2

    and-int/lit8 v3, v2, 0x4

    if-eqz v3, :cond_2

    and-int/lit8 v2, v2, -0x5

    invoke-virtual {v0, v2}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;

    invoke-virtual {p1, v2}, Lorg/jboss/netty/channel/socket/nio/a;->setRawInterestOpsNow(I)V

    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method close(Lorg/jboss/netty/channel/socket/nio/a;Lorg/jboss/netty/channel/ChannelFuture;)V
    .locals 4

    invoke-virtual {p1}, Lorg/jboss/netty/channel/socket/nio/a;->isConnected()Z

    move-result v0

    invoke-virtual {p1}, Lorg/jboss/netty/channel/socket/nio/a;->isBound()Z

    move-result v1

    invoke-static {p1}, Lorg/jboss/netty/channel/socket/nio/d;->isIoThread(Lorg/jboss/netty/channel/socket/nio/a;)Z

    move-result v2

    :try_start_0
    iget-object v3, p1, Lorg/jboss/netty/channel/socket/nio/a;->channel:Ljava/nio/channels/SelectableChannel;

    invoke-virtual {v3}, Ljava/nio/channels/SelectableChannel;->close()V

    iget v3, p0, Lorg/jboss/netty/channel/socket/nio/d;->cancelledKeys:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/jboss/netty/channel/socket/nio/d;->cancelledKeys:I

    invoke-virtual {p1}, Lorg/jboss/netty/channel/socket/nio/a;->setClosed()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {p2}, Lorg/jboss/netty/channel/ChannelFuture;->setSuccess()Z

    if-eqz v0, :cond_0

    if-eqz v2, :cond_2

    invoke-static {p1}, Lorg/jboss/netty/channel/Channels;->fireChannelDisconnected(Lorg/jboss/netty/channel/Channel;)V

    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    if-eqz v2, :cond_3

    invoke-static {p1}, Lorg/jboss/netty/channel/Channels;->fireChannelUnbound(Lorg/jboss/netty/channel/Channel;)V

    :cond_1
    :goto_1
    invoke-virtual {p0, p1}, Lorg/jboss/netty/channel/socket/nio/d;->cleanUpWriteBuffer(Lorg/jboss/netty/channel/socket/nio/a;)V

    if-eqz v2, :cond_4

    invoke-static {p1}, Lorg/jboss/netty/channel/Channels;->fireChannelClosed(Lorg/jboss/netty/channel/Channel;)V

    :goto_2
    return-void

    :cond_2
    invoke-static {p1}, Lorg/jboss/netty/channel/Channels;->fireChannelDisconnectedLater(Lorg/jboss/netty/channel/Channel;)Lorg/jboss/netty/channel/ChannelFuture;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-interface {p2, v0}, Lorg/jboss/netty/channel/ChannelFuture;->setFailure(Ljava/lang/Throwable;)Z

    if-eqz v2, :cond_6

    invoke-static {p1, v0}, Lorg/jboss/netty/channel/Channels;->fireExceptionCaught(Lorg/jboss/netty/channel/Channel;Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_3
    :try_start_1
    invoke-static {p1}, Lorg/jboss/netty/channel/Channels;->fireChannelUnboundLater(Lorg/jboss/netty/channel/Channel;)Lorg/jboss/netty/channel/ChannelFuture;

    goto :goto_1

    :cond_4
    invoke-static {p1}, Lorg/jboss/netty/channel/Channels;->fireChannelClosedLater(Lorg/jboss/netty/channel/Channel;)Lorg/jboss/netty/channel/ChannelFuture;

    goto :goto_2

    :cond_5
    invoke-interface {p2}, Lorg/jboss/netty/channel/ChannelFuture;->setSuccess()Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :cond_6
    invoke-static {p1, v0}, Lorg/jboss/netty/channel/Channels;->fireExceptionCaughtLater(Lorg/jboss/netty/channel/Channel;Ljava/lang/Throwable;)Lorg/jboss/netty/channel/ChannelFuture;

    goto :goto_2
.end method

.method protected abstract createRegisterTask(Lorg/jboss/netty/channel/socket/nio/a;Lorg/jboss/netty/channel/ChannelFuture;)Ljava/lang/Runnable;
.end method

.method public executeInIoThread(Ljava/lang/Runnable;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/jboss/netty/channel/socket/nio/d;->executeInIoThread(Ljava/lang/Runnable;Z)V

    return-void
.end method

.method public executeInIoThread(Ljava/lang/Runnable;Z)V
    .locals 3

    if-nez p2, :cond_0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lorg/jboss/netty/channel/socket/nio/d;->thread:Ljava/lang/Thread;

    if-ne v0, v1, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lorg/jboss/netty/channel/socket/nio/d;->startStopLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0}, Lorg/jboss/netty/channel/socket/nio/d;->start()Ljava/nio/channels/Selector;

    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/d;->eventQueue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    move-result v0

    sget-boolean v2, Lorg/jboss/netty/channel/socket/nio/d;->$assertionsDisabled:Z

    if-nez v2, :cond_1

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_1
    if-eqz v0, :cond_2

    :try_start_1
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/d;->selector:Ljava/nio/channels/Selector;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->wakeup()Ljava/nio/channels/Selector;

    :cond_2
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method protected abstract read(Ljava/nio/channels/SelectionKey;)Z
.end method

.method register(Lorg/jboss/netty/channel/socket/nio/a;Lorg/jboss/netty/channel/ChannelFuture;)V
    .locals 4

    invoke-virtual {p0, p1, p2}, Lorg/jboss/netty/channel/socket/nio/d;->createRegisterTask(Lorg/jboss/netty/channel/socket/nio/a;Lorg/jboss/netty/channel/ChannelFuture;)Ljava/lang/Runnable;

    move-result-object v0

    iget-object v1, p0, Lorg/jboss/netty/channel/socket/nio/d;->startStopLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0}, Lorg/jboss/netty/channel/socket/nio/d;->start()Ljava/nio/channels/Selector;

    iget-object v2, p0, Lorg/jboss/netty/channel/socket/nio/d;->registerTaskQueue:Ljava/util/Queue;

    invoke-interface {v2, v0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    move-result v0

    sget-boolean v2, Lorg/jboss/netty/channel/socket/nio/d;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/d;->wakenUp:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/d;->selector:Ljava/nio/channels/Selector;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->wakeup()Ljava/nio/channels/Selector;

    :cond_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public run()V
    .locals 8

    const/4 v2, 0x0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lorg/jboss/netty/channel/socket/nio/d;->thread:Ljava/lang/Thread;

    iget-object v3, p0, Lorg/jboss/netty/channel/socket/nio/d;->selector:Ljava/nio/channels/Selector;

    move v1, v2

    :goto_0
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/d;->wakenUp:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    sget v0, Lorg/jboss/netty/channel/socket/nio/d;->CONSTRAINT_LEVEL:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/d;->selectorGuard:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/d;->selectorGuard:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :cond_0
    :try_start_0
    invoke-static {v3}, Lorg/jboss/netty/channel/socket/nio/aa;->a(Ljava/nio/channels/Selector;)V

    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/d;->wakenUp:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v3}, Ljava/nio/channels/Selector;->wakeup()Ljava/nio/channels/Selector;

    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lorg/jboss/netty/channel/socket/nio/d;->cancelledKeys:I

    invoke-direct {p0}, Lorg/jboss/netty/channel/socket/nio/d;->processRegisterTaskQueue()V

    invoke-direct {p0}, Lorg/jboss/netty/channel/socket/nio/d;->processEventQueue()V

    invoke-direct {p0}, Lorg/jboss/netty/channel/socket/nio/d;->processWriteTaskQueue()V

    invoke-virtual {v3}, Ljava/nio/channels/Selector;->selectedKeys()Ljava/util/Set;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/jboss/netty/channel/socket/nio/d;->processSelectedKeys(Ljava/util/Set;)V

    invoke-virtual {v3}, Ljava/nio/channels/Selector;->keys()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    if-nez v1, :cond_2

    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/d;->executor:Ljava/util/concurrent/Executor;

    instance-of v0, v0, Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/d;->executor:Ljava/util/concurrent/Executor;

    check-cast v0, Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_2
    iget-object v4, p0, Lorg/jboss/netty/channel/socket/nio/d;->startStopLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/d;->registerTaskQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v3}, Ljava/nio/channels/Selector;->keys()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jboss/netty/channel/socket/nio/d;->started:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v3}, Ljava/nio/channels/Selector;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/4 v0, 0x0

    :try_start_3
    iput-object v0, p0, Lorg/jboss/netty/channel/socket/nio/d;->selector:Ljava/nio/channels/Selector;

    :goto_1
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return-void

    :catch_0
    move-exception v0

    :try_start_4
    sget-object v5, Lorg/jboss/netty/channel/socket/nio/d;->logger:Lorg/jboss/netty/logging/InternalLogger;

    const-string v6, "Failed to close a selector."

    invoke-interface {v5, v6, v0}, Lorg/jboss/netty/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    const/4 v0, 0x0

    :try_start_5
    iput-object v0, p0, Lorg/jboss/netty/channel/socket/nio/d;->selector:Ljava/nio/channels/Selector;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    :try_start_6
    monitor-exit v4

    throw v0
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1

    :catch_1
    move-exception v0

    move-object v7, v0

    move v0, v1

    move-object v1, v7

    :goto_2
    sget-object v4, Lorg/jboss/netty/channel/socket/nio/d;->logger:Lorg/jboss/netty/logging/InternalLogger;

    const-string v5, "Unexpected exception in the selector loop."

    invoke-interface {v4, v5, v1}, Lorg/jboss/netty/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    const-wide/16 v4, 0x3e8

    :try_start_7
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_2

    move v1, v0

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    const/4 v5, 0x0

    :try_start_8
    iput-object v5, p0, Lorg/jboss/netty/channel/socket/nio/d;->selector:Ljava/nio/channels/Selector;

    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :cond_3
    :try_start_9
    monitor-exit v4
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_3

    move v0, v2

    :goto_3
    move v1, v0

    goto/16 :goto_0

    :cond_4
    :try_start_a
    iget-boolean v0, p0, Lorg/jboss/netty/channel/socket/nio/d;->allowShutdownOnIdle:Z
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_1

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    move v1, v0

    goto/16 :goto_0

    :cond_5
    move v0, v2

    goto :goto_3

    :catch_2
    move-exception v1

    move v1, v0

    goto/16 :goto_0

    :catch_3
    move-exception v0

    move-object v1, v0

    move v0, v2

    goto :goto_2

    :cond_6
    move v0, v1

    goto :goto_3
.end method

.method protected abstract scheduleWriteIfNecessary(Lorg/jboss/netty/channel/socket/nio/a;)Z
.end method

.method setInterestOps(Lorg/jboss/netty/channel/socket/nio/a;Lorg/jboss/netty/channel/ChannelFuture;I)V
    .locals 9

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-static {p1}, Lorg/jboss/netty/channel/socket/nio/d;->isIoThread(Lorg/jboss/netty/channel/socket/nio/a;)Z

    move-result v2

    :try_start_0
    iget-object v3, p1, Lorg/jboss/netty/channel/socket/nio/a;->interestOpsLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget-object v4, p0, Lorg/jboss/netty/channel/socket/nio/d;->selector:Ljava/nio/channels/Selector;

    iget-object v5, p1, Lorg/jboss/netty/channel/socket/nio/a;->channel:Ljava/nio/channels/SelectableChannel;

    invoke-virtual {v5, v4}, Ljava/nio/channels/SelectableChannel;->keyFor(Ljava/nio/channels/Selector;)Ljava/nio/channels/SelectionKey;

    move-result-object v5

    and-int/lit8 v6, p3, -0x5

    invoke-virtual {p1}, Lorg/jboss/netty/channel/socket/nio/a;->getRawInterestOps()I

    move-result v7

    and-int/lit8 v7, v7, 0x4

    or-int/2addr v6, v7

    if-eqz v5, :cond_0

    if-nez v4, :cond_4

    :cond_0
    invoke-virtual {p1}, Lorg/jboss/netty/channel/socket/nio/a;->getRawInterestOps()I

    move-result v4

    if-eq v4, v6, :cond_d

    :goto_0
    invoke-virtual {p1, v6}, Lorg/jboss/netty/channel/socket/nio/a;->setRawInterestOpsNow(I)V

    invoke-interface {p2}, Lorg/jboss/netty/channel/ChannelFuture;->setSuccess()Z

    if-eqz v0, :cond_1

    if-eqz v2, :cond_3

    invoke-static {p1}, Lorg/jboss/netty/channel/Channels;->fireChannelInterestChanged(Lorg/jboss/netty/channel/Channel;)V

    :cond_1
    :goto_1
    monitor-exit v3

    :cond_2
    :goto_2
    return-void

    :cond_3
    invoke-static {p1}, Lorg/jboss/netty/channel/Channels;->fireChannelInterestChangedLater(Lorg/jboss/netty/channel/Channel;)Lorg/jboss/netty/channel/ChannelFuture;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v3

    throw v0
    :try_end_2
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    :catch_0
    move-exception v0

    new-instance v0, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v0}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    invoke-interface {p2, v0}, Lorg/jboss/netty/channel/ChannelFuture;->setFailure(Ljava/lang/Throwable;)Z

    if-eqz v2, :cond_a

    invoke-static {p1, v0}, Lorg/jboss/netty/channel/Channels;->fireExceptionCaught(Lorg/jboss/netty/channel/Channel;Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_4
    :try_start_3
    sget v7, Lorg/jboss/netty/channel/socket/nio/d;->CONSTRAINT_LEVEL:I

    packed-switch v7, :pswitch_data_0

    new-instance v0, Ljava/lang/Error;

    invoke-direct {v0}, Ljava/lang/Error;-><init>()V

    throw v0

    :pswitch_0
    invoke-virtual {p1}, Lorg/jboss/netty/channel/socket/nio/a;->getRawInterestOps()I

    move-result v7

    if-eq v7, v6, :cond_c

    invoke-virtual {v5, v6}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    iget-object v5, p0, Lorg/jboss/netty/channel/socket/nio/d;->thread:Ljava/lang/Thread;

    if-eq v1, v5, :cond_5

    iget-object v1, p0, Lorg/jboss/netty/channel/socket/nio/d;->wakenUp:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v5, 0x0

    const/4 v7, 0x1

    invoke-virtual {v1, v5, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v4}, Ljava/nio/channels/Selector;->wakeup()Ljava/nio/channels/Selector;

    :cond_5
    :goto_3
    if-eqz v0, :cond_6

    invoke-virtual {p1, v6}, Lorg/jboss/netty/channel/socket/nio/a;->setRawInterestOpsNow(I)V

    :cond_6
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-interface {p2}, Lorg/jboss/netty/channel/ChannelFuture;->setSuccess()Z

    if-eqz v0, :cond_2

    if-eqz v2, :cond_9

    invoke-static {p1}, Lorg/jboss/netty/channel/Channels;->fireChannelInterestChanged(Lorg/jboss/netty/channel/Channel;)V
    :try_end_4
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    invoke-interface {p2, v0}, Lorg/jboss/netty/channel/ChannelFuture;->setFailure(Ljava/lang/Throwable;)Z

    if-eqz v2, :cond_b

    invoke-static {p1, v0}, Lorg/jboss/netty/channel/Channels;->fireExceptionCaught(Lorg/jboss/netty/channel/Channel;Ljava/lang/Throwable;)V

    goto :goto_2

    :pswitch_1
    :try_start_5
    invoke-virtual {p1}, Lorg/jboss/netty/channel/socket/nio/a;->getRawInterestOps()I

    move-result v7

    if-eq v7, v6, :cond_c

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    iget-object v7, p0, Lorg/jboss/netty/channel/socket/nio/d;->thread:Ljava/lang/Thread;

    if-ne v1, v7, :cond_7

    invoke-virtual {v5, v6}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;

    goto :goto_3

    :cond_7
    iget-object v1, p0, Lorg/jboss/netty/channel/socket/nio/d;->selectorGuard:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    iget-object v1, p0, Lorg/jboss/netty/channel/socket/nio/d;->wakenUp:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-virtual {v1, v7, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {v4}, Ljava/nio/channels/Selector;->wakeup()Ljava/nio/channels/Selector;

    :cond_8
    invoke-virtual {v5, v6}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    iget-object v1, p0, Lorg/jboss/netty/channel/socket/nio/d;->selectorGuard:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_3

    :catchall_1
    move-exception v0

    iget-object v1, p0, Lorg/jboss/netty/channel/socket/nio/d;->selectorGuard:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :cond_9
    :try_start_8
    invoke-static {p1}, Lorg/jboss/netty/channel/Channels;->fireChannelInterestChangedLater(Lorg/jboss/netty/channel/Channel;)Lorg/jboss/netty/channel/ChannelFuture;
    :try_end_8
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_1

    goto/16 :goto_2

    :cond_a
    invoke-static {p1, v0}, Lorg/jboss/netty/channel/Channels;->fireExceptionCaughtLater(Lorg/jboss/netty/channel/Channel;Ljava/lang/Throwable;)Lorg/jboss/netty/channel/ChannelFuture;

    goto/16 :goto_2

    :cond_b
    invoke-static {p1, v0}, Lorg/jboss/netty/channel/Channels;->fireExceptionCaughtLater(Lorg/jboss/netty/channel/Channel;Ljava/lang/Throwable;)Lorg/jboss/netty/channel/ChannelFuture;

    goto/16 :goto_2

    :cond_c
    move v0, v1

    goto :goto_3

    :cond_d
    move v0, v1

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method protected setOpWrite(Lorg/jboss/netty/channel/socket/nio/a;)V
    .locals 4

    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/d;->selector:Ljava/nio/channels/Selector;

    iget-object v1, p1, Lorg/jboss/netty/channel/socket/nio/a;->channel:Ljava/nio/channels/SelectableChannel;

    invoke-virtual {v1, v0}, Ljava/nio/channels/SelectableChannel;->keyFor(Ljava/nio/channels/Selector;)Ljava/nio/channels/SelectionKey;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0, v0}, Lorg/jboss/netty/channel/socket/nio/d;->close(Ljava/nio/channels/SelectionKey;)V

    goto :goto_0

    :cond_1
    iget-object v1, p1, Lorg/jboss/netty/channel/socket/nio/a;->interestOpsLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p1}, Lorg/jboss/netty/channel/socket/nio/a;->getRawInterestOps()I

    move-result v2

    and-int/lit8 v3, v2, 0x4

    if-nez v3, :cond_2

    or-int/lit8 v2, v2, 0x4

    invoke-virtual {v0, v2}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;

    invoke-virtual {p1, v2}, Lorg/jboss/netty/channel/socket/nio/a;->setRawInterestOpsNow(I)V

    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method protected write0(Lorg/jboss/netty/channel/socket/nio/a;)V
    .locals 23

    const/4 v12, 0x1

    const/4 v5, 0x0

    const/4 v15, 0x0

    invoke-static/range {p1 .. p1}, Lorg/jboss/netty/channel/socket/nio/d;->isIoThread(Lorg/jboss/netty/channel/socket/nio/a;)Z

    move-result v17

    const-wide/16 v10, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jboss/netty/channel/socket/nio/d;->sendBufferPool:Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    iget-object v2, v0, Lorg/jboss/netty/channel/socket/nio/a;->channel:Ljava/nio/channels/SelectableChannel;

    move-object v9, v2

    check-cast v9, Ljava/nio/channels/WritableByteChannel;

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/jboss/netty/channel/socket/nio/a;->writeBufferQueue:Ljava/util/Queue;

    move-object/from16 v19, v0

    invoke-virtual/range {p1 .. p1}, Lorg/jboss/netty/channel/socket/nio/a;->getConfig()Lorg/jboss/netty/channel/socket/nio/NioChannelConfig;

    move-result-object v2

    invoke-interface {v2}, Lorg/jboss/netty/channel/socket/nio/NioChannelConfig;->getWriteSpinCount()I

    move-result v16

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/jboss/netty/channel/socket/nio/a;->writeLock:Ljava/lang/Object;

    move-object/from16 v20, v0

    monitor-enter v20

    const/4 v2, 0x1

    :try_start_0
    move-object/from16 v0, p1

    iput-boolean v2, v0, Lorg/jboss/netty/channel/socket/nio/a;->inWriteNowLoop:Z

    :goto_0
    move-object/from16 v0, p1

    iget-object v2, v0, Lorg/jboss/netty/channel/socket/nio/a;->currentWriteEvent:Lorg/jboss/netty/channel/MessageEvent;

    if-nez v2, :cond_3

    invoke-interface/range {v19 .. v19}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jboss/netty/channel/MessageEvent;

    move-object/from16 v0, p1

    iput-object v2, v0, Lorg/jboss/netty/channel/socket/nio/a;->currentWriteEvent:Lorg/jboss/netty/channel/MessageEvent;

    if-nez v2, :cond_1

    const/4 v2, 0x1

    const/4 v3, 0x0

    move-object/from16 v0, p1

    iput-boolean v3, v0, Lorg/jboss/netty/channel/socket/nio/a;->writeSuspended:Z

    :goto_1
    const/4 v3, 0x0

    move-object/from16 v0, p1

    iput-boolean v3, v0, Lorg/jboss/netty/channel/socket/nio/a;->inWriteNowLoop:Z

    if-eqz v12, :cond_0

    if-eqz v5, :cond_9

    invoke-virtual/range {p0 .. p1}, Lorg/jboss/netty/channel/socket/nio/d;->setOpWrite(Lorg/jboss/netty/channel/socket/nio/a;)V

    :cond_0
    :goto_2
    monitor-exit v20
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v17, :cond_a

    move-object/from16 v0, p1

    invoke-static {v0, v10, v11}, Lorg/jboss/netty/channel/Channels;->fireWriteComplete(Lorg/jboss/netty/channel/Channel;J)V

    :goto_3
    return-void

    :cond_1
    :try_start_1
    invoke-interface {v2}, Lorg/jboss/netty/channel/MessageEvent;->getMessage()Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool;->a(Ljava/lang/Object;)Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$SendBuffer;

    move-result-object v14

    move-object/from16 v0, p1

    iput-object v14, v0, Lorg/jboss/netty/channel/socket/nio/a;->currentWriteBuffer:Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$SendBuffer;

    :goto_4
    invoke-interface {v2}, Lorg/jboss/netty/channel/MessageEvent;->getFuture()Lorg/jboss/netty/channel/ChannelFuture;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    const-wide/16 v3, 0x0

    move/from16 v6, v16

    :goto_5
    if-lez v6, :cond_2

    :try_start_2
    invoke-interface {v14, v9}, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$SendBuffer;->transferTo(Ljava/nio/channels/WritableByteChannel;)J

    move-result-wide v3

    const-wide/16 v7, 0x0

    cmp-long v7, v3, v7

    if-eqz v7, :cond_4

    add-long/2addr v10, v3

    :cond_2
    invoke-interface {v14}, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$SendBuffer;->finished()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v14}, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$SendBuffer;->release()V

    const/4 v3, 0x0

    move-object/from16 v0, p1

    iput-object v3, v0, Lorg/jboss/netty/channel/socket/nio/a;->currentWriteEvent:Lorg/jboss/netty/channel/MessageEvent;

    const/4 v3, 0x0

    move-object/from16 v0, p1

    iput-object v3, v0, Lorg/jboss/netty/channel/socket/nio/a;->currentWriteBuffer:Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$SendBuffer;
    :try_end_2
    .catch Ljava/nio/channels/AsynchronousCloseException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v4, 0x0

    :try_start_3
    invoke-interface {v2}, Lorg/jboss/netty/channel/ChannelFuture;->setSuccess()Z
    :try_end_3
    .catch Ljava/nio/channels/AsynchronousCloseException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-wide v2, v10

    move v4, v5

    move v5, v12

    :goto_6
    move-wide v10, v2

    move v12, v5

    move v5, v4

    goto :goto_0

    :cond_3
    :try_start_4
    move-object/from16 v0, p1

    iget-object v14, v0, Lorg/jboss/netty/channel/socket/nio/a;->currentWriteBuffer:Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$SendBuffer;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_4

    :cond_4
    :try_start_5
    invoke-interface {v14}, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$SendBuffer;->finished()Z
    :try_end_5
    .catch Ljava/nio/channels/AsynchronousCloseException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result v7

    if-nez v7, :cond_2

    add-int/lit8 v6, v6, -0x1

    goto :goto_5

    :cond_5
    const/4 v13, 0x1

    const/4 v5, 0x1

    :try_start_6
    move-object/from16 v0, p1

    iput-boolean v5, v0, Lorg/jboss/netty/channel/socket/nio/a;->writeSuspended:Z

    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-lez v5, :cond_6

    invoke-interface {v14}, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$SendBuffer;->writtenBytes()J

    move-result-wide v5

    invoke-interface {v14}, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$SendBuffer;->totalBytes()J

    move-result-wide v7

    invoke-interface/range {v2 .. v8}, Lorg/jboss/netty/channel/ChannelFuture;->setProgress(JJJ)Z
    :try_end_6
    .catch Ljava/nio/channels/AsynchronousCloseException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :cond_6
    move v2, v15

    move v5, v13

    goto :goto_1

    :catch_0
    move-exception v3

    move-object v6, v3

    move-object v7, v14

    move-wide v3, v10

    :goto_7
    if-eqz v7, :cond_7

    :try_start_7
    invoke-interface {v7}, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$SendBuffer;->release()V

    :cond_7
    const/4 v7, 0x0

    move-object/from16 v0, p1

    iput-object v7, v0, Lorg/jboss/netty/channel/socket/nio/a;->currentWriteEvent:Lorg/jboss/netty/channel/MessageEvent;

    const/4 v7, 0x0

    move-object/from16 v0, p1

    iput-object v7, v0, Lorg/jboss/netty/channel/socket/nio/a;->currentWriteBuffer:Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$SendBuffer;

    invoke-interface {v2, v6}, Lorg/jboss/netty/channel/ChannelFuture;->setFailure(Ljava/lang/Throwable;)Z

    if-eqz v17, :cond_8

    move-object/from16 v0, p1

    invoke-static {v0, v6}, Lorg/jboss/netty/channel/Channels;->fireExceptionCaught(Lorg/jboss/netty/channel/Channel;Ljava/lang/Throwable;)V

    :goto_8
    instance-of v2, v6, Ljava/io/IOException;

    if-eqz v2, :cond_b

    const/4 v2, 0x0

    invoke-static/range {p1 .. p1}, Lorg/jboss/netty/channel/Channels;->succeededFuture(Lorg/jboss/netty/channel/Channel;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v6

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v6}, Lorg/jboss/netty/channel/socket/nio/d;->close(Lorg/jboss/netty/channel/socket/nio/a;Lorg/jboss/netty/channel/ChannelFuture;)V

    move-wide/from16 v21, v3

    move v4, v5

    move v5, v2

    move-wide/from16 v2, v21

    goto :goto_6

    :cond_8
    move-object/from16 v0, p1

    invoke-static {v0, v6}, Lorg/jboss/netty/channel/Channels;->fireExceptionCaughtLater(Lorg/jboss/netty/channel/Channel;Ljava/lang/Throwable;)Lorg/jboss/netty/channel/ChannelFuture;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_8

    :catchall_0
    move-exception v2

    monitor-exit v20

    throw v2

    :cond_9
    if-eqz v2, :cond_0

    :try_start_8
    invoke-virtual/range {p0 .. p1}, Lorg/jboss/netty/channel/socket/nio/d;->clearOpWrite(Lorg/jboss/netty/channel/socket/nio/a;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_2

    :cond_a
    move-object/from16 v0, p1

    invoke-static {v0, v10, v11}, Lorg/jboss/netty/channel/Channels;->fireWriteCompleteLater(Lorg/jboss/netty/channel/Channel;J)Lorg/jboss/netty/channel/ChannelFuture;

    goto/16 :goto_3

    :catch_1
    move-exception v3

    move-object v6, v3

    move-object v7, v4

    move-wide v3, v10

    goto :goto_7

    :catch_2
    move-exception v3

    move-object v6, v3

    move-object v7, v14

    move v5, v13

    move-wide v3, v10

    goto :goto_7

    :catch_3
    move-exception v2

    goto/16 :goto_0

    :catch_4
    move-exception v2

    move v5, v13

    goto/16 :goto_0

    :cond_b
    move-wide/from16 v21, v3

    move-wide/from16 v2, v21

    move v4, v5

    move v5, v12

    goto/16 :goto_6
.end method

.method writeFromSelectorLoop(Ljava/nio/channels/SelectionKey;)V
    .locals 2

    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->attachment()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/channel/socket/nio/a;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lorg/jboss/netty/channel/socket/nio/a;->writeSuspended:Z

    invoke-virtual {p0, v0}, Lorg/jboss/netty/channel/socket/nio/d;->write0(Lorg/jboss/netty/channel/socket/nio/a;)V

    return-void
.end method

.method writeFromTaskLoop(Lorg/jboss/netty/channel/socket/nio/a;)V
    .locals 1

    iget-boolean v0, p1, Lorg/jboss/netty/channel/socket/nio/a;->writeSuspended:Z

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lorg/jboss/netty/channel/socket/nio/d;->write0(Lorg/jboss/netty/channel/socket/nio/a;)V

    :cond_0
    return-void
.end method

.method writeFromUserCode(Lorg/jboss/netty/channel/socket/nio/a;)V
    .locals 1

    invoke-virtual {p1}, Lorg/jboss/netty/channel/socket/nio/a;->isConnected()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lorg/jboss/netty/channel/socket/nio/d;->cleanUpWriteBuffer(Lorg/jboss/netty/channel/socket/nio/a;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0, p1}, Lorg/jboss/netty/channel/socket/nio/d;->scheduleWriteIfNecessary(Lorg/jboss/netty/channel/socket/nio/a;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p1, Lorg/jboss/netty/channel/socket/nio/a;->writeSuspended:Z

    if-nez v0, :cond_0

    iget-boolean v0, p1, Lorg/jboss/netty/channel/socket/nio/a;->inWriteNowLoop:Z

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lorg/jboss/netty/channel/socket/nio/d;->write0(Lorg/jboss/netty/channel/socket/nio/a;)V

    goto :goto_0
.end method
