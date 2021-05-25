.class final Lorg/jboss/netty/channel/socket/http/k;
.super Lorg/jboss/netty/channel/SimpleChannelUpstreamHandler;


# instance fields
.field private volatile a:Z

.field private b:Lorg/jboss/netty/channel/socket/SocketChannel;

.field private synthetic c:Lorg/jboss/netty/channel/socket/http/a;


# direct methods
.method constructor <init>(Lorg/jboss/netty/channel/socket/http/a;)V
    .locals 1

    iput-object p1, p0, Lorg/jboss/netty/channel/socket/http/k;->c:Lorg/jboss/netty/channel/socket/http/a;

    invoke-direct {p0}, Lorg/jboss/netty/channel/SimpleChannelUpstreamHandler;-><init>()V

    iget-object v0, p0, Lorg/jboss/netty/channel/socket/http/k;->c:Lorg/jboss/netty/channel/socket/http/a;

    iput-object v0, p0, Lorg/jboss/netty/channel/socket/http/k;->b:Lorg/jboss/netty/channel/socket/SocketChannel;

    return-void
.end method


# virtual methods
.method public final channelBound(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelStateEvent;)V
    .locals 2

    iget-object v1, p0, Lorg/jboss/netty/channel/socket/http/k;->b:Lorg/jboss/netty/channel/socket/SocketChannel;

    invoke-interface {p2}, Lorg/jboss/netty/channel/ChannelStateEvent;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/SocketAddress;

    invoke-static {v1, v0}, Lorg/jboss/netty/channel/Channels;->fireChannelBound(Lorg/jboss/netty/channel/Channel;Ljava/net/SocketAddress;)V

    return-void
.end method

.method public final channelClosed(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelStateEvent;)V
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/channel/socket/http/k;->b:Lorg/jboss/netty/channel/socket/SocketChannel;

    invoke-static {v0}, Lorg/jboss/netty/channel/Channels;->fireChannelClosed(Lorg/jboss/netty/channel/Channel;)V

    return-void
.end method

.method public final channelDisconnected(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelStateEvent;)V
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/channel/socket/http/k;->b:Lorg/jboss/netty/channel/socket/SocketChannel;

    invoke-static {v0}, Lorg/jboss/netty/channel/Channels;->fireChannelDisconnected(Lorg/jboss/netty/channel/Channel;)V

    return-void
.end method

.method public final channelInterestChanged(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelStateEvent;)V
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/channel/socket/http/k;->b:Lorg/jboss/netty/channel/socket/SocketChannel;

    invoke-static {v0}, Lorg/jboss/netty/channel/Channels;->fireChannelInterestChanged(Lorg/jboss/netty/channel/Channel;)V

    return-void
.end method

.method public final channelUnbound(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelStateEvent;)V
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/channel/socket/http/k;->b:Lorg/jboss/netty/channel/socket/SocketChannel;

    invoke-static {v0}, Lorg/jboss/netty/channel/Channels;->fireChannelUnbound(Lorg/jboss/netty/channel/Channel;)V

    return-void
.end method

.method public final exceptionCaught(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ExceptionEvent;)V
    .locals 2

    iget-object v0, p0, Lorg/jboss/netty/channel/socket/http/k;->b:Lorg/jboss/netty/channel/socket/SocketChannel;

    invoke-interface {p2}, Lorg/jboss/netty/channel/ExceptionEvent;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/jboss/netty/channel/Channels;->fireExceptionCaught(Lorg/jboss/netty/channel/Channel;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lorg/jboss/netty/channel/socket/http/k;->c:Lorg/jboss/netty/channel/socket/http/a;

    iget-object v0, v0, Lorg/jboss/netty/channel/socket/http/a;->c:Lorg/jboss/netty/channel/socket/SocketChannel;

    invoke-interface {v0}, Lorg/jboss/netty/channel/socket/SocketChannel;->close()Lorg/jboss/netty/channel/ChannelFuture;

    return-void
.end method

.method public final messageReceived(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/MessageEvent;)V
    .locals 4

    iget-boolean v0, p0, Lorg/jboss/netty/channel/socket/http/k;->a:Z

    if-nez v0, :cond_3

    invoke-interface {p2}, Lorg/jboss/netty/channel/MessageEvent;->getMessage()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/handler/codec/http/HttpResponse;

    invoke-interface {v0}, Lorg/jboss/netty/handler/codec/http/HttpResponse;->getStatus()Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->getCode()I

    move-result v1

    sget-object v2, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->OK:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    invoke-virtual {v2}, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->getCode()I

    move-result v2

    if-eq v1, v2, :cond_0

    new-instance v1, Lorg/jboss/netty/channel/ChannelException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unexpected HTTP response status: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Lorg/jboss/netty/handler/codec/http/HttpResponse;->getStatus()Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/jboss/netty/channel/ChannelException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    invoke-interface {v0}, Lorg/jboss/netty/handler/codec/http/HttpResponse;->isChunked()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jboss/netty/channel/socket/http/k;->a:Z

    :goto_0
    return-void

    :cond_1
    invoke-interface {v0}, Lorg/jboss/netty/handler/codec/http/HttpResponse;->getContent()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readable()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/jboss/netty/channel/socket/http/k;->c:Lorg/jboss/netty/channel/socket/http/a;

    invoke-static {v1, v0}, Lorg/jboss/netty/channel/Channels;->fireMessageReceived(Lorg/jboss/netty/channel/Channel;Ljava/lang/Object;)V

    :cond_2
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/http/k;->c:Lorg/jboss/netty/channel/socket/http/a;

    iget-object v1, p0, Lorg/jboss/netty/channel/socket/http/k;->b:Lorg/jboss/netty/channel/socket/SocketChannel;

    invoke-static {v1}, Lorg/jboss/netty/channel/Channels;->succeededFuture(Lorg/jboss/netty/channel/Channel;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jboss/netty/channel/socket/http/a;->b(Lorg/jboss/netty/channel/ChannelFuture;)V

    goto :goto_0

    :cond_3
    invoke-interface {p2}, Lorg/jboss/netty/channel/MessageEvent;->getMessage()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/handler/codec/http/HttpChunk;

    invoke-interface {v0}, Lorg/jboss/netty/handler/codec/http/HttpChunk;->isLast()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lorg/jboss/netty/channel/socket/http/k;->c:Lorg/jboss/netty/channel/socket/http/a;

    invoke-interface {v0}, Lorg/jboss/netty/handler/codec/http/HttpChunk;->getContent()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    invoke-static {v1, v0}, Lorg/jboss/netty/channel/Channels;->fireMessageReceived(Lorg/jboss/netty/channel/Channel;Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jboss/netty/channel/socket/http/k;->a:Z

    iget-object v0, p0, Lorg/jboss/netty/channel/socket/http/k;->c:Lorg/jboss/netty/channel/socket/http/a;

    iget-object v1, p0, Lorg/jboss/netty/channel/socket/http/k;->b:Lorg/jboss/netty/channel/socket/SocketChannel;

    invoke-static {v1}, Lorg/jboss/netty/channel/Channels;->succeededFuture(Lorg/jboss/netty/channel/Channel;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jboss/netty/channel/socket/http/a;->b(Lorg/jboss/netty/channel/ChannelFuture;)V

    goto :goto_0
.end method
