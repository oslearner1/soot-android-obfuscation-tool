.class public Lorg/jboss/netty/channel/socket/nio/NioWorkerPool;
.super Lorg/jboss/netty/channel/socket/nio/AbstractNioWorkerPool;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/jboss/netty/channel/socket/nio/AbstractNioWorkerPool;-><init>(Ljava/util/concurrent/Executor;I)V

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/jboss/netty/channel/socket/nio/AbstractNioWorkerPool;-><init>(Ljava/util/concurrent/Executor;IZ)V

    return-void
.end method


# virtual methods
.method protected createWorker(Ljava/util/concurrent/Executor;Z)Lorg/jboss/netty/channel/socket/nio/NioWorker;
    .locals 1

    new-instance v0, Lorg/jboss/netty/channel/socket/nio/NioWorker;

    invoke-direct {v0, p1, p2}, Lorg/jboss/netty/channel/socket/nio/NioWorker;-><init>(Ljava/util/concurrent/Executor;Z)V

    return-object v0
.end method

.method protected bridge synthetic createWorker(Ljava/util/concurrent/Executor;Z)Lorg/jboss/netty/channel/socket/nio/d;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lorg/jboss/netty/channel/socket/nio/NioWorkerPool;->createWorker(Ljava/util/concurrent/Executor;Z)Lorg/jboss/netty/channel/socket/nio/NioWorker;

    move-result-object v0

    return-object v0
.end method
