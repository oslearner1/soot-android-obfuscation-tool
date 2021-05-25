.class final Lorg/jboss/netty/channel/socket/oio/p;
.super Lorg/jboss/netty/channel/socket/oio/b;


# static fields
.field private static final b:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "^.*(?:Socket.*closed).*$"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/jboss/netty/channel/socket/oio/p;->b:Ljava/util/regex/Pattern;

    return-void
.end method

.method constructor <init>(Lorg/jboss/netty/channel/socket/oio/o;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/jboss/netty/channel/socket/oio/b;-><init>(Lorg/jboss/netty/channel/socket/oio/a;)V

    return-void
.end method

.method static a(Lorg/jboss/netty/channel/socket/oio/o;Lorg/jboss/netty/channel/ChannelFuture;Ljava/lang/Object;)V
    .locals 9

    invoke-static {p0}, Lorg/jboss/netty/channel/socket/oio/p;->a(Lorg/jboss/netty/channel/socket/oio/a;)Z

    move-result v3

    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/oio/o;->h()Ljava/io/OutputStream;

    move-result-object v4

    if-nez v4, :cond_1

    new-instance v1, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v1}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    invoke-interface {p1, v1}, Lorg/jboss/netty/channel/ChannelFuture;->setFailure(Ljava/lang/Throwable;)Z

    if-eqz v3, :cond_0

    invoke-static {p0, v1}, Lorg/jboss/netty/channel/Channels;->fireExceptionCaught(Lorg/jboss/netty/channel/Channel;Ljava/lang/Throwable;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {p0, v1}, Lorg/jboss/netty/channel/Channels;->fireExceptionCaughtLater(Lorg/jboss/netty/channel/Channel;Ljava/lang/Throwable;)Lorg/jboss/netty/channel/ChannelFuture;

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :try_start_0
    instance-of v1, p2, Lorg/jboss/netty/channel/FileRegion;

    if-eqz v1, :cond_7

    check-cast p2, Lorg/jboss/netty/channel/FileRegion;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    monitor-enter v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-static {v4}, Ljava/nio/channels/Channels;->newChannel(Ljava/io/OutputStream;)Ljava/nio/channels/WritableByteChannel;

    move-result-object v1

    :cond_2
    int-to-long v5, v2

    invoke-interface {p2, v1, v5, v6}, Lorg/jboss/netty/channel/FileRegion;->transferTo(Ljava/nio/channels/WritableByteChannel;J)J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v7, v5, v7

    if-lez v7, :cond_3

    int-to-long v7, v2

    add-long/2addr v5, v7

    long-to-int v2, v5

    int-to-long v5, v2

    invoke-interface {p2}, Lorg/jboss/netty/channel/FileRegion;->getCount()J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-ltz v5, :cond_2

    :cond_3
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    instance-of v1, p2, Lorg/jboss/netty/channel/DefaultFileRegion;

    if-eqz v1, :cond_4

    move-object v0, p2

    check-cast v0, Lorg/jboss/netty/channel/DefaultFileRegion;

    move-object v1, v0

    invoke-virtual {v1}, Lorg/jboss/netty/channel/DefaultFileRegion;->releaseAfterTransfer()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p2}, Lorg/jboss/netty/channel/FileRegion;->releaseExternalResources()V

    :cond_4
    move v1, v2

    :goto_1
    invoke-interface {p1}, Lorg/jboss/netty/channel/ChannelFuture;->setSuccess()Z

    if-eqz v3, :cond_8

    int-to-long v1, v1

    invoke-static {p0, v1, v2}, Lorg/jboss/netty/channel/Channels;->fireWriteComplete(Lorg/jboss/netty/channel/Channel;J)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    instance-of v2, v1, Ljava/net/SocketException;

    if-eqz v2, :cond_5

    sget-object v2, Lorg/jboss/netty/channel/socket/oio/p;->b:Ljava/util/regex/Pattern;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_5

    new-instance v1, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v1}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    :cond_5
    invoke-interface {p1, v1}, Lorg/jboss/netty/channel/ChannelFuture;->setFailure(Ljava/lang/Throwable;)Z

    if-eqz v3, :cond_9

    invoke-static {p0, v1}, Lorg/jboss/netty/channel/Channels;->fireExceptionCaught(Lorg/jboss/netty/channel/Channel;Ljava/lang/Throwable;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    :try_start_4
    monitor-exit v4

    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v1

    move-object v2, v1

    :try_start_5
    instance-of v1, p2, Lorg/jboss/netty/channel/DefaultFileRegion;

    if-eqz v1, :cond_6

    move-object v0, p2

    check-cast v0, Lorg/jboss/netty/channel/DefaultFileRegion;

    move-object v1, v0

    invoke-virtual {v1}, Lorg/jboss/netty/channel/DefaultFileRegion;->releaseAfterTransfer()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p2}, Lorg/jboss/netty/channel/FileRegion;->releaseExternalResources()V

    :cond_6
    throw v2

    :cond_7
    check-cast p2, Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {p2}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v1

    monitor-enter v4
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0

    :try_start_6
    invoke-interface {p2}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v2

    invoke-interface {p2, v2, v4, v1}, Lorg/jboss/netty/buffer/ChannelBuffer;->getBytes(ILjava/io/OutputStream;I)V

    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v1

    :try_start_7
    monitor-exit v4

    throw v1

    :cond_8
    int-to-long v1, v1

    invoke-static {p0, v1, v2}, Lorg/jboss/netty/channel/Channels;->fireWriteCompleteLater(Lorg/jboss/netty/channel/Channel;J)Lorg/jboss/netty/channel/ChannelFuture;
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0

    goto/16 :goto_0

    :cond_9
    invoke-static {p0, v1}, Lorg/jboss/netty/channel/Channels;->fireExceptionCaughtLater(Lorg/jboss/netty/channel/Channel;Ljava/lang/Throwable;)Lorg/jboss/netty/channel/ChannelFuture;

    goto/16 :goto_0
.end method


# virtual methods
.method final a()Z
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lorg/jboss/netty/channel/socket/oio/p;->a:Lorg/jboss/netty/channel/socket/oio/a;

    check-cast v0, Lorg/jboss/netty/channel/socket/oio/o;

    invoke-virtual {v0}, Lorg/jboss/netty/channel/socket/oio/o;->g()Ljava/io/PushbackInputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/PushbackInputStream;->available()I

    move-result v3

    if-lez v3, :cond_0

    new-array v3, v3, [B

    invoke-virtual {v0, v3}, Ljava/io/PushbackInputStream;->read([B)I

    move-result v4

    iget-object v5, p0, Lorg/jboss/netty/channel/socket/oio/p;->a:Lorg/jboss/netty/channel/socket/oio/a;

    iget-object v0, p0, Lorg/jboss/netty/channel/socket/oio/p;->a:Lorg/jboss/netty/channel/socket/oio/a;

    check-cast v0, Lorg/jboss/netty/channel/socket/oio/o;

    invoke-virtual {v0}, Lorg/jboss/netty/channel/socket/oio/o;->getConfig()Lorg/jboss/netty/channel/socket/SocketChannelConfig;

    move-result-object v0

    invoke-interface {v0}, Lorg/jboss/netty/channel/socket/SocketChannelConfig;->getBufferFactory()Lorg/jboss/netty/buffer/ChannelBufferFactory;

    move-result-object v0

    invoke-interface {v0, v3, v2, v4}, Lorg/jboss/netty/buffer/ChannelBufferFactory;->getBuffer([BII)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    invoke-static {v5, v0}, Lorg/jboss/netty/channel/Channels;->fireMessageReceived(Lorg/jboss/netty/channel/Channel;Ljava/lang/Object;)V

    move v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Ljava/io/PushbackInputStream;->read()I

    move-result v3

    if-gez v3, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v3}, Ljava/io/PushbackInputStream;->unread(I)V

    move v0, v1

    goto :goto_0
.end method

.method public final run()V
    .locals 2

    iget-object v0, p0, Lorg/jboss/netty/channel/socket/oio/p;->a:Lorg/jboss/netty/channel/socket/oio/a;

    instance-of v0, v0, Lorg/jboss/netty/channel/socket/oio/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/jboss/netty/channel/socket/oio/p;->a:Lorg/jboss/netty/channel/socket/oio/a;

    check-cast v0, Lorg/jboss/netty/channel/socket/oio/o;

    invoke-virtual {v0}, Lorg/jboss/netty/channel/socket/oio/o;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/jboss/netty/channel/socket/oio/p;->a:Lorg/jboss/netty/channel/socket/oio/a;

    iget-object v0, p0, Lorg/jboss/netty/channel/socket/oio/p;->a:Lorg/jboss/netty/channel/socket/oio/a;

    check-cast v0, Lorg/jboss/netty/channel/socket/oio/o;

    invoke-virtual {v0}, Lorg/jboss/netty/channel/socket/oio/o;->getRemoteAddress()Ljava/net/InetSocketAddress;

    move-result-object v0

    invoke-static {v1, v0}, Lorg/jboss/netty/channel/Channels;->fireChannelConnected(Lorg/jboss/netty/channel/Channel;Ljava/net/SocketAddress;)V

    :cond_0
    invoke-super {p0}, Lorg/jboss/netty/channel/socket/oio/b;->run()V

    return-void
.end method
