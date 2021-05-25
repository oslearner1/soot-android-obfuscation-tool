.class final Lorg/jboss/netty/util/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:J

.field private b:J

.field private synthetic c:Lorg/jboss/netty/util/HashedWheelTimer;


# direct methods
.method constructor <init>(Lorg/jboss/netty/util/HashedWheelTimer;)V
    .locals 0

    iput-object p1, p0, Lorg/jboss/netty/util/d;->c:Lorg/jboss/netty/util/HashedWheelTimer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a()J
    .locals 10

    const-wide/16 v8, 0xa

    iget-wide v0, p0, Lorg/jboss/netty/util/d;->a:J

    iget-object v2, p0, Lorg/jboss/netty/util/d;->c:Lorg/jboss/netty/util/HashedWheelTimer;

    iget-wide v2, v2, Lorg/jboss/netty/util/HashedWheelTimer;->tickDuration:J

    iget-wide v4, p0, Lorg/jboss/netty/util/d;->b:J

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    :cond_0
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lorg/jboss/netty/util/d;->c:Lorg/jboss/netty/util/HashedWheelTimer;

    iget-wide v4, v4, Lorg/jboss/netty/util/HashedWheelTimer;->tickDuration:J

    iget-wide v6, p0, Lorg/jboss/netty/util/d;->b:J

    mul-long/2addr v4, v6

    iget-wide v6, p0, Lorg/jboss/netty/util/d;->a:J

    sub-long/2addr v2, v6

    sub-long v2, v4, v2

    invoke-static {}, Lorg/jboss/netty/util/internal/DetectionUtil;->isWindows()Z

    move-result v4

    if-eqz v4, :cond_1

    div-long/2addr v2, v8

    mul-long/2addr v2, v8

    :cond_1
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_2

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    iget-object v2, p0, Lorg/jboss/netty/util/d;->c:Lorg/jboss/netty/util/HashedWheelTimer;

    iget-object v2, v2, Lorg/jboss/netty/util/HashedWheelTimer;->shutdown:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_0

    const-wide/16 v0, -0x1

    :goto_1
    return-wide v0

    :cond_2
    iget-wide v2, p0, Lorg/jboss/netty/util/d;->b:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lorg/jboss/netty/util/d;->b:J

    goto :goto_1
.end method

.method private static a(Ljava/util/List;)V
    .locals 2

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/util/c;

    invoke-virtual {v0}, Lorg/jboss/netty/util/c;->expire()V

    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method private a(Ljava/util/List;Lorg/jboss/netty/util/internal/ReusableIterator;J)V
    .locals 6

    const/4 v1, 0x0

    invoke-interface {p2}, Lorg/jboss/netty/util/internal/ReusableIterator;->rewind()V

    :goto_0
    invoke-interface {p2}, Lorg/jboss/netty/util/internal/ReusableIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p2}, Lorg/jboss/netty/util/internal/ReusableIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/util/c;

    iget-wide v2, v0, Lorg/jboss/netty/util/c;->c:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gtz v2, :cond_2

    invoke-interface {p2}, Lorg/jboss/netty/util/internal/ReusableIterator;->remove()V

    iget-wide v2, v0, Lorg/jboss/netty/util/c;->a:J

    cmp-long v2, v2, p3

    if-gtz v2, :cond_0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    if-nez v1, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :cond_1
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    iget-wide v2, v0, Lorg/jboss/netty/util/c;->c:J

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    iput-wide v2, v0, Lorg/jboss/netty/util/c;->c:J

    goto :goto_0

    :cond_3
    if-eqz v1, :cond_4

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/util/c;

    iget-object v2, p0, Lorg/jboss/netty/util/d;->c:Lorg/jboss/netty/util/HashedWheelTimer;

    iget-wide v3, v0, Lorg/jboss/netty/util/c;->a:J

    sub-long/2addr v3, p3

    invoke-virtual {v2, v0, v3, v4}, Lorg/jboss/netty/util/HashedWheelTimer;->scheduleTimeout(Lorg/jboss/netty/util/c;J)V

    goto :goto_1

    :cond_4
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lorg/jboss/netty/util/d;->a:J

    const-wide/16 v1, 0x1

    iput-wide v1, p0, Lorg/jboss/netty/util/d;->b:J

    :cond_0
    :goto_0
    iget-object v1, p0, Lorg/jboss/netty/util/d;->c:Lorg/jboss/netty/util/HashedWheelTimer;

    iget-object v1, v1, Lorg/jboss/netty/util/HashedWheelTimer;->shutdown:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0}, Lorg/jboss/netty/util/d;->a()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-lez v3, :cond_0

    iget-object v3, p0, Lorg/jboss/netty/util/d;->c:Lorg/jboss/netty/util/HashedWheelTimer;

    iget-object v3, v3, Lorg/jboss/netty/util/HashedWheelTimer;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v3, p0, Lorg/jboss/netty/util/d;->c:Lorg/jboss/netty/util/HashedWheelTimer;

    iget-object v4, p0, Lorg/jboss/netty/util/d;->c:Lorg/jboss/netty/util/HashedWheelTimer;

    iget v4, v4, Lorg/jboss/netty/util/HashedWheelTimer;->wheelCursor:I

    add-int/lit8 v4, v4, 0x1

    iget-object v5, p0, Lorg/jboss/netty/util/d;->c:Lorg/jboss/netty/util/HashedWheelTimer;

    iget v5, v5, Lorg/jboss/netty/util/HashedWheelTimer;->mask:I

    and-int/2addr v4, v5

    iput v4, v3, Lorg/jboss/netty/util/HashedWheelTimer;->wheelCursor:I

    iget-object v3, p0, Lorg/jboss/netty/util/d;->c:Lorg/jboss/netty/util/HashedWheelTimer;

    iget-object v3, v3, Lorg/jboss/netty/util/HashedWheelTimer;->iterators:[Lorg/jboss/netty/util/internal/ReusableIterator;

    aget-object v3, v3, v4

    invoke-direct {p0, v0, v3, v1, v2}, Lorg/jboss/netty/util/d;->a(Ljava/util/List;Lorg/jboss/netty/util/internal/ReusableIterator;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lorg/jboss/netty/util/d;->c:Lorg/jboss/netty/util/HashedWheelTimer;

    iget-object v1, v1, Lorg/jboss/netty/util/HashedWheelTimer;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    invoke-static {v0}, Lorg/jboss/netty/util/d;->a(Ljava/util/List;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/jboss/netty/util/d;->c:Lorg/jboss/netty/util/HashedWheelTimer;

    iget-object v1, v1, Lorg/jboss/netty/util/HashedWheelTimer;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    :cond_1
    return-void
.end method
