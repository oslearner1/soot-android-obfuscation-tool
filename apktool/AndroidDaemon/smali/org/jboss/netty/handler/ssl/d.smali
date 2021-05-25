.class final Lorg/jboss/netty/handler/ssl/d;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/jboss/netty/channel/ChannelFutureListener;


# instance fields
.field private synthetic a:Lorg/jboss/netty/channel/ChannelHandlerContext;

.field private synthetic b:Lorg/jboss/netty/channel/ChannelStateEvent;


# direct methods
.method constructor <init>(Lorg/jboss/netty/handler/ssl/SslHandler;Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelStateEvent;)V
    .locals 0

    iput-object p2, p0, Lorg/jboss/netty/handler/ssl/d;->a:Lorg/jboss/netty/channel/ChannelHandlerContext;

    iput-object p3, p0, Lorg/jboss/netty/handler/ssl/d;->b:Lorg/jboss/netty/channel/ChannelStateEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final operationComplete(Lorg/jboss/netty/channel/ChannelFuture;)V
    .locals 2

    invoke-interface {p1}, Lorg/jboss/netty/channel/ChannelFuture;->isSuccess()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Lorg/jboss/netty/channel/ChannelFuture;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v0

    invoke-interface {p1}, Lorg/jboss/netty/channel/ChannelFuture;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/jboss/netty/channel/Channels;->fireExceptionCaught(Lorg/jboss/netty/channel/Channel;Ljava/lang/Throwable;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lorg/jboss/netty/handler/ssl/d;->a:Lorg/jboss/netty/channel/ChannelHandlerContext;

    iget-object v1, p0, Lorg/jboss/netty/handler/ssl/d;->b:Lorg/jboss/netty/channel/ChannelStateEvent;

    invoke-interface {v0, v1}, Lorg/jboss/netty/channel/ChannelHandlerContext;->sendUpstream(Lorg/jboss/netty/channel/ChannelEvent;)V

    goto :goto_0
.end method
