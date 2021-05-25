.class final Lorg/jboss/netty/channel/socket/http/g;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/jboss/netty/channel/ChannelFutureListener;


# instance fields
.field final synthetic a:Lorg/jboss/netty/channel/ChannelFuture;

.field private synthetic b:Lorg/jboss/netty/channel/socket/http/a;


# direct methods
.method constructor <init>(Lorg/jboss/netty/channel/socket/http/a;Lorg/jboss/netty/channel/ChannelFuture;)V
    .locals 0

    iput-object p1, p0, Lorg/jboss/netty/channel/socket/http/g;->b:Lorg/jboss/netty/channel/socket/http/a;

    iput-object p2, p0, Lorg/jboss/netty/channel/socket/http/g;->a:Lorg/jboss/netty/channel/ChannelFuture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final operationComplete(Lorg/jboss/netty/channel/ChannelFuture;)V
    .locals 2

    iget-object v0, p0, Lorg/jboss/netty/channel/socket/http/g;->b:Lorg/jboss/netty/channel/socket/http/a;

    iget-object v0, v0, Lorg/jboss/netty/channel/socket/http/a;->c:Lorg/jboss/netty/channel/socket/SocketChannel;

    invoke-interface {v0}, Lorg/jboss/netty/channel/socket/SocketChannel;->unbind()Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v0

    new-instance v1, Lorg/jboss/netty/channel/socket/http/h;

    invoke-direct {v1, p0}, Lorg/jboss/netty/channel/socket/http/h;-><init>(Lorg/jboss/netty/channel/socket/http/g;)V

    invoke-interface {v0, v1}, Lorg/jboss/netty/channel/ChannelFuture;->addListener(Lorg/jboss/netty/channel/ChannelFutureListener;)V

    return-void
.end method
