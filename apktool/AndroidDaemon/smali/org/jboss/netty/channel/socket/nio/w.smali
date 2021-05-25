.class final Lorg/jboss/netty/channel/socket/nio/w;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Ljava/nio/channels/Selector;

.field private final b:Lorg/jboss/netty/channel/socket/nio/t;

.field private synthetic c:Lorg/jboss/netty/channel/socket/nio/u;


# direct methods
.method constructor <init>(Lorg/jboss/netty/channel/socket/nio/u;Lorg/jboss/netty/channel/socket/nio/t;)V
    .locals 3

    iput-object p1, p0, Lorg/jboss/netty/channel/socket/nio/w;->c:Lorg/jboss/netty/channel/socket/nio/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/jboss/netty/channel/socket/nio/w;->b:Lorg/jboss/netty/channel/socket/nio/t;

    invoke-static {}, Ljava/nio/channels/Selector;->open()Ljava/nio/channels/Selector;

    move-result-object v0

    iput-object v0, p0, Lorg/jboss/netty/channel/socket/nio/w;->a:Ljava/nio/channels/Selector;

    :try_start_0
    iget-object v0, p2, Lorg/jboss/netty/channel/socket/nio/t;->a:Ljava/nio/channels/ServerSocketChannel;

    iget-object v1, p0, Lorg/jboss/netty/channel/socket/nio/w;->a:Ljava/nio/channels/Selector;

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2}, Ljava/nio/channels/ServerSocketChannel;->register(Ljava/nio/channels/Selector;I)Ljava/nio/channels/SelectionKey;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/w;->a:Ljava/nio/channels/Selector;

    iput-object v0, p2, Lorg/jboss/netty/channel/socket/nio/t;->c:Ljava/nio/channels/Selector;

    return-void

    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lorg/jboss/netty/channel/socket/nio/w;->a()V

    throw v0
.end method

.method private a()V
    .locals 3

    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/w;->b:Lorg/jboss/netty/channel/socket/nio/t;

    const/4 v1, 0x0

    iput-object v1, v0, Lorg/jboss/netty/channel/socket/nio/t;->c:Ljava/nio/channels/Selector;

    :try_start_0
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/w;->a:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lorg/jboss/netty/channel/socket/nio/u;->a:Lorg/jboss/netty/logging/InternalLogger;

    invoke-interface {v1}, Lorg/jboss/netty/logging/InternalLogger;->isWarnEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lorg/jboss/netty/channel/socket/nio/u;->a:Lorg/jboss/netty/logging/InternalLogger;

    const-string v2, "Failed to close a selector."

    invoke-interface {v1, v2, v0}, Lorg/jboss/netty/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public final run()V
    .locals 8

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v7

    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/w;->b:Lorg/jboss/netty/channel/socket/nio/t;

    iget-object v0, v0, Lorg/jboss/netty/channel/socket/nio/t;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :cond_0
    :goto_0
    :try_start_0
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/w;->a:Ljava/nio/channels/Selector;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Ljava/nio/channels/Selector;->select(J)I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/w;->a:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->selectedKeys()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    :cond_1
    :goto_1
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/w;->b:Lorg/jboss/netty/channel/socket/nio/t;

    iget-object v0, v0, Lorg/jboss/netty/channel/socket/nio/t;->a:Ljava/nio/channels/ServerSocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/ServerSocketChannel;->accept()Ljava/nio/channels/SocketChannel;
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/nio/channels/ClosedSelectorException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/nio/channels/ClosedChannelException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    if-eqz v5, :cond_0

    :try_start_1
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/w;->b:Lorg/jboss/netty/channel/socket/nio/t;

    invoke-virtual {v0}, Lorg/jboss/netty/channel/socket/nio/t;->getConfig()Lorg/jboss/netty/channel/socket/ServerSocketChannelConfig;

    move-result-object v0

    invoke-interface {v0}, Lorg/jboss/netty/channel/socket/ServerSocketChannelConfig;->getPipelineFactory()Lorg/jboss/netty/channel/ChannelPipelineFactory;

    move-result-object v0

    invoke-interface {v0}, Lorg/jboss/netty/channel/ChannelPipelineFactory;->getPipeline()Lorg/jboss/netty/channel/ChannelPipeline;

    move-result-object v2

    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/w;->c:Lorg/jboss/netty/channel/socket/nio/u;

    invoke-virtual {v0}, Lorg/jboss/netty/channel/socket/nio/u;->a()Lorg/jboss/netty/channel/socket/nio/NioWorker;

    move-result-object v6

    new-instance v0, Lorg/jboss/netty/channel/socket/nio/g;

    iget-object v1, p0, Lorg/jboss/netty/channel/socket/nio/w;->b:Lorg/jboss/netty/channel/socket/nio/t;

    invoke-virtual {v1}, Lorg/jboss/netty/channel/socket/nio/t;->getFactory()Lorg/jboss/netty/channel/ChannelFactory;

    move-result-object v1

    iget-object v3, p0, Lorg/jboss/netty/channel/socket/nio/w;->b:Lorg/jboss/netty/channel/socket/nio/t;

    iget-object v4, p0, Lorg/jboss/netty/channel/socket/nio/w;->c:Lorg/jboss/netty/channel/socket/nio/u;

    invoke-direct/range {v0 .. v7}, Lorg/jboss/netty/channel/socket/nio/g;-><init>(Lorg/jboss/netty/channel/ChannelFactory;Lorg/jboss/netty/channel/ChannelPipeline;Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/channel/ChannelSink;Ljava/nio/channels/SocketChannel;Lorg/jboss/netty/channel/socket/nio/NioWorker;Ljava/lang/Thread;)V

    const/4 v1, 0x0

    invoke-virtual {v6, v0, v1}, Lorg/jboss/netty/channel/socket/nio/NioWorker;->register(Lorg/jboss/netty/channel/socket/nio/a;Lorg/jboss/netty/channel/ChannelFuture;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/nio/channels/ClosedSelectorException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/nio/channels/ClosedChannelException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_2
    sget-object v1, Lorg/jboss/netty/channel/socket/nio/u;->a:Lorg/jboss/netty/logging/InternalLogger;

    invoke-interface {v1}, Lorg/jboss/netty/logging/InternalLogger;->isWarnEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lorg/jboss/netty/channel/socket/nio/u;->a:Lorg/jboss/netty/logging/InternalLogger;

    const-string v2, "Failed to initialize an accepted socket."

    invoke-interface {v1, v2, v0}, Lorg/jboss/netty/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/nio/channels/ClosedSelectorException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/nio/channels/ClosedChannelException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_2
    :try_start_3
    invoke-virtual {v5}, Ljava/nio/channels/SocketChannel;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/nio/channels/ClosedSelectorException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/nio/channels/ClosedChannelException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catch_1
    move-exception v0

    :try_start_4
    sget-object v1, Lorg/jboss/netty/channel/socket/nio/u;->a:Lorg/jboss/netty/logging/InternalLogger;

    invoke-interface {v1}, Lorg/jboss/netty/logging/InternalLogger;->isWarnEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lorg/jboss/netty/channel/socket/nio/u;->a:Lorg/jboss/netty/logging/InternalLogger;

    const-string v2, "Failed to close a partially accepted socket."

    invoke-interface {v1, v2, v0}, Lorg/jboss/netty/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catch Ljava/net/SocketTimeoutException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Ljava/nio/channels/ClosedSelectorException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljava/nio/channels/ClosedChannelException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_0

    :catch_3
    move-exception v0

    :try_start_5
    sget-object v1, Lorg/jboss/netty/channel/socket/nio/u;->a:Lorg/jboss/netty/logging/InternalLogger;

    invoke-interface {v1}, Lorg/jboss/netty/logging/InternalLogger;->isWarnEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Lorg/jboss/netty/channel/socket/nio/u;->a:Lorg/jboss/netty/logging/InternalLogger;

    const-string v2, "Failed to accept a connection."

    invoke-interface {v1, v2, v0}, Lorg/jboss/netty/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_3
    const-wide/16 v0, 0x3e8

    :try_start_6
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_0

    :catch_4
    move-exception v0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/jboss/netty/channel/socket/nio/w;->b:Lorg/jboss/netty/channel/socket/nio/t;

    iget-object v1, v1, Lorg/jboss/netty/channel/socket/nio/t;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    invoke-direct {p0}, Lorg/jboss/netty/channel/socket/nio/w;->a()V

    throw v0

    :catch_5
    move-exception v0

    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/w;->b:Lorg/jboss/netty/channel/socket/nio/t;

    iget-object v0, v0, Lorg/jboss/netty/channel/socket/nio/t;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    invoke-direct {p0}, Lorg/jboss/netty/channel/socket/nio/w;->a()V

    return-void

    :catch_6
    move-exception v0

    goto/16 :goto_0

    :catch_7
    move-exception v0

    goto/16 :goto_0
.end method
