.class final Lorg/jboss/netty/handler/traffic/a;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/jboss/netty/util/TimerTask;


# instance fields
.field private a:Lorg/jboss/netty/channel/ChannelHandlerContext;

.field private synthetic b:Lorg/jboss/netty/handler/traffic/AbstractTrafficShapingHandler;


# direct methods
.method constructor <init>(Lorg/jboss/netty/handler/traffic/AbstractTrafficShapingHandler;Lorg/jboss/netty/channel/ChannelHandlerContext;)V
    .locals 0

    iput-object p1, p0, Lorg/jboss/netty/handler/traffic/a;->b:Lorg/jboss/netty/handler/traffic/AbstractTrafficShapingHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/jboss/netty/handler/traffic/a;->a:Lorg/jboss/netty/channel/ChannelHandlerContext;

    return-void
.end method


# virtual methods
.method public final run(Lorg/jboss/netty/util/Timeout;)V
    .locals 2

    iget-object v0, p0, Lorg/jboss/netty/handler/traffic/a;->b:Lorg/jboss/netty/handler/traffic/AbstractTrafficShapingHandler;

    iget-object v0, v0, Lorg/jboss/netty/handler/traffic/AbstractTrafficShapingHandler;->release:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lorg/jboss/netty/handler/traffic/a;->a:Lorg/jboss/netty/channel/ChannelHandlerContext;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/jboss/netty/handler/traffic/a;->a:Lorg/jboss/netty/channel/ChannelHandlerContext;

    invoke-interface {v0}, Lorg/jboss/netty/channel/ChannelHandlerContext;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/jboss/netty/handler/traffic/a;->a:Lorg/jboss/netty/channel/ChannelHandlerContext;

    invoke-interface {v0}, Lorg/jboss/netty/channel/ChannelHandlerContext;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v0

    invoke-interface {v0}, Lorg/jboss/netty/channel/Channel;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/jboss/netty/handler/traffic/a;->a:Lorg/jboss/netty/channel/ChannelHandlerContext;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/jboss/netty/channel/ChannelHandlerContext;->setAttachment(Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/jboss/netty/handler/traffic/a;->a:Lorg/jboss/netty/channel/ChannelHandlerContext;

    invoke-interface {v0}, Lorg/jboss/netty/channel/ChannelHandlerContext;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lorg/jboss/netty/channel/Channel;->setReadable(Z)Lorg/jboss/netty/channel/ChannelFuture;

    goto :goto_0
.end method
