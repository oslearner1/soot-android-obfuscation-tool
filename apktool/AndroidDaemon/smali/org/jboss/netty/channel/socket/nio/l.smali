.class final Lorg/jboss/netty/channel/socket/nio/l;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static synthetic g:Z


# instance fields
.field volatile a:Ljava/nio/channels/Selector;

.field private b:Z

.field private final c:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final d:Ljava/lang/Object;

.field private final e:Ljava/util/Queue;

.field private final f:I

.field private synthetic h:Lorg/jboss/netty/channel/socket/nio/i;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/jboss/netty/channel/socket/nio/i;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/jboss/netty/channel/socket/nio/l;->g:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lorg/jboss/netty/channel/socket/nio/i;I)V
    .locals 1

    iput-object p1, p0, Lorg/jboss/netty/channel/socket/nio/l;->h:Lorg/jboss/netty/channel/socket/nio/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lorg/jboss/netty/channel/socket/nio/l;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/jboss/netty/channel/socket/nio/l;->d:Ljava/lang/Object;

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lorg/jboss/netty/channel/socket/nio/l;->e:Ljava/util/Queue;

    iput p2, p0, Lorg/jboss/netty/channel/socket/nio/l;->f:I

    return-void
.end method

.method private static a(Ljava/nio/channels/SelectionKey;)V
    .locals 3

    invoke-virtual {p0}, Ljava/nio/channels/SelectionKey;->attachment()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/channel/socket/nio/h;

    :try_start_0
    iget-object v1, v0, Lorg/jboss/netty/channel/socket/nio/h;->channel:Ljava/nio/channels/SelectableChannel;

    check-cast v1, Ljava/nio/channels/SocketChannel;

    invoke-virtual {v1}, Ljava/nio/channels/SocketChannel;->finishConnect()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Ljava/nio/channels/SelectionKey;->cancel()V

    iget-object v1, v0, Lorg/jboss/netty/channel/socket/nio/h;->worker:Lorg/jboss/netty/channel/socket/nio/d;

    iget-object v2, v0, Lorg/jboss/netty/channel/socket/nio/h;->a:Lorg/jboss/netty/channel/ChannelFuture;

    invoke-virtual {v1, v0, v2}, Lorg/jboss/netty/channel/socket/nio/d;->register(Lorg/jboss/netty/channel/socket/nio/a;Lorg/jboss/netty/channel/ChannelFuture;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v1

    iget-object v2, v0, Lorg/jboss/netty/channel/socket/nio/h;->a:Lorg/jboss/netty/channel/ChannelFuture;

    invoke-interface {v2, v1}, Lorg/jboss/netty/channel/ChannelFuture;->setFailure(Ljava/lang/Throwable;)Z

    invoke-static {v0, v1}, Lorg/jboss/netty/channel/Channels;->fireExceptionCaught(Lorg/jboss/netty/channel/Channel;Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Ljava/nio/channels/SelectionKey;->cancel()V

    iget-object v1, v0, Lorg/jboss/netty/channel/socket/nio/h;->worker:Lorg/jboss/netty/channel/socket/nio/d;

    invoke-static {v0}, Lorg/jboss/netty/channel/Channels;->succeededFuture(Lorg/jboss/netty/channel/Channel;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/jboss/netty/channel/socket/nio/d;->close(Lorg/jboss/netty/channel/socket/nio/a;Lorg/jboss/netty/channel/ChannelFuture;)V

    goto :goto_0
.end method


# virtual methods
.method final a(Lorg/jboss/netty/channel/socket/nio/h;)V
    .locals 8

    const/4 v7, 0x1

    new-instance v2, Lorg/jboss/netty/channel/socket/nio/m;

    invoke-direct {v2, p0, p1}, Lorg/jboss/netty/channel/socket/nio/m;-><init>(Lorg/jboss/netty/channel/socket/nio/l;Lorg/jboss/netty/channel/socket/nio/h;)V

    iget-object v3, p0, Lorg/jboss/netty/channel/socket/nio/l;->d:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-boolean v0, p0, Lorg/jboss/netty/channel/socket/nio/l;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_2

    :try_start_1
    invoke-static {}, Ljava/nio/channels/Selector;->open()Ljava/nio/channels/Selector;

    move-result-object v1

    iput-object v1, p0, Lorg/jboss/netty/channel/socket/nio/l;->a:Ljava/nio/channels/Selector;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/l;->h:Lorg/jboss/netty/channel/socket/nio/i;

    iget-object v0, v0, Lorg/jboss/netty/channel/socket/nio/i;->b:Ljava/util/concurrent/Executor;

    new-instance v4, Lorg/jboss/netty/util/ThreadRenamingRunnable;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "New I/O client boss #"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lorg/jboss/netty/channel/socket/nio/l;->h:Lorg/jboss/netty/channel/socket/nio/i;

    iget v6, v6, Lorg/jboss/netty/channel/socket/nio/i;->c:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x2d

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lorg/jboss/netty/channel/socket/nio/l;->f:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, p0, v5}, Lorg/jboss/netty/util/ThreadRenamingRunnable;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-static {v0, v4}, Lorg/jboss/netty/util/internal/DeadLockProofWorker;->start(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v0, v1

    :goto_0
    :try_start_3
    sget-boolean v1, Lorg/jboss/netty/channel/socket/nio/l;->g:Z

    if-nez v1, :cond_3

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->isOpen()Z

    move-result v1

    if-nez v1, :cond_3

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0

    :catch_0
    move-exception v0

    :try_start_4
    new-instance v1, Lorg/jboss/netty/channel/ChannelException;

    const-string v2, "Failed to create a selector."

    invoke-direct {v1, v2, v0}, Lorg/jboss/netty/channel/ChannelException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_1
    move-exception v0

    :try_start_5
    invoke-virtual {v1}, Ljava/nio/channels/Selector;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_1
    :goto_1
    const/4 v1, 0x0

    :try_start_6
    iput-object v1, p0, Lorg/jboss/netty/channel/socket/nio/l;->a:Ljava/nio/channels/Selector;

    throw v0

    :cond_2
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/l;->a:Ljava/nio/channels/Selector;

    goto :goto_0

    :cond_3
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/jboss/netty/channel/socket/nio/l;->b:Z

    iget-object v1, p0, Lorg/jboss/netty/channel/socket/nio/l;->e:Ljava/util/Queue;

    invoke-interface {v1, v2}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    move-result v1

    sget-boolean v2, Lorg/jboss/netty/channel/socket/nio/l;->g:Z

    if-nez v2, :cond_4

    if-nez v1, :cond_4

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_4
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    iget-object v1, p0, Lorg/jboss/netty/channel/socket/nio/l;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->wakeup()Ljava/nio/channels/Selector;

    :cond_5
    return-void

    :catch_1
    move-exception v1

    :try_start_7
    sget-object v2, Lorg/jboss/netty/channel/socket/nio/i;->a:Lorg/jboss/netty/logging/InternalLogger;

    invoke-interface {v2}, Lorg/jboss/netty/logging/InternalLogger;->isWarnEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lorg/jboss/netty/channel/socket/nio/i;->a:Lorg/jboss/netty/logging/InternalLogger;

    const-string v4, "Failed to close a selector."

    invoke-interface {v2, v4, v1}, Lorg/jboss/netty/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_1
.end method

.method public final run()V
    .locals 14

    const/4 v2, 0x0

    iget-object v6, p0, Lorg/jboss/netty/channel/socket/nio/l;->a:Ljava/nio/channels/Selector;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    move v3, v2

    move-wide v11, v0

    move-wide v1, v11

    :goto_0
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/l;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const-wide/16 v4, 0xa

    :try_start_0
    invoke-virtual {v6, v4, v5}, Ljava/nio/channels/Selector;->select(J)I

    move-result v4

    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/l;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v6}, Ljava/nio/channels/Selector;->wakeup()Ljava/nio/channels/Selector;

    :cond_0
    :goto_1
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/l;->e:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v11, v0

    move-wide v12, v1

    move-wide v0, v12

    move v2, v3

    move-object v3, v11

    :goto_2
    sget-object v4, Lorg/jboss/netty/channel/socket/nio/i;->a:Lorg/jboss/netty/logging/InternalLogger;

    invoke-interface {v4}, Lorg/jboss/netty/logging/InternalLogger;->isWarnEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    sget-object v4, Lorg/jboss/netty/channel/socket/nio/i;->a:Lorg/jboss/netty/logging/InternalLogger;

    const-string v5, "Unexpected exception in the selector loop."

    invoke-interface {v4, v5, v3}, Lorg/jboss/netty/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    const-wide/16 v3, 0x3e8

    :try_start_1
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_2

    move v3, v2

    move-wide v11, v0

    move-wide v1, v11

    goto :goto_0

    :cond_2
    if-lez v4, :cond_5

    :try_start_2
    invoke-virtual {v6}, Ljava/nio/channels/Selector;->selectedKeys()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/channels/SelectionKey;

    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->attachment()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/channel/socket/nio/h;

    iget-object v5, v0, Lorg/jboss/netty/channel/socket/nio/h;->worker:Lorg/jboss/netty/channel/socket/nio/d;

    invoke-static {v0}, Lorg/jboss/netty/channel/Channels;->succeededFuture(Lorg/jboss/netty/channel/Channel;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v7

    invoke-virtual {v5, v0, v7}, Lorg/jboss/netty/channel/socket/nio/d;->close(Lorg/jboss/netty/channel/socket/nio/a;Lorg/jboss/netty/channel/ChannelFuture;)V

    goto :goto_3

    :cond_4
    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->isConnectable()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-static {v0}, Lorg/jboss/netty/channel/socket/nio/l;->a(Ljava/nio/channels/SelectionKey;)V

    goto :goto_3

    :cond_5
    invoke-static {}, Ljava/lang/System;->nanoTime()J
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    move-result-wide v4

    sub-long v7, v4, v1

    const-wide/32 v9, 0x989680

    cmp-long v0, v7, v9

    if-ltz v0, :cond_a

    :try_start_3
    invoke-virtual {v6}, Ljava/nio/channels/Selector;->keys()Ljava/util/Set;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_6
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/channels/SelectionKey;

    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->attachment()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/channel/socket/nio/h;

    iget-wide v7, v0, Lorg/jboss/netty/channel/socket/nio/h;->c:J

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-lez v7, :cond_8

    iget-wide v7, v0, Lorg/jboss/netty/channel/socket/nio/h;->c:J

    cmp-long v7, v4, v7

    if-ltz v7, :cond_8

    if-nez v1, :cond_7

    new-instance v1, Ljava/net/ConnectException;

    const-string v7, "connection timed out"

    invoke-direct {v1, v7}, Ljava/net/ConnectException;-><init>(Ljava/lang/String;)V

    :cond_7
    iget-object v7, v0, Lorg/jboss/netty/channel/socket/nio/h;->a:Lorg/jboss/netty/channel/ChannelFuture;

    invoke-interface {v7, v1}, Lorg/jboss/netty/channel/ChannelFuture;->setFailure(Ljava/lang/Throwable;)Z

    invoke-static {v0, v1}, Lorg/jboss/netty/channel/Channels;->fireExceptionCaught(Lorg/jboss/netty/channel/Channel;Ljava/lang/Throwable;)V

    iget-object v7, v0, Lorg/jboss/netty/channel/socket/nio/h;->worker:Lorg/jboss/netty/channel/socket/nio/d;

    invoke-static {v0}, Lorg/jboss/netty/channel/Channels;->succeededFuture(Lorg/jboss/netty/channel/Channel;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v8

    invoke-virtual {v7, v0, v8}, Lorg/jboss/netty/channel/socket/nio/d;->close(Lorg/jboss/netty/channel/socket/nio/a;Lorg/jboss/netty/channel/ChannelFuture;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3

    :cond_8
    move-object v0, v1

    move-object v1, v0

    goto :goto_4

    :cond_9
    move-wide v1, v4

    :cond_a
    :try_start_4
    invoke-virtual {v6}, Ljava/nio/channels/Selector;->keys()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_f

    if-nez v3, :cond_b

    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/l;->h:Lorg/jboss/netty/channel/socket/nio/i;

    iget-object v0, v0, Lorg/jboss/netty/channel/socket/nio/i;->b:Ljava/util/concurrent/Executor;

    instance-of v0, v0, Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/l;->h:Lorg/jboss/netty/channel/socket/nio/i;

    iget-object v0, v0, Lorg/jboss/netty/channel/socket/nio/i;->b:Ljava/util/concurrent/Executor;

    check-cast v0, Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_b
    iget-object v4, p0, Lorg/jboss/netty/channel/socket/nio/l;->d:Ljava/lang/Object;

    monitor-enter v4
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    :try_start_5
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/l;->e:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {v6}, Ljava/nio/channels/Selector;->keys()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jboss/netty/channel/socket/nio/l;->b:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    invoke-virtual {v6}, Ljava/nio/channels/Selector;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    const/4 v0, 0x0

    :try_start_7
    iput-object v0, p0, Lorg/jboss/netty/channel/socket/nio/l;->a:Ljava/nio/channels/Selector;

    :goto_5
    monitor-exit v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    return-void

    :catch_1
    move-exception v0

    :try_start_8
    sget-object v5, Lorg/jboss/netty/channel/socket/nio/i;->a:Lorg/jboss/netty/logging/InternalLogger;

    invoke-interface {v5}, Lorg/jboss/netty/logging/InternalLogger;->isWarnEnabled()Z

    move-result v5

    if-eqz v5, :cond_c

    sget-object v5, Lorg/jboss/netty/channel/socket/nio/i;->a:Lorg/jboss/netty/logging/InternalLogger;

    const-string v7, "Failed to close a selector."

    invoke-interface {v5, v7, v0}, Lorg/jboss/netty/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :cond_c
    const/4 v0, 0x0

    :try_start_9
    iput-object v0, p0, Lorg/jboss/netty/channel/socket/nio/l;->a:Ljava/nio/channels/Selector;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_5

    :catchall_0
    move-exception v0

    :try_start_a
    monitor-exit v4

    throw v0
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_0

    :catchall_1
    move-exception v0

    const/4 v5, 0x0

    :try_start_b
    iput-object v5, p0, Lorg/jboss/netty/channel/socket/nio/l;->a:Ljava/nio/channels/Selector;

    throw v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    :cond_d
    const/4 v0, 0x0

    :try_start_c
    monitor-exit v4
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_4

    :goto_6
    move v3, v0

    goto/16 :goto_0

    :cond_e
    const/4 v0, 0x1

    move v3, v0

    goto/16 :goto_0

    :cond_f
    const/4 v0, 0x0

    goto :goto_6

    :catch_2
    move-exception v3

    move v3, v2

    move-wide v11, v0

    move-wide v1, v11

    goto/16 :goto_0

    :catch_3
    move-exception v0

    move v2, v3

    move-object v3, v0

    move-wide v0, v4

    goto/16 :goto_2

    :catch_4
    move-exception v3

    move-wide v11, v1

    move v2, v0

    move-wide v0, v11

    goto/16 :goto_2
.end method
