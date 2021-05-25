.class final Lorg/jboss/netty/handler/codec/spdy/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lorg/jboss/netty/channel/ChannelHandlerContext;

.field private synthetic b:Lorg/jboss/netty/channel/MessageEvent;

.field private synthetic c:Lorg/jboss/netty/buffer/ChannelBuffer;


# direct methods
.method constructor <init>(Lorg/jboss/netty/handler/codec/spdy/SpdyFrameEncoder;Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/MessageEvent;Lorg/jboss/netty/buffer/ChannelBuffer;)V
    .locals 0

    iput-object p2, p0, Lorg/jboss/netty/handler/codec/spdy/e;->a:Lorg/jboss/netty/channel/ChannelHandlerContext;

    iput-object p3, p0, Lorg/jboss/netty/handler/codec/spdy/e;->b:Lorg/jboss/netty/channel/MessageEvent;

    iput-object p4, p0, Lorg/jboss/netty/handler/codec/spdy/e;->c:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/spdy/e;->a:Lorg/jboss/netty/channel/ChannelHandlerContext;

    iget-object v1, p0, Lorg/jboss/netty/handler/codec/spdy/e;->b:Lorg/jboss/netty/channel/MessageEvent;

    invoke-interface {v1}, Lorg/jboss/netty/channel/MessageEvent;->getFuture()Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v1

    iget-object v2, p0, Lorg/jboss/netty/handler/codec/spdy/e;->c:Lorg/jboss/netty/buffer/ChannelBuffer;

    iget-object v3, p0, Lorg/jboss/netty/handler/codec/spdy/e;->b:Lorg/jboss/netty/channel/MessageEvent;

    invoke-interface {v3}, Lorg/jboss/netty/channel/MessageEvent;->getRemoteAddress()Ljava/net/SocketAddress;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lorg/jboss/netty/channel/Channels;->write(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelFuture;Ljava/lang/Object;Ljava/net/SocketAddress;)V

    return-void
.end method
