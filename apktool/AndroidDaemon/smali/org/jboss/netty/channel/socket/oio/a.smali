.class abstract Lorg/jboss/netty/channel/socket/oio/a;
.super Lorg/jboss/netty/channel/AbstractChannel;


# instance fields
.field volatile a:Ljava/net/InetSocketAddress;

.field volatile b:Ljava/lang/Thread;

.field volatile c:Lorg/jboss/netty/channel/socket/Worker;

.field final d:Ljava/lang/Object;

.field private volatile e:Ljava/net/InetSocketAddress;


# direct methods
.method constructor <init>(Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/channel/ChannelFactory;Lorg/jboss/netty/channel/ChannelPipeline;Lorg/jboss/netty/channel/ChannelSink;)V
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/jboss/netty/channel/AbstractChannel;-><init>(Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/channel/ChannelFactory;Lorg/jboss/netty/channel/ChannelPipeline;Lorg/jboss/netty/channel/ChannelSink;)V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/jboss/netty/channel/socket/oio/a;->d:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method abstract a()Z
.end method

.method abstract b()Z
.end method

.method abstract c()Z
.end method

.method abstract d()Ljava/net/InetSocketAddress;
.end method

.method abstract e()Ljava/net/InetSocketAddress;
.end method

.method abstract f()V
.end method

.method public getLocalAddress()Ljava/net/InetSocketAddress;
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/channel/socket/oio/a;->e:Ljava/net/InetSocketAddress;

    if-nez v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/oio/a;->d()Ljava/net/InetSocketAddress;

    move-result-object v0

    iput-object v0, p0, Lorg/jboss/netty/channel/socket/oio/a;->e:Ljava/net/InetSocketAddress;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic getLocalAddress()Ljava/net/SocketAddress;
    .locals 1

    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/oio/a;->getLocalAddress()Ljava/net/InetSocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public getRemoteAddress()Ljava/net/InetSocketAddress;
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/channel/socket/oio/a;->a:Ljava/net/InetSocketAddress;

    if-nez v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/oio/a;->e()Ljava/net/InetSocketAddress;

    move-result-object v0

    iput-object v0, p0, Lorg/jboss/netty/channel/socket/oio/a;->a:Ljava/net/InetSocketAddress;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic getRemoteAddress()Ljava/net/SocketAddress;
    .locals 1

    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/oio/a;->getRemoteAddress()Ljava/net/InetSocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public isBound()Z
    .locals 1

    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/oio/a;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/oio/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isConnected()Z
    .locals 1

    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/oio/a;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/oio/a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected setClosed()Z
    .locals 1

    invoke-super {p0}, Lorg/jboss/netty/channel/AbstractChannel;->setClosed()Z

    move-result v0

    return v0
.end method

.method protected setInterestOpsNow(I)V
    .locals 0

    invoke-super {p0, p1}, Lorg/jboss/netty/channel/AbstractChannel;->setInterestOpsNow(I)V

    return-void
.end method

.method public write(Ljava/lang/Object;Ljava/net/SocketAddress;)Lorg/jboss/netty/channel/ChannelFuture;
    .locals 1

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/oio/a;->getRemoteAddress()Ljava/net/InetSocketAddress;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    invoke-super {p0, p1, v0}, Lorg/jboss/netty/channel/AbstractChannel;->write(Ljava/lang/Object;Ljava/net/SocketAddress;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    invoke-super {p0, p1, p2}, Lorg/jboss/netty/channel/AbstractChannel;->write(Ljava/lang/Object;Ljava/net/SocketAddress;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v0

    goto :goto_0
.end method
