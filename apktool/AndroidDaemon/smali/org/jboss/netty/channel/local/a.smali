.class final Lorg/jboss/netty/channel/local/a;
.super Lorg/jboss/netty/channel/AbstractChannel;

# interfaces
.implements Lorg/jboss/netty/channel/local/LocalChannel;


# instance fields
.field final a:Ljava/util/concurrent/atomic/AtomicInteger;

.field final b:Ljava/util/Queue;

.field volatile c:Lorg/jboss/netty/channel/local/a;

.field volatile d:Lorg/jboss/netty/channel/local/LocalAddress;

.field volatile e:Lorg/jboss/netty/channel/local/LocalAddress;

.field private final f:Lorg/jboss/netty/channel/ChannelConfig;

.field private final g:Lorg/jboss/netty/util/internal/ThreadLocalBoolean;


# direct methods
.method constructor <init>(Lorg/jboss/netty/channel/local/LocalServerChannel;Lorg/jboss/netty/channel/ChannelFactory;Lorg/jboss/netty/channel/ChannelPipeline;Lorg/jboss/netty/channel/ChannelSink;Lorg/jboss/netty/channel/local/a;)V
    .locals 2

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/jboss/netty/channel/AbstractChannel;-><init>(Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/channel/ChannelFactory;Lorg/jboss/netty/channel/ChannelPipeline;Lorg/jboss/netty/channel/ChannelSink;)V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lorg/jboss/netty/channel/local/a;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Lorg/jboss/netty/util/internal/ThreadLocalBoolean;

    invoke-direct {v0}, Lorg/jboss/netty/util/internal/ThreadLocalBoolean;-><init>()V

    iput-object v0, p0, Lorg/jboss/netty/channel/local/a;->g:Lorg/jboss/netty/util/internal/ThreadLocalBoolean;

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lorg/jboss/netty/channel/local/a;->b:Ljava/util/Queue;

    iput-object p5, p0, Lorg/jboss/netty/channel/local/a;->c:Lorg/jboss/netty/channel/local/a;

    new-instance v0, Lorg/jboss/netty/channel/DefaultChannelConfig;

    invoke-direct {v0}, Lorg/jboss/netty/channel/DefaultChannelConfig;-><init>()V

    iput-object v0, p0, Lorg/jboss/netty/channel/local/a;->f:Lorg/jboss/netty/channel/ChannelConfig;

    invoke-virtual {p0}, Lorg/jboss/netty/channel/local/a;->getCloseFuture()Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v0

    new-instance v1, Lorg/jboss/netty/channel/local/b;

    invoke-direct {v1, p0}, Lorg/jboss/netty/channel/local/b;-><init>(Lorg/jboss/netty/channel/local/a;)V

    invoke-interface {v0, v1}, Lorg/jboss/netty/channel/ChannelFuture;->addListener(Lorg/jboss/netty/channel/ChannelFutureListener;)V

    invoke-static {p0}, Lorg/jboss/netty/channel/Channels;->fireChannelOpen(Lorg/jboss/netty/channel/Channel;)V

    return-void
.end method


# virtual methods
.method final a()V
    .locals 3

    iget-object v0, p0, Lorg/jboss/netty/channel/local/a;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/jboss/netty/channel/local/a;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lorg/jboss/netty/channel/ChannelException;

    const-string v1, "already bound"

    invoke-direct {v0, v1}, Lorg/jboss/netty/channel/ChannelException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    new-instance v0, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v0}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    throw v0

    :cond_0
    return-void

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method

.method final a(Lorg/jboss/netty/channel/ChannelFuture;)V
    .locals 3

    iget-object v1, p0, Lorg/jboss/netty/channel/local/a;->d:Lorg/jboss/netty/channel/local/LocalAddress;

    :try_start_0
    invoke-virtual {p0}, Lorg/jboss/netty/channel/local/a;->setClosed()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p1}, Lorg/jboss/netty/channel/ChannelFuture;->setSuccess()Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lorg/jboss/netty/channel/local/a;->getParent()Lorg/jboss/netty/channel/Channel;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    invoke-static {v1}, Lorg/jboss/netty/channel/local/d;->b(Lorg/jboss/netty/channel/local/LocalAddress;)Z

    :cond_0
    return-void

    :cond_1
    :try_start_1
    iget-object v0, p0, Lorg/jboss/netty/channel/local/a;->c:Lorg/jboss/netty/channel/local/a;

    if-eqz v0, :cond_2

    const/4 v2, 0x0

    iput-object v2, p0, Lorg/jboss/netty/channel/local/a;->c:Lorg/jboss/netty/channel/local/a;

    invoke-static {p0}, Lorg/jboss/netty/channel/Channels;->fireChannelDisconnected(Lorg/jboss/netty/channel/Channel;)V

    invoke-static {p0}, Lorg/jboss/netty/channel/Channels;->fireChannelUnbound(Lorg/jboss/netty/channel/Channel;)V

    :cond_2
    invoke-static {p0}, Lorg/jboss/netty/channel/Channels;->fireChannelClosed(Lorg/jboss/netty/channel/Channel;)V

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lorg/jboss/netty/channel/local/a;->setClosed()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    if-nez v2, :cond_4

    :cond_3
    invoke-interface {p1}, Lorg/jboss/netty/channel/ChannelFuture;->setSuccess()Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lorg/jboss/netty/channel/local/a;->getParent()Lorg/jboss/netty/channel/Channel;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_4
    :try_start_2
    iget-object v2, v0, Lorg/jboss/netty/channel/local/a;->c:Lorg/jboss/netty/channel/local/a;

    if-eqz v2, :cond_5

    const/4 v2, 0x0

    iput-object v2, v0, Lorg/jboss/netty/channel/local/a;->c:Lorg/jboss/netty/channel/local/a;

    invoke-static {v0}, Lorg/jboss/netty/channel/Channels;->fireChannelDisconnected(Lorg/jboss/netty/channel/Channel;)V

    invoke-static {v0}, Lorg/jboss/netty/channel/Channels;->fireChannelUnbound(Lorg/jboss/netty/channel/Channel;)V

    :cond_5
    invoke-static {v0}, Lorg/jboss/netty/channel/Channels;->fireChannelClosed(Lorg/jboss/netty/channel/Channel;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-interface {p1}, Lorg/jboss/netty/channel/ChannelFuture;->setSuccess()Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lorg/jboss/netty/channel/local/a;->getParent()Lorg/jboss/netty/channel/Channel;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {p1}, Lorg/jboss/netty/channel/ChannelFuture;->setSuccess()Z

    if-eqz v1, :cond_6

    invoke-virtual {p0}, Lorg/jboss/netty/channel/local/a;->getParent()Lorg/jboss/netty/channel/Channel;

    move-result-object v2

    if-nez v2, :cond_6

    invoke-static {v1}, Lorg/jboss/netty/channel/local/d;->b(Lorg/jboss/netty/channel/local/LocalAddress;)Z

    :cond_6
    throw v0
.end method

.method final b()V
    .locals 2

    iget-object v0, p0, Lorg/jboss/netty/channel/local/a;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lorg/jboss/netty/channel/local/a;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    :cond_0
    return-void
.end method

.method final c()V
    .locals 5

    const/4 v4, 0x0

    iget-object v1, p0, Lorg/jboss/netty/channel/local/a;->c:Lorg/jboss/netty/channel/local/a;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/jboss/netty/channel/local/a;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/jboss/netty/channel/local/a;->g:Lorg/jboss/netty/util/internal/ThreadLocalBoolean;

    invoke-virtual {v0}, Lorg/jboss/netty/util/internal/ThreadLocalBoolean;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/jboss/netty/channel/local/a;->g:Lorg/jboss/netty/util/internal/ThreadLocalBoolean;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/jboss/netty/util/internal/ThreadLocalBoolean;->set(Ljava/lang/Object;)V

    :goto_0
    :try_start_0
    iget-object v0, p0, Lorg/jboss/netty/channel/local/a;->b:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/channel/MessageEvent;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lorg/jboss/netty/channel/MessageEvent;->getFuture()Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v2

    invoke-interface {v2}, Lorg/jboss/netty/channel/ChannelFuture;->setSuccess()Z

    invoke-interface {v0}, Lorg/jboss/netty/channel/MessageEvent;->getMessage()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v0}, Lorg/jboss/netty/channel/Channels;->fireMessageReceived(Lorg/jboss/netty/channel/Channel;Ljava/lang/Object;)V

    const-wide/16 v2, 0x1

    invoke-static {p0, v2, v3}, Lorg/jboss/netty/channel/Channels;->fireWriteComplete(Lorg/jboss/netty/channel/Channel;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/jboss/netty/channel/local/a;->g:Lorg/jboss/netty/util/internal/ThreadLocalBoolean;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/jboss/netty/util/internal/ThreadLocalBoolean;->set(Ljava/lang/Object;)V

    throw v0

    :cond_0
    invoke-virtual {p0}, Lorg/jboss/netty/channel/local/a;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/nio/channels/NotYetConnectedException;

    invoke-direct {v0}, Ljava/nio/channels/NotYetConnectedException;-><init>()V

    move-object v1, v0

    :goto_1
    iget-object v0, p0, Lorg/jboss/netty/channel/local/a;->b:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/channel/MessageEvent;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lorg/jboss/netty/channel/MessageEvent;->getFuture()Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v0

    invoke-interface {v0, v1}, Lorg/jboss/netty/channel/ChannelFuture;->setFailure(Ljava/lang/Throwable;)Z

    invoke-static {p0, v1}, Lorg/jboss/netty/channel/Channels;->fireExceptionCaught(Lorg/jboss/netty/channel/Channel;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v0}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    move-object v1, v0

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lorg/jboss/netty/channel/local/a;->g:Lorg/jboss/netty/util/internal/ThreadLocalBoolean;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jboss/netty/util/internal/ThreadLocalBoolean;->set(Ljava/lang/Object;)V

    :cond_3
    return-void
.end method

.method public final getConfig()Lorg/jboss/netty/channel/ChannelConfig;
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/channel/local/a;->f:Lorg/jboss/netty/channel/ChannelConfig;

    return-object v0
.end method

.method public final bridge synthetic getLocalAddress()Ljava/net/SocketAddress;
    .locals 1

    invoke-virtual {p0}, Lorg/jboss/netty/channel/local/a;->getLocalAddress()Lorg/jboss/netty/channel/local/LocalAddress;

    move-result-object v0

    return-object v0
.end method

.method public final getLocalAddress()Lorg/jboss/netty/channel/local/LocalAddress;
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/channel/local/a;->d:Lorg/jboss/netty/channel/local/LocalAddress;

    return-object v0
.end method

.method public final bridge synthetic getRemoteAddress()Ljava/net/SocketAddress;
    .locals 1

    invoke-virtual {p0}, Lorg/jboss/netty/channel/local/a;->getRemoteAddress()Lorg/jboss/netty/channel/local/LocalAddress;

    move-result-object v0

    return-object v0
.end method

.method public final getRemoteAddress()Lorg/jboss/netty/channel/local/LocalAddress;
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/channel/local/a;->e:Lorg/jboss/netty/channel/local/LocalAddress;

    return-object v0
.end method

.method public final isBound()Z
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/channel/local/a;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isConnected()Z
    .locals 2

    iget-object v0, p0, Lorg/jboss/netty/channel/local/a;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isOpen()Z
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/channel/local/a;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final setClosed()Z
    .locals 1

    invoke-super {p0}, Lorg/jboss/netty/channel/AbstractChannel;->setClosed()Z

    move-result v0

    return v0
.end method
