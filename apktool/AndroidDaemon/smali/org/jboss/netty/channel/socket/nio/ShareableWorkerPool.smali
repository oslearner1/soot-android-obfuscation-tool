.class public final Lorg/jboss/netty/channel/socket/nio/ShareableWorkerPool;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/jboss/netty/channel/socket/nio/WorkerPool;


# instance fields
.field private final wrapped:Lorg/jboss/netty/channel/socket/nio/WorkerPool;


# direct methods
.method public constructor <init>(Lorg/jboss/netty/channel/socket/nio/WorkerPool;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/jboss/netty/channel/socket/nio/ShareableWorkerPool;->wrapped:Lorg/jboss/netty/channel/socket/nio/WorkerPool;

    return-void
.end method


# virtual methods
.method public final destroy()V
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/ShareableWorkerPool;->wrapped:Lorg/jboss/netty/channel/socket/nio/WorkerPool;

    instance-of v0, v0, Lorg/jboss/netty/util/ExternalResourceReleasable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/ShareableWorkerPool;->wrapped:Lorg/jboss/netty/channel/socket/nio/WorkerPool;

    check-cast v0, Lorg/jboss/netty/util/ExternalResourceReleasable;

    invoke-interface {v0}, Lorg/jboss/netty/util/ExternalResourceReleasable;->releaseExternalResources()V

    :cond_0
    return-void
.end method

.method public final nextWorker()Lorg/jboss/netty/channel/socket/Worker;
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/ShareableWorkerPool;->wrapped:Lorg/jboss/netty/channel/socket/nio/WorkerPool;

    invoke-interface {v0}, Lorg/jboss/netty/channel/socket/nio/WorkerPool;->nextWorker()Lorg/jboss/netty/channel/socket/Worker;

    move-result-object v0

    return-object v0
.end method
