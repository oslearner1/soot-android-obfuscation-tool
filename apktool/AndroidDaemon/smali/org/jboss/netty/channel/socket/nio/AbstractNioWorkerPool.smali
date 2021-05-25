.class public abstract Lorg/jboss/netty/channel/socket/nio/AbstractNioWorkerPool;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/jboss/netty/channel/socket/nio/WorkerPool;
.implements Lorg/jboss/netty/util/ExternalResourceReleasable;


# instance fields
.field private final allowShutDownOnIdle:Z

.field private final workerExecutor:Ljava/util/concurrent/Executor;

.field private final workerIndex:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final workers:[Lorg/jboss/netty/channel/socket/nio/d;


# direct methods
.method constructor <init>(Ljava/util/concurrent/Executor;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/jboss/netty/channel/socket/nio/AbstractNioWorkerPool;-><init>(Ljava/util/concurrent/Executor;IZ)V

    return-void
.end method

.method constructor <init>(Ljava/util/concurrent/Executor;IZ)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lorg/jboss/netty/channel/socket/nio/AbstractNioWorkerPool;->workerIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "workerExecutor"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-gtz p2, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "workerCount ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") must be a positive integer."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-array v0, p2, [Lorg/jboss/netty/channel/socket/nio/d;

    iput-object v0, p0, Lorg/jboss/netty/channel/socket/nio/AbstractNioWorkerPool;->workers:[Lorg/jboss/netty/channel/socket/nio/d;

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/jboss/netty/channel/socket/nio/AbstractNioWorkerPool;->workers:[Lorg/jboss/netty/channel/socket/nio/d;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lorg/jboss/netty/channel/socket/nio/AbstractNioWorkerPool;->workers:[Lorg/jboss/netty/channel/socket/nio/d;

    invoke-virtual {p0, p1}, Lorg/jboss/netty/channel/socket/nio/AbstractNioWorkerPool;->createWorker(Ljava/util/concurrent/Executor;)Lorg/jboss/netty/channel/socket/nio/d;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iput-boolean p3, p0, Lorg/jboss/netty/channel/socket/nio/AbstractNioWorkerPool;->allowShutDownOnIdle:Z

    iput-object p1, p0, Lorg/jboss/netty/channel/socket/nio/AbstractNioWorkerPool;->workerExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method protected createWorker(Ljava/util/concurrent/Executor;)Lorg/jboss/netty/channel/socket/nio/d;
    .locals 1

    iget-boolean v0, p0, Lorg/jboss/netty/channel/socket/nio/AbstractNioWorkerPool;->allowShutDownOnIdle:Z

    invoke-virtual {p0, p1, v0}, Lorg/jboss/netty/channel/socket/nio/AbstractNioWorkerPool;->createWorker(Ljava/util/concurrent/Executor;Z)Lorg/jboss/netty/channel/socket/nio/d;

    move-result-object v0

    return-object v0
.end method

.method protected abstract createWorker(Ljava/util/concurrent/Executor;Z)Lorg/jboss/netty/channel/socket/nio/d;
.end method

.method public bridge synthetic nextWorker()Lorg/jboss/netty/channel/socket/Worker;
    .locals 1

    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/nio/AbstractNioWorkerPool;->nextWorker()Lorg/jboss/netty/channel/socket/nio/d;

    move-result-object v0

    return-object v0
.end method

.method public nextWorker()Lorg/jboss/netty/channel/socket/nio/d;
    .locals 3

    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/AbstractNioWorkerPool;->workers:[Lorg/jboss/netty/channel/socket/nio/d;

    iget-object v1, p0, Lorg/jboss/netty/channel/socket/nio/AbstractNioWorkerPool;->workerIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v1

    iget-object v2, p0, Lorg/jboss/netty/channel/socket/nio/AbstractNioWorkerPool;->workers:[Lorg/jboss/netty/channel/socket/nio/d;

    array-length v2, v2

    rem-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public releaseExternalResources()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/util/concurrent/Executor;

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/jboss/netty/channel/socket/nio/AbstractNioWorkerPool;->workerExecutor:Ljava/util/concurrent/Executor;

    aput-object v2, v0, v1

    invoke-static {v0}, Lorg/jboss/netty/util/internal/ExecutorUtil;->terminate([Ljava/util/concurrent/Executor;)V

    return-void
.end method
