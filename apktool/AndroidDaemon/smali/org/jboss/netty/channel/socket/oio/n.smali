.class final Lorg/jboss/netty/channel/socket/oio/n;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lorg/jboss/netty/channel/socket/oio/k;

.field private synthetic b:Lorg/jboss/netty/channel/socket/oio/l;


# direct methods
.method constructor <init>(Lorg/jboss/netty/channel/socket/oio/l;Lorg/jboss/netty/channel/socket/oio/k;)V
    .locals 0

    iput-object p1, p0, Lorg/jboss/netty/channel/socket/oio/n;->b:Lorg/jboss/netty/channel/socket/oio/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/jboss/netty/channel/socket/oio/n;->a:Lorg/jboss/netty/channel/socket/oio/k;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lorg/jboss/netty/channel/socket/oio/n;->a:Lorg/jboss/netty/channel/socket/oio/k;

    iget-object v0, v0, Lorg/jboss/netty/channel/socket/oio/k;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :cond_0
    :goto_0
    :try_start_0
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/oio/n;->a:Lorg/jboss/netty/channel/socket/oio/k;

    invoke-virtual {v0}, Lorg/jboss/netty/channel/socket/oio/k;->isBound()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_2

    :try_start_1
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/oio/n;->a:Lorg/jboss/netty/channel/socket/oio/k;

    iget-object v0, v0, Lorg/jboss/netty/channel/socket/oio/k;->a:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;
    :try_end_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v5

    :try_start_2
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/oio/n;->a:Lorg/jboss/netty/channel/socket/oio/k;

    invoke-virtual {v0}, Lorg/jboss/netty/channel/socket/oio/k;->getConfig()Lorg/jboss/netty/channel/socket/ServerSocketChannelConfig;

    move-result-object v0

    invoke-interface {v0}, Lorg/jboss/netty/channel/socket/ServerSocketChannelConfig;->getPipelineFactory()Lorg/jboss/netty/channel/ChannelPipelineFactory;

    move-result-object v0

    invoke-interface {v0}, Lorg/jboss/netty/channel/ChannelPipelineFactory;->getPipeline()Lorg/jboss/netty/channel/ChannelPipeline;

    move-result-object v3

    new-instance v0, Lorg/jboss/netty/channel/socket/oio/c;

    iget-object v1, p0, Lorg/jboss/netty/channel/socket/oio/n;->a:Lorg/jboss/netty/channel/socket/oio/k;

    iget-object v2, p0, Lorg/jboss/netty/channel/socket/oio/n;->a:Lorg/jboss/netty/channel/socket/oio/k;

    invoke-virtual {v2}, Lorg/jboss/netty/channel/socket/oio/k;->getFactory()Lorg/jboss/netty/channel/ChannelFactory;

    move-result-object v2

    iget-object v4, p0, Lorg/jboss/netty/channel/socket/oio/n;->b:Lorg/jboss/netty/channel/socket/oio/l;

    invoke-direct/range {v0 .. v5}, Lorg/jboss/netty/channel/socket/oio/c;-><init>(Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/channel/ChannelFactory;Lorg/jboss/netty/channel/ChannelPipeline;Lorg/jboss/netty/channel/ChannelSink;Ljava/net/Socket;)V

    iget-object v1, p0, Lorg/jboss/netty/channel/socket/oio/n;->b:Lorg/jboss/netty/channel/socket/oio/l;

    iget-object v1, v1, Lorg/jboss/netty/channel/socket/oio/l;->b:Ljava/util/concurrent/Executor;

    new-instance v2, Lorg/jboss/netty/util/ThreadRenamingRunnable;

    new-instance v3, Lorg/jboss/netty/channel/socket/oio/p;

    invoke-direct {v3, v0}, Lorg/jboss/netty/channel/socket/oio/p;-><init>(Lorg/jboss/netty/channel/socket/oio/o;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "Old I/O server worker (parentId: "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lorg/jboss/netty/channel/socket/oio/n;->a:Lorg/jboss/netty/channel/socket/oio/k;

    invoke-virtual {v4}, Lorg/jboss/netty/channel/socket/oio/k;->getId()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ", "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lorg/jboss/netty/channel/socket/oio/n;->a:Lorg/jboss/netty/channel/socket/oio/k;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v4, 0x29

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Lorg/jboss/netty/util/ThreadRenamingRunnable;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-static {v1, v2}, Lorg/jboss/netty/util/internal/DeadLockProofWorker;->start(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_3
    sget-object v1, Lorg/jboss/netty/channel/socket/oio/l;->a:Lorg/jboss/netty/logging/InternalLogger;

    invoke-interface {v1}, Lorg/jboss/netty/logging/InternalLogger;->isWarnEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lorg/jboss/netty/channel/socket/oio/l;->a:Lorg/jboss/netty/logging/InternalLogger;

    const-string v2, "Failed to initialize an accepted socket."

    invoke-interface {v1, v2, v0}, Lorg/jboss/netty/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/net/SocketTimeoutException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_1
    :try_start_4
    invoke-virtual {v5}, Ljava/net/Socket;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :catch_1
    move-exception v0

    :try_start_5
    sget-object v1, Lorg/jboss/netty/channel/socket/oio/l;->a:Lorg/jboss/netty/logging/InternalLogger;

    invoke-interface {v1}, Lorg/jboss/netty/logging/InternalLogger;->isWarnEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lorg/jboss/netty/channel/socket/oio/l;->a:Lorg/jboss/netty/logging/InternalLogger;

    const-string v2, "Failed to close a partially accepted socket."

    invoke-interface {v1, v2, v0}, Lorg/jboss/netty/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catch Ljava/net/SocketTimeoutException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0

    :catch_2
    move-exception v0

    goto/16 :goto_0

    :catch_3
    move-exception v0

    :try_start_6
    iget-object v1, p0, Lorg/jboss/netty/channel/socket/oio/n;->a:Lorg/jboss/netty/channel/socket/oio/k;

    iget-object v1, v1, Lorg/jboss/netty/channel/socket/oio/k;->a:Ljava/net/ServerSocket;

    invoke-virtual {v1}, Ljava/net/ServerSocket;->isBound()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/jboss/netty/channel/socket/oio/n;->a:Lorg/jboss/netty/channel/socket/oio/k;

    iget-object v1, v1, Lorg/jboss/netty/channel/socket/oio/k;->a:Ljava/net/ServerSocket;

    invoke-virtual {v1}, Ljava/net/ServerSocket;->isClosed()Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/oio/n;->a:Lorg/jboss/netty/channel/socket/oio/k;

    iget-object v0, v0, Lorg/jboss/netty/channel/socket/oio/k;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :cond_3
    :try_start_7
    sget-object v1, Lorg/jboss/netty/channel/socket/oio/l;->a:Lorg/jboss/netty/logging/InternalLogger;

    invoke-interface {v1}, Lorg/jboss/netty/logging/InternalLogger;->isWarnEnabled()Z

    move-result v1

    if-eqz v1, :cond_4

    sget-object v1, Lorg/jboss/netty/channel/socket/oio/l;->a:Lorg/jboss/netty/logging/InternalLogger;

    const-string v2, "Failed to accept a connection."

    invoke-interface {v1, v2, v0}, Lorg/jboss/netty/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :cond_4
    const-wide/16 v0, 0x3e8

    :try_start_8
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_0

    :catch_4
    move-exception v0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/jboss/netty/channel/socket/oio/n;->a:Lorg/jboss/netty/channel/socket/oio/k;

    iget-object v1, v1, Lorg/jboss/netty/channel/socket/oio/k;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method
