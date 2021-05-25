.class Lorg/jboss/netty/channel/socket/nio/o;
.super Lorg/jboss/netty/channel/socket/nio/AbstractNioChannelSink;


# static fields
.field private static synthetic b:Z


# instance fields
.field private final a:Lorg/jboss/netty/channel/socket/nio/WorkerPool;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/jboss/netty/channel/socket/nio/o;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/jboss/netty/channel/socket/nio/o;->b:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lorg/jboss/netty/channel/socket/nio/WorkerPool;)V
    .locals 0

    invoke-direct {p0}, Lorg/jboss/netty/channel/socket/nio/AbstractNioChannelSink;-><init>()V

    iput-object p1, p0, Lorg/jboss/netty/channel/socket/nio/o;->a:Lorg/jboss/netty/channel/socket/nio/WorkerPool;

    return-void
.end method

.method private static a(Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;Lorg/jboss/netty/channel/ChannelFuture;)V
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;->getDatagramChannel()Ljava/nio/channels/DatagramChannel;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/channels/DatagramChannel;->socket()Ljava/net/DatagramSocket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->close()V

    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;->setClosed()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lorg/jboss/netty/channel/ChannelFuture;->setSuccess()Z

    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;->isBound()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lorg/jboss/netty/channel/Channels;->fireChannelUnbound(Lorg/jboss/netty/channel/Channel;)V

    :cond_0
    invoke-static {p0}, Lorg/jboss/netty/channel/Channels;->fireChannelClosed(Lorg/jboss/netty/channel/Channel;)V

    :goto_0
    return-void

    :cond_1
    invoke-interface {p1}, Lorg/jboss/netty/channel/ChannelFuture;->setSuccess()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-interface {p1, v0}, Lorg/jboss/netty/channel/ChannelFuture;->setFailure(Ljava/lang/Throwable;)Z

    invoke-static {p0, v0}, Lorg/jboss/netty/channel/Channels;->fireExceptionCaught(Lorg/jboss/netty/channel/Channel;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method final a()Lorg/jboss/netty/channel/socket/nio/NioDatagramWorker;
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/o;->a:Lorg/jboss/netty/channel/socket/nio/WorkerPool;

    invoke-interface {v0}, Lorg/jboss/netty/channel/socket/nio/WorkerPool;->nextWorker()Lorg/jboss/netty/channel/socket/Worker;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/channel/socket/nio/NioDatagramWorker;

    return-object v0
.end method

.method public eventSunk(Lorg/jboss/netty/channel/ChannelPipeline;Lorg/jboss/netty/channel/ChannelEvent;)V
    .locals 8

    const/4 v7, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-interface {p2}, Lorg/jboss/netty/channel/ChannelEvent;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;

    invoke-interface {p2}, Lorg/jboss/netty/channel/ChannelEvent;->getFuture()Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v4

    instance-of v1, p2, Lorg/jboss/netty/channel/ChannelStateEvent;

    if-eqz v1, :cond_6

    check-cast p2, Lorg/jboss/netty/channel/ChannelStateEvent;

    invoke-interface {p2}, Lorg/jboss/netty/channel/ChannelStateEvent;->getState()Lorg/jboss/netty/channel/ChannelState;

    move-result-object v5

    invoke-interface {p2}, Lorg/jboss/netty/channel/ChannelStateEvent;->getValue()Ljava/lang/Object;

    move-result-object v1

    sget-object v6, Lorg/jboss/netty/channel/socket/nio/p;->a:[I

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

    iget-object v1, v0, Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;->worker:Lorg/jboss/netty/channel/socket/nio/d;

    invoke-virtual {v1, v0, v4}, Lorg/jboss/netty/channel/socket/nio/d;->close(Lorg/jboss/netty/channel/socket/nio/a;Lorg/jboss/netty/channel/ChannelFuture;)V

    goto :goto_0

    :pswitch_1
    if-eqz v1, :cond_2

    check-cast v1, Ljava/net/InetSocketAddress;

    :try_start_0
    invoke-virtual {v0}, Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;->getDatagramChannel()Ljava/nio/channels/DatagramChannel;

    move-result-object v5

    invoke-virtual {v5}, Ljava/nio/channels/DatagramChannel;->socket()Ljava/net/DatagramSocket;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/net/DatagramSocket;->bind(Ljava/net/SocketAddress;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-interface {v4}, Lorg/jboss/netty/channel/ChannelFuture;->setSuccess()Z

    invoke-static {v0, v1}, Lorg/jboss/netty/channel/Channels;->fireChannelBound(Lorg/jboss/netty/channel/Channel;Ljava/net/SocketAddress;)V

    iget-object v1, v0, Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;->worker:Lorg/jboss/netty/channel/socket/nio/d;

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3}, Lorg/jboss/netty/channel/socket/nio/d;->register(Lorg/jboss/netty/channel/socket/nio/a;Lorg/jboss/netty/channel/ChannelFuture;)V
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

    invoke-static {v0, v4}, Lorg/jboss/netty/channel/socket/nio/o;->a(Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;Lorg/jboss/netty/channel/ChannelFuture;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    move v2, v3

    :goto_2
    if-eqz v2, :cond_1

    invoke-static {v0, v4}, Lorg/jboss/netty/channel/socket/nio/o;->a(Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;Lorg/jboss/netty/channel/ChannelFuture;)V

    :cond_1
    throw v1

    :cond_2
    iget-object v1, v0, Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;->worker:Lorg/jboss/netty/channel/socket/nio/d;

    invoke-virtual {v1, v0, v4}, Lorg/jboss/netty/channel/socket/nio/d;->close(Lorg/jboss/netty/channel/socket/nio/a;Lorg/jboss/netty/channel/ChannelFuture;)V

    goto :goto_0

    :pswitch_2
    if-eqz v1, :cond_5

    check-cast v1, Ljava/net/InetSocketAddress;

    invoke-virtual {v0}, Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;->isBound()Z

    move-result v5

    sget-object v6, Lorg/jboss/netty/channel/ChannelFutureListener;->CLOSE_ON_FAILURE:Lorg/jboss/netty/channel/ChannelFutureListener;

    invoke-interface {v4, v6}, Lorg/jboss/netty/channel/ChannelFuture;->addListener(Lorg/jboss/netty/channel/ChannelFutureListener;)V

    iput-object v7, v0, Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;->remoteAddress:Ljava/net/InetSocketAddress;

    :try_start_3
    invoke-virtual {v0}, Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;->getDatagramChannel()Ljava/nio/channels/DatagramChannel;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/nio/channels/DatagramChannel;->connect(Ljava/net/SocketAddress;)Ljava/nio/channels/DatagramChannel;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-interface {v4}, Lorg/jboss/netty/channel/ChannelFuture;->setSuccess()Z

    if-nez v5, :cond_3

    invoke-virtual {v0}, Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;->getLocalAddress()Ljava/net/InetSocketAddress;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/jboss/netty/channel/Channels;->fireChannelBound(Lorg/jboss/netty/channel/Channel;Ljava/net/SocketAddress;)V

    :cond_3
    invoke-virtual {v0}, Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;->getRemoteAddress()Ljava/net/InetSocketAddress;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/jboss/netty/channel/Channels;->fireChannelConnected(Lorg/jboss/netty/channel/Channel;Ljava/net/SocketAddress;)V

    if-nez v5, :cond_0

    iget-object v1, v0, Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;->worker:Lorg/jboss/netty/channel/socket/nio/d;

    invoke-virtual {v1, v0, v4}, Lorg/jboss/netty/channel/socket/nio/d;->register(Lorg/jboss/netty/channel/socket/nio/a;Lorg/jboss/netty/channel/ChannelFuture;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    :catch_1
    move-exception v1

    :goto_3
    :try_start_5
    invoke-interface {v4, v1}, Lorg/jboss/netty/channel/ChannelFuture;->setFailure(Ljava/lang/Throwable;)Z

    invoke-static {v0, v1}, Lorg/jboss/netty/channel/Channels;->fireExceptionCaught(Lorg/jboss/netty/channel/Channel;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-eqz v2, :cond_0

    iget-object v1, v0, Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;->worker:Lorg/jboss/netty/channel/socket/nio/d;

    invoke-virtual {v1, v0, v4}, Lorg/jboss/netty/channel/socket/nio/d;->close(Lorg/jboss/netty/channel/socket/nio/a;Lorg/jboss/netty/channel/ChannelFuture;)V

    goto/16 :goto_0

    :catchall_1
    move-exception v1

    move v2, v3

    :goto_4
    if-eqz v2, :cond_4

    iget-object v2, v0, Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;->worker:Lorg/jboss/netty/channel/socket/nio/d;

    invoke-virtual {v2, v0, v4}, Lorg/jboss/netty/channel/socket/nio/d;->close(Lorg/jboss/netty/channel/socket/nio/a;Lorg/jboss/netty/channel/ChannelFuture;)V

    :cond_4
    throw v1

    :cond_5
    invoke-static {v0, v4}, Lorg/jboss/netty/channel/socket/nio/NioDatagramWorker;->disconnect(Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;Lorg/jboss/netty/channel/ChannelFuture;)V

    goto/16 :goto_0

    :pswitch_3
    iget-object v2, v0, Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;->worker:Lorg/jboss/netty/channel/socket/nio/d;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v0, v4, v1}, Lorg/jboss/netty/channel/socket/nio/d;->setInterestOps(Lorg/jboss/netty/channel/socket/nio/a;Lorg/jboss/netty/channel/ChannelFuture;I)V

    goto/16 :goto_0

    :cond_6
    instance-of v1, p2, Lorg/jboss/netty/channel/MessageEvent;

    if-eqz v1, :cond_0

    check-cast p2, Lorg/jboss/netty/channel/MessageEvent;

    iget-object v1, v0, Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;->writeBufferQueue:Ljava/util/Queue;

    invoke-interface {v1, p2}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    move-result v1

    sget-boolean v2, Lorg/jboss/netty/channel/socket/nio/o;->b:Z

    if-nez v2, :cond_7

    if-nez v1, :cond_7

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_7
    iget-object v1, v0, Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;->worker:Lorg/jboss/netty/channel/socket/nio/d;

    invoke-virtual {v1, v0}, Lorg/jboss/netty/channel/socket/nio/d;->writeFromUserCode(Lorg/jboss/netty/channel/socket/nio/a;)V

    goto/16 :goto_0

    :catchall_2
    move-exception v1

    goto :goto_4

    :catch_2
    move-exception v1

    move v2, v3

    goto :goto_3

    :catchall_3
    move-exception v1

    goto/16 :goto_2

    :catch_3
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
