.class abstract Lorg/jboss/netty/channel/socket/oio/b;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/jboss/netty/channel/socket/Worker;


# instance fields
.field protected final a:Lorg/jboss/netty/channel/socket/oio/a;

.field private final b:Ljava/util/Queue;

.field private volatile c:Ljava/lang/Thread;

.field private volatile d:Z


# direct methods
.method public constructor <init>(Lorg/jboss/netty/channel/socket/oio/a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lorg/jboss/netty/channel/socket/oio/b;->b:Ljava/util/Queue;

    iput-object p1, p0, Lorg/jboss/netty/channel/socket/oio/b;->a:Lorg/jboss/netty/channel/socket/oio/a;

    iput-object p0, p1, Lorg/jboss/netty/channel/socket/oio/a;->c:Lorg/jboss/netty/channel/socket/Worker;

    return-void
.end method

.method static a(Lorg/jboss/netty/channel/socket/oio/a;Lorg/jboss/netty/channel/ChannelFuture;)V
    .locals 1

    invoke-static {p0}, Lorg/jboss/netty/channel/socket/oio/b;->a(Lorg/jboss/netty/channel/socket/oio/a;)Z

    move-result v0

    invoke-static {p0, p1, v0}, Lorg/jboss/netty/channel/socket/oio/b;->a(Lorg/jboss/netty/channel/socket/oio/a;Lorg/jboss/netty/channel/ChannelFuture;Z)V

    return-void
.end method

.method static a(Lorg/jboss/netty/channel/socket/oio/a;Lorg/jboss/netty/channel/ChannelFuture;I)V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p0}, Lorg/jboss/netty/channel/socket/oio/b;->a(Lorg/jboss/netty/channel/socket/oio/a;)Z

    move-result v2

    and-int/lit8 v3, p2, -0x5

    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/oio/a;->getInterestOps()I

    move-result v4

    and-int/lit8 v4, v4, 0x4

    or-int/2addr v3, v4

    :try_start_0
    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/oio/a;->getInterestOps()I

    move-result v4

    if-eq v4, v3, :cond_5

    and-int/lit8 v1, v3, 0x1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lorg/jboss/netty/channel/socket/oio/a;->setInterestOpsNow(I)V

    :goto_0
    invoke-interface {p1}, Lorg/jboss/netty/channel/ChannelFuture;->setSuccess()Z

    if-eqz v0, :cond_1

    iget-object v1, p0, Lorg/jboss/netty/channel/socket/oio/a;->d:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {p0, v3}, Lorg/jboss/netty/channel/socket/oio/a;->setInterestOpsNow(I)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v3, p0, Lorg/jboss/netty/channel/socket/oio/a;->b:Ljava/lang/Thread;

    if-eqz v3, :cond_0

    if-eq v0, v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    :cond_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_3

    :try_start_2
    invoke-static {p0}, Lorg/jboss/netty/channel/Channels;->fireChannelInterestChanged(Lorg/jboss/netty/channel/Channel;)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lorg/jboss/netty/channel/socket/oio/a;->setInterestOpsNow(I)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-interface {p1, v0}, Lorg/jboss/netty/channel/ChannelFuture;->setFailure(Ljava/lang/Throwable;)Z

    if-eqz v2, :cond_4

    invoke-static {p0, v0}, Lorg/jboss/netty/channel/Channels;->fireExceptionCaught(Lorg/jboss/netty/channel/Channel;Ljava/lang/Throwable;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1

    throw v0

    :cond_3
    invoke-static {p0}, Lorg/jboss/netty/channel/Channels;->fireChannelInterestChangedLater(Lorg/jboss/netty/channel/Channel;)Lorg/jboss/netty/channel/ChannelFuture;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    :cond_4
    invoke-static {p0, v0}, Lorg/jboss/netty/channel/Channels;->fireExceptionCaughtLater(Lorg/jboss/netty/channel/Channel;Ljava/lang/Throwable;)Lorg/jboss/netty/channel/ChannelFuture;

    goto :goto_1

    :cond_5
    move v0, v1

    goto :goto_0
.end method

.method private static a(Lorg/jboss/netty/channel/socket/oio/a;Lorg/jboss/netty/channel/ChannelFuture;Z)V
    .locals 3

    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/oio/a;->isConnected()Z

    move-result v0

    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/oio/a;->isBound()Z

    move-result v1

    :try_start_0
    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/oio/a;->f()V

    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/oio/a;->setClosed()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {p1}, Lorg/jboss/netty/channel/ChannelFuture;->setSuccess()Z

    if-eqz v0, :cond_1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v2, p0, Lorg/jboss/netty/channel/socket/oio/a;->b:Ljava/lang/Thread;

    if-eqz v2, :cond_0

    if-eq v0, v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    :cond_0
    if-eqz p2, :cond_3

    invoke-static {p0}, Lorg/jboss/netty/channel/Channels;->fireChannelDisconnected(Lorg/jboss/netty/channel/Channel;)V

    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    if-eqz p2, :cond_4

    invoke-static {p0}, Lorg/jboss/netty/channel/Channels;->fireChannelUnbound(Lorg/jboss/netty/channel/Channel;)V

    :cond_2
    :goto_1
    if-eqz p2, :cond_5

    invoke-static {p0}, Lorg/jboss/netty/channel/Channels;->fireChannelClosed(Lorg/jboss/netty/channel/Channel;)V

    :goto_2
    return-void

    :cond_3
    invoke-static {p0}, Lorg/jboss/netty/channel/Channels;->fireChannelDisconnectedLater(Lorg/jboss/netty/channel/Channel;)Lorg/jboss/netty/channel/ChannelFuture;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-interface {p1, v0}, Lorg/jboss/netty/channel/ChannelFuture;->setFailure(Ljava/lang/Throwable;)Z

    if-eqz p2, :cond_7

    invoke-static {p0, v0}, Lorg/jboss/netty/channel/Channels;->fireExceptionCaught(Lorg/jboss/netty/channel/Channel;Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_4
    :try_start_1
    invoke-static {p0}, Lorg/jboss/netty/channel/Channels;->fireChannelUnboundLater(Lorg/jboss/netty/channel/Channel;)Lorg/jboss/netty/channel/ChannelFuture;

    goto :goto_1

    :cond_5
    invoke-static {p0}, Lorg/jboss/netty/channel/Channels;->fireChannelClosedLater(Lorg/jboss/netty/channel/Channel;)Lorg/jboss/netty/channel/ChannelFuture;

    goto :goto_2

    :cond_6
    invoke-interface {p1}, Lorg/jboss/netty/channel/ChannelFuture;->setSuccess()Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :cond_7
    invoke-static {p0, v0}, Lorg/jboss/netty/channel/Channels;->fireExceptionCaughtLater(Lorg/jboss/netty/channel/Channel;Ljava/lang/Throwable;)Lorg/jboss/netty/channel/ChannelFuture;

    goto :goto_2
.end method

.method static a(Lorg/jboss/netty/channel/socket/oio/a;)Z
    .locals 2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lorg/jboss/netty/channel/socket/oio/a;->b:Ljava/lang/Thread;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b()V
    .locals 1

    :goto_0
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/oio/b;->b:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method abstract a()Z
.end method

.method public executeInIoThread(Ljava/lang/Runnable;)V
    .locals 2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lorg/jboss/netty/channel/socket/oio/b;->c:Ljava/lang/Thread;

    if-eq v0, v1, :cond_0

    iget-boolean v0, p0, Lorg/jboss/netty/channel/socket/oio/b;->d:Z

    if-eqz v0, :cond_1

    :cond_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/oio/b;->b:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public run()V
    .locals 5

    const/4 v1, 0x1

    iget-object v0, p0, Lorg/jboss/netty/channel/socket/oio/b;->a:Lorg/jboss/netty/channel/socket/oio/a;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    iput-object v2, v0, Lorg/jboss/netty/channel/socket/oio/a;->b:Ljava/lang/Thread;

    iput-object v2, p0, Lorg/jboss/netty/channel/socket/oio/b;->c:Ljava/lang/Thread;

    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/oio/b;->a:Lorg/jboss/netty/channel/socket/oio/a;

    invoke-virtual {v0}, Lorg/jboss/netty/channel/socket/oio/a;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/jboss/netty/channel/socket/oio/b;->a:Lorg/jboss/netty/channel/socket/oio/a;

    iget-object v2, v0, Lorg/jboss/netty/channel/socket/oio/a;->d:Ljava/lang/Object;

    monitor-enter v2

    :cond_1
    :goto_1
    :try_start_0
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/oio/b;->a:Lorg/jboss/netty/channel/socket/oio/a;

    invoke-virtual {v0}, Lorg/jboss/netty/channel/socket/oio/a;->isReadable()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_2

    :try_start_1
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/oio/b;->a:Lorg/jboss/netty/channel/socket/oio/a;

    iget-object v0, v0, Lorg/jboss/netty/channel/socket/oio/a;->d:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_2
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/oio/b;->a:Lorg/jboss/netty/channel/socket/oio/a;

    invoke-virtual {v0}, Lorg/jboss/netty/channel/socket/oio/a;->isOpen()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v0, 0x0

    :try_start_3
    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/oio/b;->a()Z
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result v0

    invoke-direct {p0}, Lorg/jboss/netty/channel/socket/oio/b;->b()V

    if-nez v0, :cond_0

    :cond_3
    :goto_2
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/oio/b;->a:Lorg/jboss/netty/channel/socket/oio/a;

    const/4 v2, 0x0

    iput-object v2, v0, Lorg/jboss/netty/channel/socket/oio/a;->b:Ljava/lang/Thread;

    iget-object v0, p0, Lorg/jboss/netty/channel/socket/oio/b;->a:Lorg/jboss/netty/channel/socket/oio/a;

    iget-object v2, p0, Lorg/jboss/netty/channel/socket/oio/b;->a:Lorg/jboss/netty/channel/socket/oio/a;

    invoke-static {v2}, Lorg/jboss/netty/channel/Channels;->succeededFuture(Lorg/jboss/netty/channel/Channel;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v2

    invoke-static {v0, v2, v1}, Lorg/jboss/netty/channel/socket/oio/b;->a(Lorg/jboss/netty/channel/socket/oio/a;Lorg/jboss/netty/channel/ChannelFuture;Z)V

    iput-boolean v1, p0, Lorg/jboss/netty/channel/socket/oio/b;->d:Z

    invoke-direct {p0}, Lorg/jboss/netty/channel/socket/oio/b;->b()V

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    :catch_1
    move-exception v2

    :try_start_4
    instance-of v3, v2, Ljava/net/SocketTimeoutException;

    if-nez v3, :cond_4

    iget-object v4, p0, Lorg/jboss/netty/channel/socket/oio/b;->a:Lorg/jboss/netty/channel/socket/oio/a;

    invoke-virtual {v4}, Lorg/jboss/netty/channel/socket/oio/a;->c()Z

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, p0, Lorg/jboss/netty/channel/socket/oio/b;->a:Lorg/jboss/netty/channel/socket/oio/a;

    invoke-static {v4, v2}, Lorg/jboss/netty/channel/Channels;->fireExceptionCaught(Lorg/jboss/netty/channel/Channel;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :cond_4
    if-eqz v3, :cond_5

    move v0, v1

    :cond_5
    invoke-direct {p0}, Lorg/jboss/netty/channel/socket/oio/b;->b()V

    if-eqz v0, :cond_3

    goto :goto_0

    :catchall_1
    move-exception v0

    invoke-direct {p0}, Lorg/jboss/netty/channel/socket/oio/b;->b()V

    goto :goto_2
.end method
