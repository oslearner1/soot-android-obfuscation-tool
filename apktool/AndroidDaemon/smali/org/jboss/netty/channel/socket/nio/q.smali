.class final Lorg/jboss/netty/channel/socket/nio/q;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;

.field private final b:Lorg/jboss/netty/channel/ChannelFuture;

.field private synthetic c:Lorg/jboss/netty/channel/socket/nio/NioDatagramWorker;


# direct methods
.method constructor <init>(Lorg/jboss/netty/channel/socket/nio/NioDatagramWorker;Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;Lorg/jboss/netty/channel/ChannelFuture;)V
    .locals 0

    iput-object p1, p0, Lorg/jboss/netty/channel/socket/nio/q;->c:Lorg/jboss/netty/channel/socket/nio/NioDatagramWorker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/jboss/netty/channel/socket/nio/q;->a:Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;

    iput-object p3, p0, Lorg/jboss/netty/channel/socket/nio/q;->b:Lorg/jboss/netty/channel/ChannelFuture;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/q;->a:Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;

    invoke-virtual {v0}, Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;->getLocalAddress()Ljava/net/InetSocketAddress;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/q;->b:Lorg/jboss/netty/channel/ChannelFuture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/q;->b:Lorg/jboss/netty/channel/ChannelFuture;

    new-instance v1, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v1}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    invoke-interface {v0, v1}, Lorg/jboss/netty/channel/ChannelFuture;->setFailure(Ljava/lang/Throwable;)Z

    :cond_0
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/q;->c:Lorg/jboss/netty/channel/socket/nio/NioDatagramWorker;

    iget-object v1, p0, Lorg/jboss/netty/channel/socket/nio/q;->a:Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;

    iget-object v2, p0, Lorg/jboss/netty/channel/socket/nio/q;->a:Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;

    invoke-static {v2}, Lorg/jboss/netty/channel/Channels;->succeededFuture(Lorg/jboss/netty/channel/Channel;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/jboss/netty/channel/socket/nio/NioDatagramWorker;->close(Lorg/jboss/netty/channel/socket/nio/a;Lorg/jboss/netty/channel/ChannelFuture;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    :try_start_0
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/q;->a:Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;

    iget-object v1, v0, Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;->interestOpsLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/q;->a:Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;

    invoke-virtual {v0}, Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;->getDatagramChannel()Ljava/nio/channels/DatagramChannel;

    move-result-object v0

    iget-object v2, p0, Lorg/jboss/netty/channel/socket/nio/q;->c:Lorg/jboss/netty/channel/socket/nio/NioDatagramWorker;

    iget-object v2, v2, Lorg/jboss/netty/channel/socket/nio/NioDatagramWorker;->selector:Ljava/nio/channels/Selector;

    iget-object v3, p0, Lorg/jboss/netty/channel/socket/nio/q;->a:Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;

    invoke-virtual {v3}, Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;->getRawInterestOps()I

    move-result v3

    iget-object v4, p0, Lorg/jboss/netty/channel/socket/nio/q;->a:Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;

    invoke-virtual {v0, v2, v3, v4}, Ljava/nio/channels/DatagramChannel;->register(Ljava/nio/channels/Selector;ILjava/lang/Object;)Ljava/nio/channels/SelectionKey;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/q;->b:Lorg/jboss/netty/channel/ChannelFuture;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/q;->b:Lorg/jboss/netty/channel/ChannelFuture;

    invoke-interface {v0}, Lorg/jboss/netty/channel/ChannelFuture;->setSuccess()Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lorg/jboss/netty/channel/socket/nio/q;->b:Lorg/jboss/netty/channel/ChannelFuture;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lorg/jboss/netty/channel/socket/nio/q;->b:Lorg/jboss/netty/channel/ChannelFuture;

    invoke-interface {v1, v0}, Lorg/jboss/netty/channel/ChannelFuture;->setFailure(Ljava/lang/Throwable;)Z

    :cond_3
    iget-object v1, p0, Lorg/jboss/netty/channel/socket/nio/q;->c:Lorg/jboss/netty/channel/socket/nio/NioDatagramWorker;

    iget-object v2, p0, Lorg/jboss/netty/channel/socket/nio/q;->a:Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;

    iget-object v3, p0, Lorg/jboss/netty/channel/socket/nio/q;->a:Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;

    invoke-static {v3}, Lorg/jboss/netty/channel/Channels;->succeededFuture(Lorg/jboss/netty/channel/Channel;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/jboss/netty/channel/socket/nio/NioDatagramWorker;->close(Lorg/jboss/netty/channel/socket/nio/a;Lorg/jboss/netty/channel/ChannelFuture;)V

    instance-of v1, v0, Ljava/nio/channels/ClosedChannelException;

    if-nez v1, :cond_1

    new-instance v1, Lorg/jboss/netty/channel/ChannelException;

    const-string v2, "Failed to register a socket to the selector."

    invoke-direct {v1, v2, v0}, Lorg/jboss/netty/channel/ChannelException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1

    throw v0
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
.end method
