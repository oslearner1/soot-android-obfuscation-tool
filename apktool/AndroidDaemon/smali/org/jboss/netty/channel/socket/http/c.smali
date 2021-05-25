.class final Lorg/jboss/netty/channel/socket/http/c;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/jboss/netty/channel/ChannelFutureListener;


# instance fields
.field final synthetic a:Ljava/net/SocketAddress;

.field final synthetic b:Lorg/jboss/netty/channel/ChannelFuture;

.field final synthetic c:Lorg/jboss/netty/channel/socket/SocketChannel;

.field final synthetic d:Lorg/jboss/netty/channel/socket/http/a;


# direct methods
.method constructor <init>(Lorg/jboss/netty/channel/socket/http/a;Ljava/net/SocketAddress;Lorg/jboss/netty/channel/ChannelFuture;Lorg/jboss/netty/channel/socket/SocketChannel;)V
    .locals 0

    iput-object p1, p0, Lorg/jboss/netty/channel/socket/http/c;->d:Lorg/jboss/netty/channel/socket/http/a;

    iput-object p2, p0, Lorg/jboss/netty/channel/socket/http/c;->a:Ljava/net/SocketAddress;

    iput-object p3, p0, Lorg/jboss/netty/channel/socket/http/c;->b:Lorg/jboss/netty/channel/ChannelFuture;

    iput-object p4, p0, Lorg/jboss/netty/channel/socket/http/c;->c:Lorg/jboss/netty/channel/socket/SocketChannel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final operationComplete(Lorg/jboss/netty/channel/ChannelFuture;)V
    .locals 7

    const/4 v6, 0x1

    iget-object v0, p0, Lorg/jboss/netty/channel/socket/http/c;->d:Lorg/jboss/netty/channel/socket/http/a;

    iget-object v0, v0, Lorg/jboss/netty/channel/socket/http/a;->a:Lorg/jboss/netty/channel/socket/http/HttpTunnelingSocketChannelConfig;

    invoke-virtual {v0}, Lorg/jboss/netty/channel/socket/http/HttpTunnelingSocketChannelConfig;->getServerName()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lorg/jboss/netty/channel/socket/http/c;->a:Ljava/net/SocketAddress;

    check-cast v0, Ljava/net/InetSocketAddress;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v2

    iget-object v0, p0, Lorg/jboss/netty/channel/socket/http/c;->d:Lorg/jboss/netty/channel/socket/http/a;

    iget-object v0, v0, Lorg/jboss/netty/channel/socket/http/a;->a:Lorg/jboss/netty/channel/socket/http/HttpTunnelingSocketChannelConfig;

    invoke-virtual {v0}, Lorg/jboss/netty/channel/socket/http/HttpTunnelingSocketChannelConfig;->getServerPath()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1}, Lorg/jboss/netty/channel/ChannelFuture;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lorg/jboss/netty/channel/socket/http/c;->d:Lorg/jboss/netty/channel/socket/http/a;

    iget-object v0, v0, Lorg/jboss/netty/channel/socket/http/a;->a:Lorg/jboss/netty/channel/socket/http/HttpTunnelingSocketChannelConfig;

    invoke-virtual {v0}, Lorg/jboss/netty/channel/socket/http/HttpTunnelingSocketChannelConfig;->getSslContext()Ljavax/net/ssl/SSLContext;

    move-result-object v4

    const/4 v0, 0x0

    if-eqz v4, :cond_2

    if-eqz v1, :cond_4

    invoke-virtual {v4, v1, v2}, Ljavax/net/ssl/SSLContext;->createSSLEngine(Ljava/lang/String;I)Ljavax/net/ssl/SSLEngine;

    move-result-object v0

    :goto_0
    invoke-virtual {v0, v6}, Ljavax/net/ssl/SSLEngine;->setUseClientMode(Z)V

    iget-object v2, p0, Lorg/jboss/netty/channel/socket/http/c;->d:Lorg/jboss/netty/channel/socket/http/a;

    iget-object v2, v2, Lorg/jboss/netty/channel/socket/http/a;->a:Lorg/jboss/netty/channel/socket/http/HttpTunnelingSocketChannelConfig;

    invoke-virtual {v2}, Lorg/jboss/netty/channel/socket/http/HttpTunnelingSocketChannelConfig;->isEnableSslSessionCreation()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljavax/net/ssl/SSLEngine;->setEnableSessionCreation(Z)V

    iget-object v2, p0, Lorg/jboss/netty/channel/socket/http/c;->d:Lorg/jboss/netty/channel/socket/http/a;

    iget-object v2, v2, Lorg/jboss/netty/channel/socket/http/a;->a:Lorg/jboss/netty/channel/socket/http/HttpTunnelingSocketChannelConfig;

    invoke-virtual {v2}, Lorg/jboss/netty/channel/socket/http/HttpTunnelingSocketChannelConfig;->getEnabledSslCipherSuites()[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v2}, Ljavax/net/ssl/SSLEngine;->setEnabledCipherSuites([Ljava/lang/String;)V

    :cond_0
    iget-object v2, p0, Lorg/jboss/netty/channel/socket/http/c;->d:Lorg/jboss/netty/channel/socket/http/a;

    iget-object v2, v2, Lorg/jboss/netty/channel/socket/http/a;->a:Lorg/jboss/netty/channel/socket/http/HttpTunnelingSocketChannelConfig;

    invoke-virtual {v2}, Lorg/jboss/netty/channel/socket/http/HttpTunnelingSocketChannelConfig;->getEnabledSslProtocols()[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v0, v2}, Ljavax/net/ssl/SSLEngine;->setEnabledProtocols([Ljava/lang/String;)V

    :cond_1
    new-instance v2, Lorg/jboss/netty/handler/ssl/SslHandler;

    invoke-direct {v2, v0}, Lorg/jboss/netty/handler/ssl/SslHandler;-><init>(Ljavax/net/ssl/SSLEngine;)V

    iget-object v0, p0, Lorg/jboss/netty/channel/socket/http/c;->d:Lorg/jboss/netty/channel/socket/http/a;

    iget-object v0, v0, Lorg/jboss/netty/channel/socket/http/a;->c:Lorg/jboss/netty/channel/socket/SocketChannel;

    invoke-interface {v0}, Lorg/jboss/netty/channel/socket/SocketChannel;->getPipeline()Lorg/jboss/netty/channel/ChannelPipeline;

    move-result-object v0

    const-string v4, "ssl"

    invoke-interface {v0, v4, v2}, Lorg/jboss/netty/channel/ChannelPipeline;->addFirst(Ljava/lang/String;Lorg/jboss/netty/channel/ChannelHandler;)V

    invoke-virtual {v2}, Lorg/jboss/netty/handler/ssl/SslHandler;->handshake()Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v0

    :cond_2
    new-instance v2, Lorg/jboss/netty/handler/codec/http/DefaultHttpRequest;

    sget-object v4, Lorg/jboss/netty/handler/codec/http/HttpVersion;->HTTP_1_1:Lorg/jboss/netty/handler/codec/http/HttpVersion;

    sget-object v5, Lorg/jboss/netty/handler/codec/http/HttpMethod;->POST:Lorg/jboss/netty/handler/codec/http/HttpMethod;

    invoke-direct {v2, v4, v5, v3}, Lorg/jboss/netty/handler/codec/http/DefaultHttpRequest;-><init>(Lorg/jboss/netty/handler/codec/http/HttpVersion;Lorg/jboss/netty/handler/codec/http/HttpMethod;Ljava/lang/String;)V

    if-eqz v1, :cond_3

    const-string v3, "Host"

    invoke-interface {v2, v3, v1}, Lorg/jboss/netty/handler/codec/http/HttpRequest;->setHeader(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_3
    const-string v1, "Content-Type"

    const-string v3, "application/octet-stream"

    invoke-interface {v2, v1, v3}, Lorg/jboss/netty/handler/codec/http/HttpRequest;->setHeader(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "Transfer-Encoding"

    const-string v3, "chunked"

    invoke-interface {v2, v1, v3}, Lorg/jboss/netty/handler/codec/http/HttpRequest;->setHeader(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "Content-Transfer-Encoding"

    const-string v3, "binary"

    invoke-interface {v2, v1, v3}, Lorg/jboss/netty/handler/codec/http/HttpRequest;->setHeader(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "User-Agent"

    const-class v3, Lorg/jboss/netty/channel/socket/http/a;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Lorg/jboss/netty/handler/codec/http/HttpRequest;->setHeader(Ljava/lang/String;Ljava/lang/Object;)V

    if-nez v0, :cond_5

    iget-object v0, p0, Lorg/jboss/netty/channel/socket/http/c;->d:Lorg/jboss/netty/channel/socket/http/a;

    iget-object v0, v0, Lorg/jboss/netty/channel/socket/http/a;->c:Lorg/jboss/netty/channel/socket/SocketChannel;

    invoke-interface {v0, v2}, Lorg/jboss/netty/channel/socket/SocketChannel;->write(Ljava/lang/Object;)Lorg/jboss/netty/channel/ChannelFuture;

    iget-object v0, p0, Lorg/jboss/netty/channel/socket/http/c;->d:Lorg/jboss/netty/channel/socket/http/a;

    iput-boolean v6, v0, Lorg/jboss/netty/channel/socket/http/a;->b:Z

    iget-object v0, p0, Lorg/jboss/netty/channel/socket/http/c;->b:Lorg/jboss/netty/channel/ChannelFuture;

    invoke-interface {v0}, Lorg/jboss/netty/channel/ChannelFuture;->setSuccess()Z

    iget-object v0, p0, Lorg/jboss/netty/channel/socket/http/c;->c:Lorg/jboss/netty/channel/socket/SocketChannel;

    iget-object v1, p0, Lorg/jboss/netty/channel/socket/http/c;->a:Ljava/net/SocketAddress;

    invoke-static {v0, v1}, Lorg/jboss/netty/channel/Channels;->fireChannelConnected(Lorg/jboss/netty/channel/Channel;Ljava/net/SocketAddress;)V

    :goto_1
    return-void

    :cond_4
    invoke-virtual {v4}, Ljavax/net/ssl/SSLContext;->createSSLEngine()Ljavax/net/ssl/SSLEngine;

    move-result-object v0

    goto/16 :goto_0

    :cond_5
    new-instance v1, Lorg/jboss/netty/channel/socket/http/d;

    invoke-direct {v1, p0, v2}, Lorg/jboss/netty/channel/socket/http/d;-><init>(Lorg/jboss/netty/channel/socket/http/c;Lorg/jboss/netty/handler/codec/http/HttpRequest;)V

    invoke-interface {v0, v1}, Lorg/jboss/netty/channel/ChannelFuture;->addListener(Lorg/jboss/netty/channel/ChannelFutureListener;)V

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/http/c;->b:Lorg/jboss/netty/channel/ChannelFuture;

    invoke-interface {p1}, Lorg/jboss/netty/channel/ChannelFuture;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/jboss/netty/channel/ChannelFuture;->setFailure(Ljava/lang/Throwable;)Z

    iget-object v0, p0, Lorg/jboss/netty/channel/socket/http/c;->c:Lorg/jboss/netty/channel/socket/SocketChannel;

    invoke-interface {p1}, Lorg/jboss/netty/channel/ChannelFuture;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/jboss/netty/channel/Channels;->fireExceptionCaught(Lorg/jboss/netty/channel/Channel;Ljava/lang/Throwable;)V

    goto :goto_1
.end method
