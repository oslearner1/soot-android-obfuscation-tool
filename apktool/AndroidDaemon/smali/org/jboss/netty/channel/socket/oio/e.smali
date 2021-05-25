.class final Lorg/jboss/netty/channel/socket/oio/e;
.super Lorg/jboss/netty/channel/socket/oio/AbstractOioChannelSink;


# instance fields
.field private final a:Ljava/util/concurrent/Executor;


# direct methods
.method constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 0

    invoke-direct {p0}, Lorg/jboss/netty/channel/socket/oio/AbstractOioChannelSink;-><init>()V

    iput-object p1, p0, Lorg/jboss/netty/channel/socket/oio/e;->a:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public final eventSunk(Lorg/jboss/netty/channel/ChannelPipeline;Lorg/jboss/netty/channel/ChannelEvent;)V
    .locals 8

    const/4 v2, 0x1

    invoke-interface {p2}, Lorg/jboss/netty/channel/ChannelEvent;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/channel/socket/oio/d;

    invoke-interface {p2}, Lorg/jboss/netty/channel/ChannelEvent;->getFuture()Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v4

    instance-of v1, p2, Lorg/jboss/netty/channel/ChannelStateEvent;

    if-eqz v1, :cond_5

    check-cast p2, Lorg/jboss/netty/channel/ChannelStateEvent;

    invoke-interface {p2}, Lorg/jboss/netty/channel/ChannelStateEvent;->getState()Lorg/jboss/netty/channel/ChannelState;

    move-result-object v3

    invoke-interface {p2}, Lorg/jboss/netty/channel/ChannelStateEvent;->getValue()Ljava/lang/Object;

    move-result-object v1

    sget-object v5, Lorg/jboss/netty/channel/socket/oio/f;->a:[I

    invoke-virtual {v3}, Lorg/jboss/netty/channel/ChannelState;->ordinal()I

    move-result v3

    aget v3, v5, v3

    packed-switch v3, :pswitch_data_0

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
    if-eqz v1, :cond_1

    check-cast v1, Ljava/net/SocketAddress;

    :try_start_0
    iget-object v2, v0, Lorg/jboss/netty/channel/socket/oio/d;->g:Ljava/net/Socket;

    invoke-virtual {v2, v1}, Ljava/net/Socket;->bind(Ljava/net/SocketAddress;)V

    invoke-interface {v4}, Lorg/jboss/netty/channel/ChannelFuture;->setSuccess()Z

    invoke-virtual {v0}, Lorg/jboss/netty/channel/socket/oio/d;->getLocalAddress()Ljava/net/InetSocketAddress;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/jboss/netty/channel/Channels;->fireChannelBound(Lorg/jboss/netty/channel/Channel;Ljava/net/SocketAddress;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-interface {v4, v1}, Lorg/jboss/netty/channel/ChannelFuture;->setFailure(Ljava/lang/Throwable;)Z

    invoke-static {v0, v1}, Lorg/jboss/netty/channel/Channels;->fireExceptionCaught(Lorg/jboss/netty/channel/Channel;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    invoke-static {v0, v4}, Lorg/jboss/netty/channel/socket/oio/b;->a(Lorg/jboss/netty/channel/socket/oio/a;Lorg/jboss/netty/channel/ChannelFuture;)V

    goto :goto_0

    :pswitch_2
    if-eqz v1, :cond_4

    check-cast v1, Ljava/net/SocketAddress;

    invoke-virtual {v0}, Lorg/jboss/netty/channel/socket/oio/d;->isBound()Z

    move-result v5

    const/4 v3, 0x0

    sget-object v6, Lorg/jboss/netty/channel/ChannelFutureListener;->CLOSE_ON_FAILURE:Lorg/jboss/netty/channel/ChannelFutureListener;

    invoke-interface {v4, v6}, Lorg/jboss/netty/channel/ChannelFuture;->addListener(Lorg/jboss/netty/channel/ChannelFutureListener;)V

    :try_start_1
    iget-object v6, v0, Lorg/jboss/netty/channel/socket/oio/d;->g:Ljava/net/Socket;

    invoke-virtual {v0}, Lorg/jboss/netty/channel/socket/oio/d;->getConfig()Lorg/jboss/netty/channel/socket/SocketChannelConfig;

    move-result-object v7

    invoke-interface {v7}, Lorg/jboss/netty/channel/socket/SocketChannelConfig;->getConnectTimeoutMillis()I

    move-result v7

    invoke-virtual {v6, v1, v7}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    new-instance v1, Ljava/io/PushbackInputStream;

    iget-object v3, v0, Lorg/jboss/netty/channel/socket/oio/d;->g:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    const/4 v6, 0x1

    invoke-direct {v1, v3, v6}, Ljava/io/PushbackInputStream;-><init>(Ljava/io/InputStream;I)V

    iput-object v1, v0, Lorg/jboss/netty/channel/socket/oio/d;->e:Ljava/io/PushbackInputStream;

    iget-object v1, v0, Lorg/jboss/netty/channel/socket/oio/d;->g:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    iput-object v1, v0, Lorg/jboss/netty/channel/socket/oio/d;->f:Ljava/io/OutputStream;

    invoke-interface {v4}, Lorg/jboss/netty/channel/ChannelFuture;->setSuccess()Z

    if-nez v5, :cond_2

    invoke-virtual {v0}, Lorg/jboss/netty/channel/socket/oio/d;->getLocalAddress()Ljava/net/InetSocketAddress;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/jboss/netty/channel/Channels;->fireChannelBound(Lorg/jboss/netty/channel/Channel;Ljava/net/SocketAddress;)V

    :cond_2
    invoke-virtual {v0}, Lorg/jboss/netty/channel/socket/oio/d;->getRemoteAddress()Ljava/net/InetSocketAddress;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/jboss/netty/channel/Channels;->fireChannelConnected(Lorg/jboss/netty/channel/Channel;Ljava/net/SocketAddress;)V

    iget-object v1, p0, Lorg/jboss/netty/channel/socket/oio/e;->a:Ljava/util/concurrent/Executor;

    new-instance v3, Lorg/jboss/netty/util/ThreadRenamingRunnable;

    new-instance v5, Lorg/jboss/netty/channel/socket/oio/p;

    invoke-direct {v5, v0}, Lorg/jboss/netty/channel/socket/oio/p;-><init>(Lorg/jboss/netty/channel/socket/oio/o;)V

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Old I/O client worker ("

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
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto/16 :goto_0

    :catch_1
    move-exception v1

    :goto_1
    :try_start_3
    invoke-interface {v4, v1}, Lorg/jboss/netty/channel/ChannelFuture;->setFailure(Ljava/lang/Throwable;)Z

    invoke-static {v0, v1}, Lorg/jboss/netty/channel/Channels;->fireExceptionCaught(Lorg/jboss/netty/channel/Channel;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v2, :cond_0

    invoke-static {v0, v4}, Lorg/jboss/netty/channel/socket/oio/b;->a(Lorg/jboss/netty/channel/socket/oio/a;Lorg/jboss/netty/channel/ChannelFuture;)V

    goto/16 :goto_0

    :catchall_0
    move-exception v1

    move v2, v3

    :goto_2
    if-eqz v2, :cond_3

    invoke-static {v0, v4}, Lorg/jboss/netty/channel/socket/oio/b;->a(Lorg/jboss/netty/channel/socket/oio/a;Lorg/jboss/netty/channel/ChannelFuture;)V

    :cond_3
    throw v1

    :cond_4
    invoke-static {v0, v4}, Lorg/jboss/netty/channel/socket/oio/b;->a(Lorg/jboss/netty/channel/socket/oio/a;Lorg/jboss/netty/channel/ChannelFuture;)V

    goto/16 :goto_0

    :pswitch_3
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v4, v1}, Lorg/jboss/netty/channel/socket/oio/b;->a(Lorg/jboss/netty/channel/socket/oio/a;Lorg/jboss/netty/channel/ChannelFuture;I)V

    goto/16 :goto_0

    :cond_5
    instance-of v1, p2, Lorg/jboss/netty/channel/MessageEvent;

    if-eqz v1, :cond_0

    check-cast p2, Lorg/jboss/netty/channel/MessageEvent;

    invoke-interface {p2}, Lorg/jboss/netty/channel/MessageEvent;->getMessage()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v4, v1}, Lorg/jboss/netty/channel/socket/oio/p;->a(Lorg/jboss/netty/channel/socket/oio/o;Lorg/jboss/netty/channel/ChannelFuture;Ljava/lang/Object;)V

    goto/16 :goto_0

    :catchall_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    move v2, v3

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
