.class final Lorg/jboss/netty/handler/codec/compression/a;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/jboss/netty/channel/ChannelFutureListener;


# instance fields
.field private synthetic a:Lorg/jboss/netty/channel/ChannelHandlerContext;

.field private synthetic b:Lorg/jboss/netty/channel/ChannelEvent;


# direct methods
.method constructor <init>(Lorg/jboss/netty/handler/codec/compression/JdkZlibEncoder;Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelEvent;)V
    .locals 0

    iput-object p2, p0, Lorg/jboss/netty/handler/codec/compression/a;->a:Lorg/jboss/netty/channel/ChannelHandlerContext;

    iput-object p3, p0, Lorg/jboss/netty/handler/codec/compression/a;->b:Lorg/jboss/netty/channel/ChannelEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final operationComplete(Lorg/jboss/netty/channel/ChannelFuture;)V
    .locals 2

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/compression/a;->a:Lorg/jboss/netty/channel/ChannelHandlerContext;

    iget-object v1, p0, Lorg/jboss/netty/handler/codec/compression/a;->b:Lorg/jboss/netty/channel/ChannelEvent;

    invoke-interface {v0, v1}, Lorg/jboss/netty/channel/ChannelHandlerContext;->sendDownstream(Lorg/jboss/netty/channel/ChannelEvent;)V

    return-void
.end method
