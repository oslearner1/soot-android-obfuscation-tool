.class final Lorg/jboss/netty/handler/codec/spdy/o;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/jboss/netty/channel/ChannelFutureListener;


# instance fields
.field private final a:Lorg/jboss/netty/channel/ChannelHandlerContext;

.field private final b:Lorg/jboss/netty/channel/MessageEvent;

.field private final c:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lorg/jboss/netty/handler/codec/spdy/SpdyHttpEncoder;Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/MessageEvent;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/jboss/netty/handler/codec/spdy/o;->a:Lorg/jboss/netty/channel/ChannelHandlerContext;

    iput-object p3, p0, Lorg/jboss/netty/handler/codec/spdy/o;->b:Lorg/jboss/netty/channel/MessageEvent;

    iput-object p4, p0, Lorg/jboss/netty/handler/codec/spdy/o;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final operationComplete(Lorg/jboss/netty/channel/ChannelFuture;)V
    .locals 4

    invoke-interface {p1}, Lorg/jboss/netty/channel/ChannelFuture;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/spdy/o;->a:Lorg/jboss/netty/channel/ChannelHandlerContext;

    iget-object v1, p0, Lorg/jboss/netty/handler/codec/spdy/o;->b:Lorg/jboss/netty/channel/MessageEvent;

    invoke-interface {v1}, Lorg/jboss/netty/channel/MessageEvent;->getFuture()Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v1

    iget-object v2, p0, Lorg/jboss/netty/handler/codec/spdy/o;->c:Ljava/lang/Object;

    iget-object v3, p0, Lorg/jboss/netty/handler/codec/spdy/o;->b:Lorg/jboss/netty/channel/MessageEvent;

    invoke-interface {v3}, Lorg/jboss/netty/channel/MessageEvent;->getRemoteAddress()Ljava/net/SocketAddress;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lorg/jboss/netty/channel/Channels;->write(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelFuture;Ljava/lang/Object;Ljava/net/SocketAddress;)V

    :goto_0
    return-void

    :cond_0
    invoke-interface {p1}, Lorg/jboss/netty/channel/ChannelFuture;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/spdy/o;->b:Lorg/jboss/netty/channel/MessageEvent;

    invoke-interface {v0}, Lorg/jboss/netty/channel/MessageEvent;->getFuture()Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v0

    invoke-interface {v0}, Lorg/jboss/netty/channel/ChannelFuture;->cancel()Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/spdy/o;->b:Lorg/jboss/netty/channel/MessageEvent;

    invoke-interface {v0}, Lorg/jboss/netty/channel/MessageEvent;->getFuture()Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v0

    invoke-interface {p1}, Lorg/jboss/netty/channel/ChannelFuture;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/jboss/netty/channel/ChannelFuture;->setFailure(Ljava/lang/Throwable;)Z

    goto :goto_0
.end method
