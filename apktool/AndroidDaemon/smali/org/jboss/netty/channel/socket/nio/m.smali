.class final Lorg/jboss/netty/channel/socket/nio/m;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lorg/jboss/netty/channel/socket/nio/l;

.field private final b:Lorg/jboss/netty/channel/socket/nio/h;


# direct methods
.method constructor <init>(Lorg/jboss/netty/channel/socket/nio/l;Lorg/jboss/netty/channel/socket/nio/h;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/jboss/netty/channel/socket/nio/m;->a:Lorg/jboss/netty/channel/socket/nio/l;

    iput-object p2, p0, Lorg/jboss/netty/channel/socket/nio/m;->b:Lorg/jboss/netty/channel/socket/nio/h;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    :try_start_0
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/m;->b:Lorg/jboss/netty/channel/socket/nio/h;

    iget-object v0, v0, Lorg/jboss/netty/channel/socket/nio/h;->channel:Ljava/nio/channels/SelectableChannel;

    check-cast v0, Ljava/nio/channels/SocketChannel;

    iget-object v1, p0, Lorg/jboss/netty/channel/socket/nio/m;->a:Lorg/jboss/netty/channel/socket/nio/l;

    iget-object v1, v1, Lorg/jboss/netty/channel/socket/nio/l;->a:Ljava/nio/channels/Selector;

    const/16 v2, 0x8

    iget-object v3, p0, Lorg/jboss/netty/channel/socket/nio/m;->b:Lorg/jboss/netty/channel/socket/nio/h;

    invoke-virtual {v0, v1, v2, v3}, Ljava/nio/channels/SocketChannel;->register(Ljava/nio/channels/Selector;ILjava/lang/Object;)Ljava/nio/channels/SelectionKey;
    :try_end_0
    .catch Ljava/nio/channels/ClosedChannelException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/m;->b:Lorg/jboss/netty/channel/socket/nio/h;

    invoke-virtual {v0}, Lorg/jboss/netty/channel/socket/nio/h;->getConfig()Lorg/jboss/netty/channel/socket/nio/NioSocketChannelConfig;

    move-result-object v0

    invoke-interface {v0}, Lorg/jboss/netty/channel/socket/nio/NioSocketChannelConfig;->getConnectTimeoutMillis()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v1, p0, Lorg/jboss/netty/channel/socket/nio/m;->b:Lorg/jboss/netty/channel/socket/nio/h;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    int-to-long v4, v0

    const-wide/32 v6, 0xf4240

    mul-long/2addr v4, v6

    add-long/2addr v2, v4

    iput-wide v2, v1, Lorg/jboss/netty/channel/socket/nio/h;->c:J

    :cond_0
    return-void

    :catch_0
    move-exception v0

    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/m;->b:Lorg/jboss/netty/channel/socket/nio/h;

    iget-object v0, v0, Lorg/jboss/netty/channel/socket/nio/h;->worker:Lorg/jboss/netty/channel/socket/nio/d;

    iget-object v1, p0, Lorg/jboss/netty/channel/socket/nio/m;->b:Lorg/jboss/netty/channel/socket/nio/h;

    iget-object v2, p0, Lorg/jboss/netty/channel/socket/nio/m;->b:Lorg/jboss/netty/channel/socket/nio/h;

    invoke-static {v2}, Lorg/jboss/netty/channel/Channels;->succeededFuture(Lorg/jboss/netty/channel/Channel;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/jboss/netty/channel/socket/nio/d;->close(Lorg/jboss/netty/channel/socket/nio/a;Lorg/jboss/netty/channel/ChannelFuture;)V

    goto :goto_0
.end method
