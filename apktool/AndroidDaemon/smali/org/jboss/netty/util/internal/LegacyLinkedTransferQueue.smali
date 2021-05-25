.class public Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue;
.super Ljava/util/AbstractQueue;

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/util/concurrent/BlockingQueue;


# static fields
.field private static final ASYNC:I = 0x1

.field private static final CHAINED_SPINS:I = 0x40

.field private static final FRONT_SPINS:I = 0x80

.field private static final MP:Z

.field private static final NOW:I = 0x0

.field static final SWEEP_THRESHOLD:I = 0x20

.field private static final SYNC:I = 0x2

.field private static final TIMED:I = 0x3

.field private static final headUpdater:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field private static final serialVersionUID:J = -0x2cbacc91e0a3c166L

.field private static final sweepVotesUpdater:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

.field private static final tailUpdater:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;


# instance fields
.field volatile transient head:Lorg/jboss/netty/util/internal/az;

.field volatile transient sweepVotes:I

.field volatile transient tail:Lorg/jboss/netty/util/internal/az;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v1

    if-le v1, v0, :cond_0

    :goto_0
    sput-boolean v0, Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue;->MP:Z

    const-class v0, Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue;

    const-class v1, Lorg/jboss/netty/util/internal/az;

    const-string v2, "head"

    invoke-static {v0, v1, v2}, Lorg/jboss/netty/util/internal/a;->a(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue;->headUpdater:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const-class v0, Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue;

    const-class v1, Lorg/jboss/netty/util/internal/az;

    const-string v2, "tail"

    invoke-static {v0, v1, v2}, Lorg/jboss/netty/util/internal/a;->a(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue;->tailUpdater:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const-class v0, Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue;

    const-string v1, "sweepVotes"

    invoke-static {v0, v1}, Lorg/jboss/netty/util/internal/a;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue;->sweepVotesUpdater:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/util/AbstractQueue;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 0

    invoke-direct {p0}, Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue;-><init>()V

    invoke-virtual {p0, p1}, Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method private awaitMatch(Lorg/jboss/netty/util/internal/az;Lorg/jboss/netty/util/internal/az;Ljava/lang/Object;ZJ)Ljava/lang/Object;
    .locals 9

    if-eqz p4, :cond_1

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    :goto_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    const/4 v3, -0x1

    const/4 v2, 0x0

    move-object v7, v2

    move v8, v3

    move-wide v2, v0

    move-object v0, v7

    move v1, v8

    :cond_0
    :goto_1
    iget-object v4, p1, Lorg/jboss/netty/util/internal/az;->b:Ljava/lang/Object;

    if-eq v4, p3, :cond_2

    invoke-virtual {p1}, Lorg/jboss/netty/util/internal/az;->b()V

    invoke-static {v4}, Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    :goto_2
    return-object p3

    :cond_1
    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual {v6}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v4

    if-nez v4, :cond_3

    if-eqz p4, :cond_4

    const-wide/16 v4, 0x0

    cmp-long v4, p5, v4

    if-gtz v4, :cond_4

    :cond_3
    invoke-virtual {p1, p3, p1}, Lorg/jboss/netty/util/internal/az;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {p0, p2, p1}, Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue;->unsplice(Lorg/jboss/netty/util/internal/az;Lorg/jboss/netty/util/internal/az;)V

    goto :goto_2

    :cond_4
    if-gez v1, :cond_5

    iget-boolean v1, p1, Lorg/jboss/netty/util/internal/az;->a:Z

    invoke-static {p2, v1}, Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue;->spinsFor(Lorg/jboss/netty/util/internal/az;Z)I

    move-result v1

    if-lez v1, :cond_0

    invoke-static {}, Lorg/jboss/netty/util/internal/bd;->a()Lorg/jboss/netty/util/internal/bd;

    move-result-object v0

    goto :goto_1

    :cond_5
    if-lez v1, :cond_6

    add-int/lit8 v1, v1, -0x1

    const/16 v4, 0x40

    invoke-virtual {v0, v4}, Lorg/jboss/netty/util/internal/bd;->nextInt(I)I

    move-result v4

    if-nez v4, :cond_0

    invoke-static {}, Ljava/lang/Thread;->yield()V

    goto :goto_1

    :cond_6
    iget-object v4, p1, Lorg/jboss/netty/util/internal/az;->d:Ljava/lang/Thread;

    if-nez v4, :cond_7

    iput-object v6, p1, Lorg/jboss/netty/util/internal/az;->d:Ljava/lang/Thread;

    goto :goto_1

    :cond_7
    if-eqz p4, :cond_9

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    sub-long v2, v4, v2

    sub-long/2addr p5, v2

    const-wide/16 v2, 0x0

    cmp-long v2, p5, v2

    if-lez v2, :cond_8

    invoke-static {p5, p6}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(J)V

    :cond_8
    move-wide v2, v4

    goto :goto_1

    :cond_9
    invoke-static {}, Ljava/util/concurrent/locks/LockSupport;->park()V

    goto :goto_1
.end method

.method private casHead(Lorg/jboss/netty/util/internal/az;Lorg/jboss/netty/util/internal/az;)Z
    .locals 1

    invoke-static {}, Lorg/jboss/netty/util/internal/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue;->headUpdater:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0, p1, p2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue;->head:Lorg/jboss/netty/util/internal/az;

    if-ne v0, p1, :cond_1

    iput-object p2, p0, Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue;->head:Lorg/jboss/netty/util/internal/az;

    const/4 v0, 0x1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    const/4 v0, 0x0

    monitor-exit p0

    goto :goto_0
.end method

.method private casSweepVotes(II)Z
    .locals 1

    invoke-static {}, Lorg/jboss/netty/util/internal/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue;->sweepVotesUpdater:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v0, p0, p1, p2}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue;->sweepVotes:I

    if-ne v0, p1, :cond_1

    iput p2, p0, Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue;->sweepVotes:I

    const/4 v0, 0x1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    const/4 v0, 0x0

    monitor-exit p0

    goto :goto_0
.end method

.method private casTail(Lorg/jboss/netty/util/internal/az;Lorg/jboss/netty/util/internal/az;)Z
    .locals 1

    invoke-static {}, Lorg/jboss/netty/util/internal/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue;->tailUpdater:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0, p1, p2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue;->tail:Lorg/jboss/netty/util/internal/az;

    if-ne v0, p1, :cond_1

    iput-object p2, p0, Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue;->tail:Lorg/jboss/netty/util/internal/az;

    const/4 v0, 0x1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    const/4 v0, 0x0

    monitor-exit p0

    goto :goto_0
.end method

.method static cast(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    return-object p0
.end method

.method private countOfMode(Z)I
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue;->head:Lorg/jboss/netty/util/internal/az;

    move-object v2, v0

    move v0, v1

    :goto_0
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lorg/jboss/netty/util/internal/az;->c()Z

    move-result v3

    if-nez v3, :cond_2

    iget-boolean v3, v2, Lorg/jboss/netty/util/internal/az;->a:Z

    if-eq v3, p1, :cond_1

    move v0, v1

    :cond_0
    return v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    const v3, 0x7fffffff

    if-eq v0, v3, :cond_0

    :cond_2
    iget-object v3, v2, Lorg/jboss/netty/util/internal/az;->c:Lorg/jboss/netty/util/internal/az;

    if-eq v3, v2, :cond_3

    move-object v2, v3

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue;->head:Lorg/jboss/netty/util/internal/az;

    move-object v2, v0

    move v0, v1

    goto :goto_0
.end method

.method private findAndRemove(Ljava/lang/Object;)Z
    .locals 6

    const/4 v2, 0x0

    if-eqz p1, :cond_3

    iget-object v1, p0, Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue;->head:Lorg/jboss/netty/util/internal/az;

    move-object v0, v2

    :goto_0
    if-eqz v1, :cond_3

    iget-object v3, v1, Lorg/jboss/netty/util/internal/az;->b:Ljava/lang/Object;

    iget-boolean v4, v1, Lorg/jboss/netty/util/internal/az;->a:Z

    if-eqz v4, :cond_0

    if-eqz v3, :cond_1

    if-eq v3, v1, :cond_1

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v1}, Lorg/jboss/netty/util/internal/az;->d()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0, v0, v1}, Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue;->unsplice(Lorg/jboss/netty/util/internal/az;Lorg/jboss/netty/util/internal/az;)V

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_0
    if-eqz v3, :cond_3

    :cond_1
    iget-object v0, v1, Lorg/jboss/netty/util/internal/az;->c:Lorg/jboss/netty/util/internal/az;

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue;->head:Lorg/jboss/netty/util/internal/az;

    move-object v1, v2

    :cond_2
    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private firstDataItem()Ljava/lang/Object;
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue;->head:Lorg/jboss/netty/util/internal/az;

    :goto_0
    if-eqz v1, :cond_0

    iget-object v2, v1, Lorg/jboss/netty/util/internal/az;->b:Ljava/lang/Object;

    iget-boolean v3, v1, Lorg/jboss/netty/util/internal/az;->a:Z

    if-eqz v3, :cond_1

    if-eqz v2, :cond_2

    if-eq v2, v1, :cond_2

    invoke-static {v2}, Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :cond_0
    return-object v0

    :cond_1
    if-eqz v2, :cond_0

    :cond_2
    invoke-virtual {p0, v1}, Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue;->succ(Lorg/jboss/netty/util/internal/az;)Lorg/jboss/netty/util/internal/az;

    move-result-object v1

    goto :goto_0
.end method

.method private firstOfMode(Z)Lorg/jboss/netty/util/internal/az;
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue;->head:Lorg/jboss/netty/util/internal/az;

    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/jboss/netty/util/internal/az;->c()Z

    move-result v2

    if-nez v2, :cond_1

    iget-boolean v2, v0, Lorg/jboss/netty/util/internal/az;->a:Z

    if-ne v2, p1, :cond_0

    :goto_1
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v0}, Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue;->succ(Lorg/jboss/netty/util/internal/az;)Lorg/jboss/netty/util/internal/az;

    move-result-object v0

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_1
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    :goto_0
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue;->offer(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static spinsFor(Lorg/jboss/netty/util/internal/az;Z)I
    .locals 1

    sget-boolean v0, Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue;->MP:Z

    if-eqz v0, :cond_2

    if-eqz p0, :cond_2

    iget-boolean v0, p0, Lorg/jboss/netty/util/internal/az;->a:Z

    if-eq v0, p1, :cond_0

    const/16 v0, 0xc0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lorg/jboss/netty/util/internal/az;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x80

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/jboss/netty/util/internal/az;->d:Ljava/lang/Thread;

    if-nez v0, :cond_2

    const/16 v0, 0x40

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private sweep()V
    .locals 3

    iget-object v0, p0, Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue;->head:Lorg/jboss/netty/util/internal/az;

    :goto_0
    if-eqz v0, :cond_2

    iget-object v1, v0, Lorg/jboss/netty/util/internal/az;->c:Lorg/jboss/netty/util/internal/az;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lorg/jboss/netty/util/internal/az;->c()Z

    move-result v2

    if-nez v2, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    iget-object v2, v1, Lorg/jboss/netty/util/internal/az;->c:Lorg/jboss/netty/util/internal/az;

    if-eqz v2, :cond_2

    if-ne v1, v2, :cond_1

    iget-object v0, p0, Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue;->head:Lorg/jboss/netty/util/internal/az;

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v1, v2}, Lorg/jboss/netty/util/internal/az;->a(Lorg/jboss/netty/util/internal/az;Lorg/jboss/netty/util/internal/az;)Z

    goto :goto_0

    :cond_2
    return-void
.end method

.method private tryAppend(Lorg/jboss/netty/util/internal/az;Z)Lorg/jboss/netty/util/internal/az;
    .locals 5

    const/4 v3, 0x0

    iget-object v0, p0, Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue;->tail:Lorg/jboss/netty/util/internal/az;

    move-object v4, v0

    :cond_0
    :goto_0
    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue;->head:Lorg/jboss/netty/util/internal/az;

    if-nez v0, :cond_1

    invoke-direct {p0, v3, p1}, Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue;->casHead(Lorg/jboss/netty/util/internal/az;Lorg/jboss/netty/util/internal/az;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_1
    return-object p1

    :cond_1
    invoke-virtual {v0, p2}, Lorg/jboss/netty/util/internal/az;->a(Z)Z

    move-result v1

    if-eqz v1, :cond_2

    move-object p1, v3

    goto :goto_1

    :cond_2
    iget-object v2, v0, Lorg/jboss/netty/util/internal/az;->c:Lorg/jboss/netty/util/internal/az;

    if-eqz v2, :cond_5

    if-eq v0, v4, :cond_3

    iget-object v1, p0, Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue;->tail:Lorg/jboss/netty/util/internal/az;

    if-eq v4, v1, :cond_3

    move-object v0, v1

    :goto_2
    move-object v4, v1

    goto :goto_0

    :cond_3
    if-eq v0, v2, :cond_4

    move-object v0, v2

    move-object v1, v4

    goto :goto_2

    :cond_4
    move-object v0, v3

    move-object v1, v4

    goto :goto_2

    :cond_5
    invoke-virtual {v0, v3, p1}, Lorg/jboss/netty/util/internal/az;->a(Lorg/jboss/netty/util/internal/az;Lorg/jboss/netty/util/internal/az;)Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v0, v0, Lorg/jboss/netty/util/internal/az;->c:Lorg/jboss/netty/util/internal/az;

    goto :goto_0

    :cond_6
    if-eq v0, v4, :cond_9

    :cond_7
    iget-object v1, p0, Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue;->tail:Lorg/jboss/netty/util/internal/az;

    if-ne v1, v4, :cond_8

    invoke-direct {p0, v4, p1}, Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue;->casTail(Lorg/jboss/netty/util/internal/az;Lorg/jboss/netty/util/internal/az;)Z

    move-result v1

    if-nez v1, :cond_9

    :cond_8
    iget-object v4, p0, Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue;->tail:Lorg/jboss/netty/util/internal/az;

    if-eqz v4, :cond_9

    iget-object v1, v4, Lorg/jboss/netty/util/internal/az;->c:Lorg/jboss/netty/util/internal/az;

    if-eqz v1, :cond_9

    iget-object p1, v1, Lorg/jboss/netty/util/internal/az;->c:Lorg/jboss/netty/util/internal/az;

    if-eqz p1, :cond_9

    if-ne p1, v4, :cond_7

    :cond_9
    move-object p1, v0

    goto :goto_1
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 2

    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    invoke-virtual {p0}, Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    return-void
.end method

.method private xfer(Ljava/lang/Object;ZIJ)Ljava/lang/Object;
    .locals 8

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz p2, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    iget-object v5, p0, Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue;->head:Lorg/jboss/netty/util/internal/az;

    move-object v2, v5

    :goto_0
    if-eqz v5, :cond_9

    iget-boolean v6, v5, Lorg/jboss/netty/util/internal/az;->a:Z

    iget-object v7, v5, Lorg/jboss/netty/util/internal/az;->b:Ljava/lang/Object;

    if-eq v7, v5, :cond_7

    if-eqz v7, :cond_4

    move v0, v4

    :goto_1
    if-ne v0, v6, :cond_7

    if-eq v6, p2, :cond_9

    invoke-virtual {v5, v7, p1}, Lorg/jboss/netty/util/internal/az;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    move-object v0, v5

    :goto_2
    if-eq v0, v2, :cond_2

    iget-object v1, v0, Lorg/jboss/netty/util/internal/az;->c:Lorg/jboss/netty/util/internal/az;

    iget-object v3, p0, Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue;->head:Lorg/jboss/netty/util/internal/az;

    if-ne v3, v2, :cond_6

    if-nez v1, :cond_5

    :goto_3
    invoke-direct {p0, v2, v0}, Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue;->casHead(Lorg/jboss/netty/util/internal/az;Lorg/jboss/netty/util/internal/az;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {v2}, Lorg/jboss/netty/util/internal/az;->a()V

    :cond_2
    iget-object v0, v5, Lorg/jboss/netty/util/internal/az;->d:Ljava/lang/Thread;

    invoke-static {v0}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    invoke-static {v7}, Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :cond_3
    :goto_4
    return-object p1

    :cond_4
    move v0, v3

    goto :goto_1

    :cond_5
    move-object v0, v1

    goto :goto_3

    :cond_6
    iget-object v2, p0, Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue;->head:Lorg/jboss/netty/util/internal/az;

    if-eqz v2, :cond_2

    iget-object v0, v2, Lorg/jboss/netty/util/internal/az;->c:Lorg/jboss/netty/util/internal/az;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/jboss/netty/util/internal/az;->c()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_2

    :cond_7
    iget-object v0, v5, Lorg/jboss/netty/util/internal/az;->c:Lorg/jboss/netty/util/internal/az;

    if-eq v5, v0, :cond_8

    :goto_5
    move-object v5, v0

    goto :goto_0

    :cond_8
    iget-object v0, p0, Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue;->head:Lorg/jboss/netty/util/internal/az;

    move-object v2, v0

    goto :goto_5

    :cond_9
    if-eqz p3, :cond_3

    if-nez v1, :cond_a

    new-instance v1, Lorg/jboss/netty/util/internal/az;

    invoke-direct {v1, p1, p2}, Lorg/jboss/netty/util/internal/az;-><init>(Ljava/lang/Object;Z)V

    :cond_a
    invoke-direct {p0, v1, p2}, Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue;->tryAppend(Lorg/jboss/netty/util/internal/az;Z)Lorg/jboss/netty/util/internal/az;

    move-result-object v2

    if-eqz v2, :cond_1

    if-eq p3, v4, :cond_3

    const/4 v0, 0x3

    if-ne p3, v0, :cond_b

    :goto_6
    move-object v0, p0

    move-object v3, p1

    move-wide v5, p4

    invoke-direct/range {v0 .. v6}, Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue;->awaitMatch(Lorg/jboss/netty/util/internal/az;Lorg/jboss/netty/util/internal/az;Ljava/lang/Object;ZJ)Ljava/lang/Object;

    move-result-object p1

    goto :goto_4

    :cond_b
    move v4, v3

    goto :goto_6
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 6

    const/4 v2, 0x1

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, v2

    invoke-direct/range {v0 .. v5}, Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue;->xfer(Ljava/lang/Object;ZIJ)Ljava/lang/Object;

    return v2
.end method

.method public drainTo(Ljava/util/Collection;)I
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    if-ne p1, p0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue;->poll()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {p1, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public drainTo(Ljava/util/Collection;I)I
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    if-ne p1, p0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_2

    invoke-virtual {p0}, Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue;->poll()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {p1, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public getWaitingConsumerCount()I
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue;->countOfMode(Z)I

    move-result v0

    return v0
.end method

.method public hasWaitingConsumer()Z
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue;->firstOfMode(Z)Lorg/jboss/netty/util/internal/az;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isEmpty()Z
    .locals 3

    const/4 v0, 0x1

    iget-object v1, p0, Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue;->head:Lorg/jboss/netty/util/internal/az;

    :goto_0
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/jboss/netty/util/internal/az;->c()Z

    move-result v2

    if-nez v2, :cond_2

    iget-boolean v1, v1, Lorg/jboss/netty/util/internal/az;->a:Z

    if-nez v1, :cond_1

    :cond_0
    :goto_1
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    invoke-virtual {p0, v1}, Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue;->succ(Lorg/jboss/netty/util/internal/az;)Lorg/jboss/netty/util/internal/az;

    move-result-object v1

    goto :goto_0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1

    new-instance v0, Lorg/jboss/netty/util/internal/ay;

    invoke-direct {v0, p0}, Lorg/jboss/netty/util/internal/ay;-><init>(Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue;)V

    return-object v0
.end method

.method public offer(Ljava/lang/Object;)Z
    .locals 6

    const/4 v2, 0x1

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, v2

    invoke-direct/range {v0 .. v5}, Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue;->xfer(Ljava/lang/Object;ZIJ)Ljava/lang/Object;

    return v2
.end method

.method public offer(Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)Z
    .locals 6

    const/4 v2, 0x1

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, v2

    invoke-direct/range {v0 .. v5}, Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue;->xfer(Ljava/lang/Object;ZIJ)Ljava/lang/Object;

    return v2
.end method

.method public peek()Ljava/lang/Object;
    .locals 1

    invoke-direct {p0}, Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue;->firstDataItem()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public poll()Ljava/lang/Object;
    .locals 6

    const/4 v2, 0x0

    const/4 v1, 0x0

    const-wide/16 v4, 0x0

    move-object v0, p0

    move v3, v2

    invoke-direct/range {v0 .. v5}, Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue;->xfer(Ljava/lang/Object;ZIJ)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 6

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v4

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue;->xfer(Ljava/lang/Object;ZIJ)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0
.end method

.method public put(Ljava/lang/Object;)V
    .locals 6

    const/4 v2, 0x1

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, v2

    invoke-direct/range {v0 .. v5}, Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue;->xfer(Ljava/lang/Object;ZIJ)Ljava/lang/Object;

    return-void
.end method

.method public remainingCapacity()I
    .locals 1

    const v0, 0x7fffffff

    return v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1

    invoke-direct {p0, p1}, Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue;->findAndRemove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public size()I
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue;->countOfMode(Z)I

    move-result v0

    return v0
.end method

.method final succ(Lorg/jboss/netty/util/internal/az;)Lorg/jboss/netty/util/internal/az;
    .locals 1

    iget-object v0, p1, Lorg/jboss/netty/util/internal/az;->c:Lorg/jboss/netty/util/internal/az;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue;->head:Lorg/jboss/netty/util/internal/az;

    :cond_0
    return-object v0
.end method

.method public take()Ljava/lang/Object;
    .locals 6

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x2

    const-wide/16 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue;->xfer(Ljava/lang/Object;ZIJ)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0
.end method

.method public transfer(Ljava/lang/Object;)V
    .locals 6

    const/4 v2, 0x1

    const/4 v3, 0x2

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue;->xfer(Ljava/lang/Object;ZIJ)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0

    :cond_0
    return-void
.end method

.method public tryTransfer(Ljava/lang/Object;)Z
    .locals 6

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue;->xfer(Ljava/lang/Object;ZIJ)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return v2

    :cond_0
    move v2, v3

    goto :goto_0
.end method

.method public tryTransfer(Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)Z
    .locals 6

    const/4 v2, 0x1

    const/4 v3, 0x3

    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v4

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue;->xfer(Ljava/lang/Object;ZIJ)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return v2

    :cond_0
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0
.end method

.method final unsplice(Lorg/jboss/netty/util/internal/az;Lorg/jboss/netty/util/internal/az;)V
    .locals 2

    invoke-virtual {p2}, Lorg/jboss/netty/util/internal/az;->b()V

    if-eqz p1, :cond_1

    if-eq p1, p2, :cond_1

    iget-object v0, p1, Lorg/jboss/netty/util/internal/az;->c:Lorg/jboss/netty/util/internal/az;

    if-ne v0, p2, :cond_1

    iget-object v0, p2, Lorg/jboss/netty/util/internal/az;->c:Lorg/jboss/netty/util/internal/az;

    if-eqz v0, :cond_0

    if-eq v0, p2, :cond_1

    invoke-virtual {p1, p2, v0}, Lorg/jboss/netty/util/internal/az;->a(Lorg/jboss/netty/util/internal/az;Lorg/jboss/netty/util/internal/az;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lorg/jboss/netty/util/internal/az;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue;->head:Lorg/jboss/netty/util/internal/az;

    if-eq v0, p1, :cond_1

    if-eq v0, p2, :cond_1

    if-nez v0, :cond_2

    :cond_1
    :goto_1
    return-void

    :cond_2
    invoke-virtual {v0}, Lorg/jboss/netty/util/internal/az;->c()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, v0, Lorg/jboss/netty/util/internal/az;->c:Lorg/jboss/netty/util/internal/az;

    if-eqz v1, :cond_1

    if-eq v1, v0, :cond_0

    invoke-direct {p0, v0, v1}, Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue;->casHead(Lorg/jboss/netty/util/internal/az;Lorg/jboss/netty/util/internal/az;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lorg/jboss/netty/util/internal/az;->a()V

    goto :goto_0

    :cond_3
    iget-object v0, p1, Lorg/jboss/netty/util/internal/az;->c:Lorg/jboss/netty/util/internal/az;

    if-eq v0, p1, :cond_1

    iget-object v0, p2, Lorg/jboss/netty/util/internal/az;->c:Lorg/jboss/netty/util/internal/az;

    if-eq v0, p2, :cond_1

    :cond_4
    iget v0, p0, Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue;->sweepVotes:I

    const/16 v1, 0x20

    if-ge v0, v1, :cond_5

    add-int/lit8 v1, v0, 0x1

    invoke-direct {p0, v0, v1}, Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue;->casSweepVotes(II)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_1

    :cond_5
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue;->casSweepVotes(II)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue;->sweep()V

    goto :goto_1
.end method
