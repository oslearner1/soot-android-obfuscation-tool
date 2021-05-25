.class final Lorg/jboss/netty/channel/socket/http/d;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/jboss/netty/channel/ChannelFutureListener;


# instance fields
.field private synthetic a:Lorg/jboss/netty/handler/codec/http/HttpRequest;

.field private synthetic b:Lorg/jboss/netty/channel/socket/http/c;


# direct methods
.method constructor <init>(Lorg/jboss/netty/channel/socket/http/c;Lorg/jboss/netty/handler/codec/http/HttpRequest;)V
    .locals 0

    iput-object p1, p0, Lorg/jboss/netty/channel/socket/http/d;->b:Lorg/jboss/netty/channel/socket/http/c;

    iput-object p2, p0, Lorg/jboss/netty/channel/socket/http/d;->a:Lorg/jboss/netty/handler/codec/http/HttpRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final operationComplete(Lorg/jboss/netty/channel/ChannelFuture;)V
    .locals 2

    invoke-interface {p1}, Lorg/jboss/netty/channel/ChannelFuture;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/jboss/netty/channel/socket/http/d;->b:Lorg/jboss/netty/channel/socket/http/c;

    iget-object v0, v0, Lorg/jboss/netty/channel/socket/http/c;->d:Lorg/jboss/netty/channel/socket/http/a;

    iget-object v0, v0, Lorg/jboss/netty/channel/socket/http/a;->c:Lorg/jboss/netty/channel/socket/SocketChannel;

    iget-object v1, p0, Lorg/jboss/netty/channel/socket/http/d;->a:Lorg/jboss/netty/handler/codec/http/HttpRequest;

    invoke-interface {v0, v1}, Lorg/jboss/netty/channel/socket/SocketChannel;->write(Ljava/lang/Object;)Lorg/jboss/netty/channel/ChannelFuture;

    iget-object v0, p0, Lorg/jboss/netty/channel/socket/http/d;->b:Lorg/jboss/netty/channel/socket/http/c;

    iget-object v0, v0, Lorg/jboss/netty/channel/socket/http/c;->d:Lorg/jboss/netty/channel/socket/http/a;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lorg/jboss/netty/channel/socket/http/a;->b:Z

    iget-object v0, p0, Lorg/jboss/netty/channel/socket/http/d;->b:Lorg/jboss/netty/channel/socket/http/c;

    iget-object v0, v0, Lorg/jboss/netty/channel/socket/http/c;->b:Lorg/jboss/netty/channel/ChannelFuture;

    invoke-interface {v0}, Lorg/jboss/netty/channel/ChannelFuture;->setSuccess()Z

    iget-object v0, p0, Lorg/jboss/netty/channel/socket/http/d;->b:Lorg/jboss/netty/channel/socket/http/c;

    iget-object v0, v0, Lorg/jboss/netty/channel/socket/http/c;->c:Lorg/jboss/netty/channel/socket/SocketChannel;

    iget-object v1, p0, Lorg/jboss/netty/channel/socket/http/d;->b:Lorg/jboss/netty/channel/socket/http/c;

    iget-object v1, v1, Lorg/jboss/netty/channel/socket/http/c;->a:Ljava/net/SocketAddress;

    invoke-static {v0, v1}, Lorg/jboss/netty/channel/Channels;->fireChannelConnected(Lorg/jboss/netty/channel/Channel;Ljava/net/SocketAddress;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/http/d;->b:Lorg/jboss/netty/channel/socket/http/c;

    iget-object v0, v0, Lorg/jboss/netty/channel/socket/http/c;->b:Lorg/jboss/netty/channel/ChannelFuture;

    invoke-interface {p1}, Lorg/jboss/netty/channel/ChannelFuture;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/jboss/netty/channel/ChannelFuture;->setFailure(Ljava/lang/Throwable;)Z

    iget-object v0, p0, Lorg/jboss/netty/channel/socket/http/d;->b:Lorg/jboss/netty/channel/socket/http/c;

    iget-object v0, v0, Lorg/jboss/netty/channel/socket/http/c;->c:Lorg/jboss/netty/channel/socket/SocketChannel;

    invoke-interface {p1}, Lorg/jboss/netty/channel/ChannelFuture;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/jboss/netty/channel/Channels;->fireExceptionCaught(Lorg/jboss/netty/channel/Channel;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
