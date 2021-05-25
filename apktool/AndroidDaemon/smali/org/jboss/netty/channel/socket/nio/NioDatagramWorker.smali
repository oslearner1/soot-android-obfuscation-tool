.class public Lorg/jboss/netty/channel/socket/nio/NioDatagramWorker;
.super Lorg/jboss/netty/channel/socket/nio/d;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final bufferAllocator$23ebd471:Lorg/jboss/netty/channel/socket/nio/y;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/jboss/netty/channel/socket/nio/NioDatagramWorker;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/jboss/netty/channel/socket/nio/NioDatagramWorker;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 1

    invoke-direct {p0, p1}, Lorg/jboss/netty/channel/socket/nio/d;-><init>(Ljava/util/concurrent/Executor;)V

    new-instance v0, Lorg/jboss/netty/channel/socket/nio/y;

    invoke-direct {v0}, Lorg/jboss/netty/channel/socket/nio/y;-><init>()V

    iput-object v0, p0, Lorg/jboss/netty/channel/socket/nio/NioDatagramWorker;->bufferAllocator$23ebd471:Lorg/jboss/netty/channel/socket/nio/y;

    return-void
.end method

.method constructor <init>(Ljava/util/concurrent/Executor;Z)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lorg/jboss/netty/channel/socket/nio/d;-><init>(Ljava/util/concurrent/Executor;Z)V

    new-instance v0, Lorg/jboss/netty/channel/socket/nio/y;

    invoke-direct {v0}, Lorg/jboss/netty/channel/socket/nio/y;-><init>()V

    iput-object v0, p0, Lorg/jboss/netty/channel/socket/nio/NioDatagramWorker;->bufferAllocator$23ebd471:Lorg/jboss/netty/channel/socket/nio/y;

    return-void
.end method

.method static disconnect(Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;Lorg/jboss/netty/channel/ChannelFuture;)V
    .locals 3

    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;->isConnected()Z

    move-result v0

    invoke-static {p0}, Lorg/jboss/netty/channel/socket/nio/NioDatagramWorker;->isIoThread(Lorg/jboss/netty/channel/socket/nio/a;)Z

    move-result v1

    :try_start_0
    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;->getDatagramChannel()Ljava/nio/channels/DatagramChannel;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/channels/DatagramChannel;->disconnect()Ljava/nio/channels/DatagramChannel;

    invoke-interface {p1}, Lorg/jboss/netty/channel/ChannelFuture;->setSuccess()Z

    if-eqz v0, :cond_0

    if-eqz v1, :cond_1

    invoke-static {p0}, Lorg/jboss/netty/channel/Channels;->fireChannelDisconnected(Lorg/jboss/netty/channel/Channel;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p0}, Lorg/jboss/netty/channel/Channels;->fireChannelDisconnectedLater(Lorg/jboss/netty/channel/Channel;)Lorg/jboss/netty/channel/ChannelFuture;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-interface {p1, v0}, Lorg/jboss/netty/channel/ChannelFuture;->setFailure(Ljava/lang/Throwable;)Z

    if-eqz v1, :cond_2

    invoke-static {p0, v0}, Lorg/jboss/netty/channel/Channels;->fireExceptionCaught(Lorg/jboss/netty/channel/Channel;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_2
    invoke-static {p0, v0}, Lorg/jboss/netty/channel/Channels;->fireExceptionCaughtLater(Lorg/jboss/netty/channel/Channel;Ljava/lang/Throwable;)Lorg/jboss/netty/channel/ChannelFuture;

    goto :goto_0
.end method


# virtual methods
.method protected createRegisterTask(Lorg/jboss/netty/channel/socket/nio/a;Lorg/jboss/netty/channel/ChannelFuture;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lorg/jboss/netty/channel/socket/nio/q;

    check-cast p1, Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;

    invoke-direct {v0, p0, p1, p2}, Lorg/jboss/netty/channel/socket/nio/q;-><init>(Lorg/jboss/netty/channel/socket/nio/NioDatagramWorker;Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;Lorg/jboss/netty/channel/ChannelFuture;)V

    return-object v0
.end method

.method public bridge synthetic executeInIoThread(Ljava/lang/Runnable;)V
    .locals 0

    invoke-super {p0, p1}, Lorg/jboss/netty/channel/socket/nio/d;->executeInIoThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public bridge synthetic executeInIoThread(Ljava/lang/Runnable;Z)V
    .locals 0

    invoke-super {p0, p1, p2}, Lorg/jboss/netty/channel/socket/nio/d;->executeInIoThread(Ljava/lang/Runnable;Z)V

    return-void
.end method

.method protected read(Ljava/nio/channels/SelectionKey;)Z
    .locals 9

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->attachment()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;

    invoke-virtual {v0}, Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;->getConfig()Lorg/jboss/netty/channel/socket/nio/NioDatagramChannelConfig;

    move-result-object v1

    invoke-interface {v1}, Lorg/jboss/netty/channel/socket/nio/NioDatagramChannelConfig;->getReceiveBufferSizePredictor()Lorg/jboss/netty/channel/ReceiveBufferSizePredictor;

    move-result-object v5

    invoke-virtual {v0}, Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;->getConfig()Lorg/jboss/netty/channel/socket/nio/NioDatagramChannelConfig;

    move-result-object v1

    invoke-interface {v1}, Lorg/jboss/netty/channel/socket/nio/NioDatagramChannelConfig;->getBufferFactory()Lorg/jboss/netty/buffer/ChannelBufferFactory;

    move-result-object v6

    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object v1

    check-cast v1, Ljava/nio/channels/DatagramChannel;

    invoke-interface {v5}, Lorg/jboss/netty/channel/ReceiveBufferSizePredictor;->nextReceiveBufferSize()I

    move-result v4

    iget-object v7, p0, Lorg/jboss/netty/channel/socket/nio/NioDatagramWorker;->bufferAllocator$23ebd471:Lorg/jboss/netty/channel/socket/nio/y;

    invoke-virtual {v7, v4}, Lorg/jboss/netty/channel/socket/nio/y;->a(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-interface {v6}, Lorg/jboss/netty/buffer/ChannelBufferFactory;->getDefaultOrder()Ljava/nio/ByteOrder;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v7

    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v1, v7}, Ljava/nio/channels/DatagramChannel;->receive(Ljava/nio/ByteBuffer;)Ljava/net/SocketAddress;
    :try_end_0
    .catch Ljava/nio/channels/ClosedChannelException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    move v4, v2

    :goto_0
    if-eqz v1, :cond_0

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v8

    if-lez v8, :cond_0

    invoke-interface {v5, v8}, Lorg/jboss/netty/channel/ReceiveBufferSizePredictor;->previousReceiveBufferSize(I)V

    invoke-interface {v6, v8}, Lorg/jboss/netty/buffer/ChannelBufferFactory;->getBuffer(I)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v6

    invoke-interface {v6, v2, v7}, Lorg/jboss/netty/buffer/ChannelBuffer;->setBytes(ILjava/nio/ByteBuffer;)V

    invoke-interface {v6, v8}, Lorg/jboss/netty/buffer/ChannelBuffer;->writerIndex(I)V

    invoke-interface {v5, v8}, Lorg/jboss/netty/channel/ReceiveBufferSizePredictor;->previousReceiveBufferSize(I)V

    invoke-static {v0, v6, v1}, Lorg/jboss/netty/channel/Channels;->fireMessageReceived(Lorg/jboss/netty/channel/Channel;Ljava/lang/Object;Ljava/net/SocketAddress;)V

    :cond_0
    if-eqz v4, :cond_1

    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->cancel()V

    invoke-static {v0}, Lorg/jboss/netty/channel/Channels;->succeededFuture(Lorg/jboss/netty/channel/Channel;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/jboss/netty/channel/socket/nio/NioDatagramWorker;->close(Lorg/jboss/netty/channel/socket/nio/a;Lorg/jboss/netty/channel/ChannelFuture;)V

    move v0, v2

    :goto_1
    return v0

    :catch_0
    move-exception v1

    move-object v1, v4

    move v4, v3

    goto :goto_0

    :catch_1
    move-exception v1

    invoke-static {v0, v1}, Lorg/jboss/netty/channel/Channels;->fireExceptionCaught(Lorg/jboss/netty/channel/Channel;Ljava/lang/Throwable;)V

    move-object v1, v4

    move v4, v3

    goto :goto_0

    :cond_1
    move v0, v3

    goto :goto_1
.end method

.method public bridge synthetic run()V
    .locals 0

    invoke-super {p0}, Lorg/jboss/netty/channel/socket/nio/d;->run()V

    return-void
.end method

.method protected scheduleWriteIfNecessary(Lorg/jboss/netty/channel/socket/nio/a;)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Lorg/jboss/netty/channel/socket/nio/NioDatagramWorker;->thread:Ljava/lang/Thread;

    if-eqz v2, :cond_0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    if-eq v3, v2, :cond_3

    :cond_0
    iget-object v2, p1, Lorg/jboss/netty/channel/socket/nio/a;->writeTaskInTaskQueue:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/jboss/netty/channel/socket/nio/NioDatagramWorker;->writeTaskQueue:Ljava/util/Queue;

    iget-object v3, p1, Lorg/jboss/netty/channel/socket/nio/a;->writeTask:Ljava/lang/Runnable;

    invoke-interface {v2, v3}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    move-result v2

    sget-boolean v3, Lorg/jboss/netty/channel/socket/nio/NioDatagramWorker;->$assertionsDisabled:Z

    if-nez v3, :cond_1

    if-nez v2, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    iget-object v2, p0, Lorg/jboss/netty/channel/socket/nio/NioDatagramWorker;->selector:Ljava/nio/channels/Selector;

    if-eqz v2, :cond_2

    iget-object v3, p0, Lorg/jboss/netty/channel/socket/nio/NioDatagramWorker;->wakenUp:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3, v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v2}, Ljava/nio/channels/Selector;->wakeup()Ljava/nio/channels/Selector;

    :cond_2
    move v0, v1

    :cond_3
    return v0
.end method

.method protected write0(Lorg/jboss/netty/channel/socket/nio/a;)V
    .locals 20

    const/4 v3, 0x0

    const/4 v8, 0x0

    const-wide/16 v4, 0x0

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/jboss/netty/channel/socket/nio/NioDatagramWorker;->sendBufferPool:Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool;

    move-object/from16 v1, p1

    check-cast v1, Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;

    invoke-virtual {v1}, Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;->getDatagramChannel()Ljava/nio/channels/DatagramChannel;

    move-result-object v12

    move-object/from16 v0, p1

    iget-object v13, v0, Lorg/jboss/netty/channel/socket/nio/a;->writeBufferQueue:Ljava/util/Queue;

    invoke-virtual/range {p1 .. p1}, Lorg/jboss/netty/channel/socket/nio/a;->getConfig()Lorg/jboss/netty/channel/socket/nio/NioChannelConfig;

    move-result-object v1

    invoke-interface {v1}, Lorg/jboss/netty/channel/socket/nio/NioChannelConfig;->getWriteSpinCount()I

    move-result v10

    move-object/from16 v0, p1

    iget-object v14, v0, Lorg/jboss/netty/channel/socket/nio/a;->writeLock:Ljava/lang/Object;

    monitor-enter v14

    const/4 v1, 0x1

    :try_start_0
    move-object/from16 v0, p1

    iput-boolean v1, v0, Lorg/jboss/netty/channel/socket/nio/a;->inWriteNowLoop:Z

    :goto_0
    move-object/from16 v0, p1

    iget-object v7, v0, Lorg/jboss/netty/channel/socket/nio/a;->currentWriteEvent:Lorg/jboss/netty/channel/MessageEvent;

    if-nez v7, :cond_3

    invoke-interface {v13}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jboss/netty/channel/MessageEvent;

    move-object/from16 v0, p1

    iput-object v1, v0, Lorg/jboss/netty/channel/socket/nio/a;->currentWriteEvent:Lorg/jboss/netty/channel/MessageEvent;

    if-nez v1, :cond_1

    const/4 v1, 0x1

    const/4 v2, 0x0

    move-object/from16 v0, p1

    iput-boolean v2, v0, Lorg/jboss/netty/channel/socket/nio/a;->writeSuspended:Z

    :goto_1
    const/4 v2, 0x0

    move-object/from16 v0, p1

    iput-boolean v2, v0, Lorg/jboss/netty/channel/socket/nio/a;->inWriteNowLoop:Z

    if-eqz v3, :cond_9

    invoke-virtual/range {p0 .. p1}, Lorg/jboss/netty/channel/socket/nio/NioDatagramWorker;->setOpWrite(Lorg/jboss/netty/channel/socket/nio/a;)V

    :cond_0
    :goto_2
    monitor-exit v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object/from16 v0, p1

    invoke-static {v0, v4, v5}, Lorg/jboss/netty/channel/Channels;->fireWriteComplete(Lorg/jboss/netty/channel/Channel;J)V

    return-void

    :cond_1
    :try_start_1
    invoke-interface {v1}, Lorg/jboss/netty/channel/MessageEvent;->getMessage()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v11, v2}, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool;->a(Ljava/lang/Object;)Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$SendBuffer;

    move-result-object v6

    move-object/from16 v0, p1

    iput-object v6, v0, Lorg/jboss/netty/channel/socket/nio/a;->currentWriteBuffer:Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$SendBuffer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v7, v1

    :goto_3
    const-wide/16 v1, 0x0

    :try_start_2
    invoke-interface {v7}, Lorg/jboss/netty/channel/MessageEvent;->getRemoteAddress()Ljava/net/SocketAddress;

    move-result-object v15

    if-nez v15, :cond_6

    move v9, v10

    :goto_4
    if-lez v9, :cond_5

    invoke-interface {v6, v12}, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$SendBuffer;->transferTo(Ljava/nio/channels/WritableByteChannel;)J
    :try_end_2
    .catch Ljava/nio/channels/AsynchronousCloseException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-wide v1

    const-wide/16 v15, 0x0

    cmp-long v15, v1, v15

    if-eqz v15, :cond_4

    add-long/2addr v4, v1

    move-wide/from16 v18, v1

    move-wide v1, v4

    move-wide/from16 v4, v18

    :goto_5
    const-wide/16 v15, 0x0

    cmp-long v4, v4, v15

    if-gtz v4, :cond_2

    :try_start_3
    invoke-interface {v6}, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$SendBuffer;->finished()Z

    move-result v4

    if-eqz v4, :cond_8

    :cond_2
    invoke-interface {v6}, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$SendBuffer;->release()V

    invoke-interface {v7}, Lorg/jboss/netty/channel/MessageEvent;->getFuture()Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v4

    const/4 v5, 0x0

    move-object/from16 v0, p1

    iput-object v5, v0, Lorg/jboss/netty/channel/socket/nio/a;->currentWriteEvent:Lorg/jboss/netty/channel/MessageEvent;

    const/4 v5, 0x0

    move-object/from16 v0, p1

    iput-object v5, v0, Lorg/jboss/netty/channel/socket/nio/a;->currentWriteBuffer:Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$SendBuffer;
    :try_end_3
    .catch Ljava/nio/channels/AsynchronousCloseException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v6, 0x0

    const/4 v5, 0x0

    :try_start_4
    invoke-interface {v4}, Lorg/jboss/netty/channel/ChannelFuture;->setSuccess()Z
    :try_end_4
    .catch Ljava/nio/channels/AsynchronousCloseException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_6
    move-wide v4, v1

    goto :goto_0

    :cond_3
    :try_start_5
    move-object/from16 v0, p1

    iget-object v6, v0, Lorg/jboss/netty/channel/socket/nio/a;->currentWriteBuffer:Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$SendBuffer;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_3

    :cond_4
    :try_start_6
    invoke-interface {v6}, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$SendBuffer;->finished()Z

    move-result v15

    if-nez v15, :cond_5

    add-int/lit8 v9, v9, -0x1

    goto :goto_4

    :cond_5
    move-wide/from16 v18, v1

    move-wide v1, v4

    move-wide/from16 v4, v18

    goto :goto_5

    :cond_6
    move v9, v10

    :goto_7
    if-lez v9, :cond_a

    invoke-interface {v6, v12, v15}, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$SendBuffer;->transferTo(Ljava/nio/channels/DatagramChannel;Ljava/net/SocketAddress;)J

    move-result-wide v1

    const-wide/16 v16, 0x0

    cmp-long v16, v1, v16

    if-eqz v16, :cond_7

    add-long/2addr v4, v1

    move-wide/from16 v18, v1

    move-wide v1, v4

    move-wide/from16 v4, v18

    goto :goto_5

    :cond_7
    invoke-interface {v6}, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$SendBuffer;->finished()Z
    :try_end_6
    .catch Ljava/nio/channels/AsynchronousCloseException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result v16

    if-nez v16, :cond_a

    add-int/lit8 v9, v9, -0x1

    goto :goto_7

    :cond_8
    const/4 v3, 0x1

    const/4 v4, 0x1

    :try_start_7
    move-object/from16 v0, p1

    iput-boolean v4, v0, Lorg/jboss/netty/channel/socket/nio/a;->writeSuspended:Z
    :try_end_7
    .catch Ljava/nio/channels/AsynchronousCloseException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-wide v4, v1

    move v1, v8

    goto/16 :goto_1

    :catch_0
    move-exception v1

    move-wide v1, v4

    :goto_8
    move-wide v4, v1

    goto/16 :goto_0

    :catch_1
    move-exception v1

    move-object/from16 v18, v1

    move-wide v1, v4

    move-object v5, v6

    move-object/from16 v4, v18

    move-object v6, v7

    :goto_9
    :try_start_8
    invoke-interface {v5}, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$SendBuffer;->release()V

    invoke-interface {v6}, Lorg/jboss/netty/channel/MessageEvent;->getFuture()Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v5

    const/4 v6, 0x0

    move-object/from16 v0, p1

    iput-object v6, v0, Lorg/jboss/netty/channel/socket/nio/a;->currentWriteEvent:Lorg/jboss/netty/channel/MessageEvent;

    const/4 v6, 0x0

    move-object/from16 v0, p1

    iput-object v6, v0, Lorg/jboss/netty/channel/socket/nio/a;->currentWriteBuffer:Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$SendBuffer;

    invoke-interface {v5, v4}, Lorg/jboss/netty/channel/ChannelFuture;->setFailure(Ljava/lang/Throwable;)Z

    move-object/from16 v0, p1

    invoke-static {v0, v4}, Lorg/jboss/netty/channel/Channels;->fireExceptionCaught(Lorg/jboss/netty/channel/Channel;Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_6

    :catchall_0
    move-exception v1

    monitor-exit v14

    throw v1

    :cond_9
    if-eqz v1, :cond_0

    :try_start_9
    invoke-virtual/range {p0 .. p1}, Lorg/jboss/netty/channel/socket/nio/NioDatagramWorker;->clearOpWrite(Lorg/jboss/netty/channel/socket/nio/a;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_2

    :catch_2
    move-exception v4

    move-object v5, v6

    move-object v6, v7

    goto :goto_9

    :catch_3
    move-exception v4

    goto :goto_9

    :catch_4
    move-exception v4

    goto :goto_8

    :cond_a
    move-wide/from16 v18, v1

    move-wide v1, v4

    move-wide/from16 v4, v18

    goto/16 :goto_5
.end method

.method public writeFromUserCode(Lorg/jboss/netty/channel/socket/nio/a;)V
    .locals 1

    invoke-virtual {p1}, Lorg/jboss/netty/channel/socket/nio/a;->isBound()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lorg/jboss/netty/channel/socket/nio/NioDatagramWorker;->cleanUpWriteBuffer(Lorg/jboss/netty/channel/socket/nio/a;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0, p1}, Lorg/jboss/netty/channel/socket/nio/NioDatagramWorker;->scheduleWriteIfNecessary(Lorg/jboss/netty/channel/socket/nio/a;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p1, Lorg/jboss/netty/channel/socket/nio/a;->writeSuspended:Z

    if-nez v0, :cond_0

    iget-boolean v0, p1, Lorg/jboss/netty/channel/socket/nio/a;->inWriteNowLoop:Z

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lorg/jboss/netty/channel/socket/nio/NioDatagramWorker;->write0(Lorg/jboss/netty/channel/socket/nio/a;)V

    goto :goto_0
.end method
