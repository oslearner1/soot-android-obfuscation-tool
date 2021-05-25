.class final Lorg/jboss/netty/channel/local/c;
.super Lorg/jboss/netty/channel/AbstractServerChannel;

# interfaces
.implements Lorg/jboss/netty/channel/local/LocalServerChannel;


# instance fields
.field final a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field volatile b:Lorg/jboss/netty/channel/local/LocalAddress;

.field private c:Lorg/jboss/netty/channel/ChannelConfig;


# direct methods
.method constructor <init>(Lorg/jboss/netty/channel/ChannelFactory;Lorg/jboss/netty/channel/ChannelPipeline;Lorg/jboss/netty/channel/ChannelSink;)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lorg/jboss/netty/channel/AbstractServerChannel;-><init>(Lorg/jboss/netty/channel/ChannelFactory;Lorg/jboss/netty/channel/ChannelPipeline;Lorg/jboss/netty/channel/ChannelSink;)V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lorg/jboss/netty/channel/local/c;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Lorg/jboss/netty/channel/DefaultServerChannelConfig;

    invoke-direct {v0}, Lorg/jboss/netty/channel/DefaultServerChannelConfig;-><init>()V

    iput-object v0, p0, Lorg/jboss/netty/channel/local/c;->c:Lorg/jboss/netty/channel/ChannelConfig;

    invoke-static {p0}, Lorg/jboss/netty/channel/Channels;->fireChannelOpen(Lorg/jboss/netty/channel/Channel;)V

    return-void
.end method


# virtual methods
.method public final getConfig()Lorg/jboss/netty/channel/ChannelConfig;
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/channel/local/c;->c:Lorg/jboss/netty/channel/ChannelConfig;

    return-object v0
.end method

.method public final bridge synthetic getLocalAddress()Ljava/net/SocketAddress;
    .locals 1

    invoke-virtual {p0}, Lorg/jboss/netty/channel/local/c;->getLocalAddress()Lorg/jboss/netty/channel/local/LocalAddress;

    move-result-object v0

    return-object v0
.end method

.method public final getLocalAddress()Lorg/jboss/netty/channel/local/LocalAddress;
    .locals 1

    invoke-virtual {p0}, Lorg/jboss/netty/channel/local/c;->isBound()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/jboss/netty/channel/local/c;->b:Lorg/jboss/netty/channel/local/LocalAddress;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final bridge synthetic getRemoteAddress()Ljava/net/SocketAddress;
    .locals 1

    invoke-virtual {p0}, Lorg/jboss/netty/channel/local/c;->getRemoteAddress()Lorg/jboss/netty/channel/local/LocalAddress;

    move-result-object v0

    return-object v0
.end method

.method public final getRemoteAddress()Lorg/jboss/netty/channel/local/LocalAddress;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final isBound()Z
    .locals 1

    invoke-virtual {p0}, Lorg/jboss/netty/channel/local/c;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/jboss/netty/channel/local/c;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final setClosed()Z
    .locals 1

    invoke-super {p0}, Lorg/jboss/netty/channel/AbstractServerChannel;->setClosed()Z

    move-result v0

    return v0
.end method
