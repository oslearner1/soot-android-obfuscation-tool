.class final Lorg/jboss/netty/handler/codec/spdy/x;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/jboss/netty/channel/ChannelFutureListener;


# instance fields
.field private final a:Lorg/jboss/netty/channel/ChannelHandlerContext;

.field private final b:Lorg/jboss/netty/channel/ChannelStateEvent;


# direct methods
.method constructor <init>(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelStateEvent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/jboss/netty/handler/codec/spdy/x;->a:Lorg/jboss/netty/channel/ChannelHandlerContext;

    iput-object p2, p0, Lorg/jboss/netty/handler/codec/spdy/x;->b:Lorg/jboss/netty/channel/ChannelStateEvent;

    return-void
.end method


# virtual methods
.method public final operationComplete(Lorg/jboss/netty/channel/ChannelFuture;)V
    .locals 2

    invoke-interface {p1}, Lorg/jboss/netty/channel/ChannelFuture;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Ljava/nio/channels/ClosedChannelException;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/spdy/x;->a:Lorg/jboss/netty/channel/ChannelHandlerContext;

    iget-object v1, p0, Lorg/jboss/netty/handler/codec/spdy/x;->b:Lorg/jboss/netty/channel/ChannelStateEvent;

    invoke-interface {v1}, Lorg/jboss/netty/channel/ChannelStateEvent;->getFuture()Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/jboss/netty/channel/Channels;->close(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelFuture;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/spdy/x;->b:Lorg/jboss/netty/channel/ChannelStateEvent;

    invoke-interface {v0}, Lorg/jboss/netty/channel/ChannelStateEvent;->getFuture()Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v0

    invoke-interface {v0}, Lorg/jboss/netty/channel/ChannelFuture;->setSuccess()Z

    goto :goto_0
.end method
