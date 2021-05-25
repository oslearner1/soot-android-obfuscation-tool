.class final Lorg/jboss/netty/channel/socket/oio/h;
.super Lorg/jboss/netty/channel/socket/oio/AbstractOioChannelSink;


# instance fields
.field private final a:Ljava/util/concurrent/Executor;


# direct methods
.method constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 0

    invoke-direct {p0}, Lorg/jboss/netty/channel/socket/oio/AbstractOioChannelSink;-><init>()V

    iput-object p1, p0, Lorg/jboss/netty/channel/socket/oio/h;->a:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public final eventSunk(Lorg/jboss/netty/channel/ChannelPipeline;Lorg/jboss/netty/channel/ChannelEvent;)V
    .locals 8

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-interface {p2}, Lorg/jboss/netty/channel/ChannelEvent;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/channel/socket/oio/g;

    invoke-interface {p2}, Lorg/jboss/netty/channel/ChannelEvent;->getFuture()Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v4

    instance-of v1, p2, Lorg/jboss/netty/channel/ChannelStateEvent;

    if-eqz v1, :cond_7

    check-cast p2, Lorg/jboss/netty/channel/ChannelStateEvent;

    invoke-interface {p2}, Lorg/jboss/netty/channel/ChannelStateEvent;->getState()Lorg/jboss/netty/channel/ChannelState;

    move-result-object v5

    invoke-interface {p2}, Lorg/jboss/netty/channel/ChannelStateEvent;->getValue()Ljava/lang/Object;

    move-result-object v1

    sget-object v6, Lorg/jboss/netty/channel/socket/oio/i;->a:[I

    invoke-virtual {v5}, Lorg/jboss/netty/channel/ChannelState;->ordinal()I

    move-result v5

    aget v5, v6, v5

    packed-switch v5, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v2, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0, v4}, Lorg/jboss/netty/channel/socket/oio/b;->a(Lorg/jboss/netty/channel/socket/oio/a;Lorg/jboss/netty/channel/ChannelFuture;)V

    goto :goto_0

    :pswitch_1
    if-eqz v1, :cond_2

    check-cast v1, Ljava/net/SocketAddress;

    :try_start_0
    iget-object v5, v0, Lorg/jboss/netty/channel/socket/oio/g;->e:Ljava/net/MulticastSocket;

    invoke-virtual {v5, v1}, Ljava/net/MulticastSocket;->bind(Ljava/net/SocketAddress;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-interface {v4}, Lorg/jboss/netty/channel/ChannelFuture;->setSuccess()Z

    invoke-virtual {v0}, Lorg/jboss/netty/channel/socket/oio/g;->getLocalAddress()Ljava/net/InetSocketAddress;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/jboss/netty/channel/Channels;->fireChannelBound(Lorg/jboss/netty/channel/Channel;Ljava/net/SocketAddress;)V

    iget-object v1, p0, Lorg/jboss/netty/channel/socket/oio/h;->a:Ljava/util/concurrent/Executor;

    new-instance v3, Lorg/jboss/netty/util/ThreadRenamingRunnable;

    new-instance v5, Lorg/jboss/netty/channel/socket/oio/j;

    invoke-direct {v5, v0}, Lorg/jboss/netty/channel/socket/oio/j;-><init>(Lorg/jboss/netty/channel/socket/oio/g;)V

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Old I/O datagram worker ("

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x29

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v5, v6}, Lorg/jboss/netty/util/ThreadRenamingRunnable;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-static {v1, v3}, Lorg/jboss/netty/util/internal/DeadLockProofWorker;->start(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    goto :goto_0

    :catch_0
    move-exception v1

    :goto_1
    :try_start_2
    invoke-interface {v4, v1}, Lorg/jboss/netty/channel/ChannelFuture;->setFailure(Ljava/lang/Throwable;)Z

    invoke-static {v0, v1}, Lorg/jboss/netty/channel/Channels;->fireExceptionCaught(Lorg/jboss/netty/channel/Channel;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    if-eqz v2, :cond_0

    invoke-static {v0, v4}, Lorg/jboss/netty/channel/socket/oio/b;->a(Lorg/jboss/netty/channel/socket/oio/a;Lorg/jboss/netty/channel/ChannelFuture;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    move v2, v3

    :goto_2
    if-eqz v2, :cond_1

    invoke-static {v0, v4}, Lorg/jboss/netty/channel/socket/oio/b;->a(Lorg/jboss/netty/channel/socket/oio/a;Lorg/jboss/netty/channel/ChannelFuture;)V

    :cond_1
    throw v1

    :cond_2
    invoke-static {v0, v4}, Lorg/jboss/netty/channel/socket/oio/b;->a(Lorg/jboss/netty/channel/socket/oio/a;Lorg/jboss/netty/channel/ChannelFuture;)V

    goto :goto_0

    :pswitch_2
    if-eqz v1, :cond_6

    check-cast v1, Ljava/net/SocketAddress;

    invoke-virtual {v0}, Lorg/jboss/netty/channel/socket/oio/g;->isBound()Z

    move-result v5

    sget-object v6, Lorg/jboss/netty/channel/ChannelFutureListener;->CLOSE_ON_FAILURE:Lorg/jboss/netty/channel/ChannelFutureListener;

    invoke-interface {v4, v6}, Lorg/jboss/netty/channel/ChannelFuture;->addListener(Lorg/jboss/netty/channel/ChannelFutureListener;)V

    const/4 v6, 0x0

    iput-object v6, v0, Lorg/jboss/netty/channel/socket/oio/g;->a:Ljava/net/InetSocketAddress;

    :try_start_3
    iget-object v6, v0, Lorg/jboss/netty/channel/socket/oio/g;->e:Ljava/net/MulticastSocket;

    invoke-virtual {v6, v1}, Ljava/net/MulticastSocket;->connect(Ljava/net/SocketAddress;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-interface {v4}, Lorg/jboss/netty/channel/ChannelFuture;->setSuccess()Z

    if-nez v5, :cond_3

    invoke-virtual {v0}, Lorg/jboss/netty/channel/socket/oio/g;->getLocalAddress()Ljava/net/InetSocketAddress;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/jboss/netty/channel/Channels;->fireChannelBound(Lorg/jboss/netty/channel/Channel;Ljava/net/SocketAddress;)V

    :cond_3
    invoke-virtual {v0}, Lorg/jboss/netty/channel/socket/oio/g;->getRemoteAddress()Ljava/net/InetSocketAddress;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/jboss/netty/channel/Channels;->fireChannelConnected(Lorg/jboss/netty/channel/Channel;Ljava/net/SocketAddress;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Old I/O datagram worker ("

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v3, 0x29

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    if-nez v5, :cond_4

    iget-object v3, p0, Lorg/jboss/netty/channel/socket/oio/h;->a:Ljava/util/concurrent/Executor;

    new-instance v5, Lorg/jboss/netty/util/ThreadRenamingRunnable;

    new-instance v6, Lorg/jboss/netty/channel/socket/oio/j;

    invoke-direct {v6, v0}, Lorg/jboss/netty/channel/socket/oio/j;-><init>(Lorg/jboss/netty/channel/socket/oio/g;)V

    invoke-direct {v5, v6, v1}, Lorg/jboss/netty/util/ThreadRenamingRunnable;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-static {v3, v5}, Lorg/jboss/netty/util/internal/DeadLockProofWorker;->start(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto/16 :goto_0

    :catch_1
    move-exception v1

    :goto_3
    :try_start_5
    invoke-interface {v4, v1}, Lorg/jboss/netty/channel/ChannelFuture;->setFailure(Ljava/lang/Throwable;)Z

    invoke-static {v0, v1}, Lorg/jboss/netty/channel/Channels;->fireExceptionCaught(Lorg/jboss/netty/channel/Channel;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-eqz v2, :cond_0

    invoke-static {v0, v4}, Lorg/jboss/netty/channel/socket/oio/b;->a(Lorg/jboss/netty/channel/socket/oio/a;Lorg/jboss/netty/channel/ChannelFuture;)V

    goto/16 :goto_0

    :cond_4
    :try_start_6
    iget-object v3, v0, Lorg/jboss/netty/channel/socket/oio/g;->b:Ljava/lang/Thread;
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    if-eqz v3, :cond_0

    :try_start_7
    invoke-virtual {v3, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/SecurityException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto/16 :goto_0

    :catch_2
    move-exception v0

    goto/16 :goto_0

    :catchall_1
    move-exception v1

    move v2, v3

    :goto_4
    if-eqz v2, :cond_5

    invoke-static {v0, v4}, Lorg/jboss/netty/channel/socket/oio/b;->a(Lorg/jboss/netty/channel/socket/oio/a;Lorg/jboss/netty/channel/ChannelFuture;)V

    :cond_5
    throw v1

    :cond_6
    invoke-static {v0, v4}, Lorg/jboss/netty/channel/socket/oio/j;->a(Lorg/jboss/netty/channel/socket/oio/g;Lorg/jboss/netty/channel/ChannelFuture;)V

    goto/16 :goto_0

    :pswitch_3
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v4, v1}, Lorg/jboss/netty/channel/socket/oio/b;->a(Lorg/jboss/netty/channel/socket/oio/a;Lorg/jboss/netty/channel/ChannelFuture;I)V

    goto/16 :goto_0

    :cond_7
    instance-of v1, p2, Lorg/jboss/netty/channel/MessageEvent;

    if-eqz v1, :cond_0

    check-cast p2, Lorg/jboss/netty/channel/MessageEvent;

    invoke-interface {p2}, Lorg/jboss/netty/channel/MessageEvent;->getMessage()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p2}, Lorg/jboss/netty/channel/MessageEvent;->getRemoteAddress()Ljava/net/SocketAddress;

    move-result-object v2

    invoke-static {v0, v4, v1, v2}, Lorg/jboss/netty/channel/socket/oio/j;->a(Lorg/jboss/netty/channel/socket/oio/g;Lorg/jboss/netty/channel/ChannelFuture;Ljava/lang/Object;Ljava/net/SocketAddress;)V

    goto/16 :goto_0

    :catchall_2
    move-exception v1

    goto :goto_4

    :catch_3
    move-exception v1

    move v2, v3

    goto :goto_3

    :catchall_3
    move-exception v1

    goto/16 :goto_2

    :catch_4
    move-exception v1

    move v2, v3

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
