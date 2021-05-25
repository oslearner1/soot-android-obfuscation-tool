.class final Lorg/jboss/netty/handler/codec/spdy/s;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/jboss/netty/channel/ChannelFutureListener;


# instance fields
.field private synthetic a:Lorg/jboss/netty/channel/ChannelHandlerContext;

.field private synthetic b:Ljava/net/SocketAddress;

.field private synthetic c:I

.field private synthetic d:Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;


# direct methods
.method constructor <init>(Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;Lorg/jboss/netty/channel/ChannelHandlerContext;Ljava/net/SocketAddress;I)V
    .locals 0

    iput-object p1, p0, Lorg/jboss/netty/handler/codec/spdy/s;->d:Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;

    iput-object p2, p0, Lorg/jboss/netty/handler/codec/spdy/s;->a:Lorg/jboss/netty/channel/ChannelHandlerContext;

    iput-object p3, p0, Lorg/jboss/netty/handler/codec/spdy/s;->b:Ljava/net/SocketAddress;

    iput p4, p0, Lorg/jboss/netty/handler/codec/spdy/s;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final operationComplete(Lorg/jboss/netty/channel/ChannelFuture;)V
    .locals 5

    invoke-interface {p1}, Lorg/jboss/netty/channel/ChannelFuture;->isSuccess()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/spdy/s;->d:Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;

    iget-object v1, p0, Lorg/jboss/netty/handler/codec/spdy/s;->a:Lorg/jboss/netty/channel/ChannelHandlerContext;

    iget-object v2, p0, Lorg/jboss/netty/handler/codec/spdy/s;->b:Ljava/net/SocketAddress;

    iget v3, p0, Lorg/jboss/netty/handler/codec/spdy/s;->c:I

    sget-object v4, Lorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;->INTERNAL_ERROR:Lorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;

    invoke-static {v0, v1, v2, v3, v4}, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;->access$000(Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;Lorg/jboss/netty/channel/ChannelHandlerContext;Ljava/net/SocketAddress;ILorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;)V

    :cond_0
    return-void
.end method
