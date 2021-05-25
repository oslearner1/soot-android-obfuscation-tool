.class abstract Lorg/jboss/netty/channel/socket/oio/o;
.super Lorg/jboss/netty/channel/socket/oio/a;

# interfaces
.implements Lorg/jboss/netty/channel/socket/SocketChannel;


# instance fields
.field private final e:Lorg/jboss/netty/channel/socket/SocketChannelConfig;

.field final g:Ljava/net/Socket;


# direct methods
.method constructor <init>(Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/channel/ChannelFactory;Lorg/jboss/netty/channel/ChannelPipeline;Lorg/jboss/netty/channel/ChannelSink;Ljava/net/Socket;)V
    .locals 3

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/jboss/netty/channel/socket/oio/a;-><init>(Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/channel/ChannelFactory;Lorg/jboss/netty/channel/ChannelPipeline;Lorg/jboss/netty/channel/ChannelSink;)V

    iput-object p5, p0, Lorg/jboss/netty/channel/socket/oio/o;->g:Ljava/net/Socket;

    const/16 v0, 0x3e8

    :try_start_0
    invoke-virtual {p5, v0}, Ljava/net/Socket;->setSoTimeout(I)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v0, Lorg/jboss/netty/channel/socket/DefaultSocketChannelConfig;

    invoke-direct {v0, p5}, Lorg/jboss/netty/channel/socket/DefaultSocketChannelConfig;-><init>(Ljava/net/Socket;)V

    iput-object v0, p0, Lorg/jboss/netty/channel/socket/oio/o;->e:Lorg/jboss/netty/channel/socket/SocketChannelConfig;

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lorg/jboss/netty/channel/ChannelException;

    const-string v2, "Failed to configure the OioSocketChannel socket timeout."

    invoke-direct {v1, v2, v0}, Lorg/jboss/netty/channel/ChannelException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method final a()Z
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/channel/socket/oio/o;->g:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isBound()Z

    move-result v0

    return v0
.end method

.method final b()Z
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/channel/socket/oio/o;->g:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isConnected()Z

    move-result v0

    return v0
.end method

.method final c()Z
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/channel/socket/oio/o;->g:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    return v0
.end method

.method final d()Ljava/net/InetSocketAddress;
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/channel/socket/oio/o;->g:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getLocalSocketAddress()Ljava/net/SocketAddress;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    return-object v0
.end method

.method final e()Ljava/net/InetSocketAddress;
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/channel/socket/oio/o;->g:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    return-object v0
.end method

.method final f()V
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/channel/socket/oio/o;->g:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    return-void
.end method

.method abstract g()Ljava/io/PushbackInputStream;
.end method

.method public bridge synthetic getConfig()Lorg/jboss/netty/channel/ChannelConfig;
    .locals 1

    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/oio/o;->getConfig()Lorg/jboss/netty/channel/socket/SocketChannelConfig;

    move-result-object v0

    return-object v0
.end method

.method public getConfig()Lorg/jboss/netty/channel/socket/SocketChannelConfig;
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/channel/socket/oio/o;->e:Lorg/jboss/netty/channel/socket/SocketChannelConfig;

    return-object v0
.end method

.method abstract h()Ljava/io/OutputStream;
.end method
