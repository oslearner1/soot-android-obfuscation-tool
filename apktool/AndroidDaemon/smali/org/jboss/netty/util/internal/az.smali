.class final Lorg/jboss/netty/util/internal/az;
.super Ljava/lang/Object;


# static fields
.field private static final e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field private static final f:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;


# instance fields
.field final a:Z

.field volatile b:Ljava/lang/Object;

.field volatile c:Lorg/jboss/netty/util/internal/az;

.field volatile d:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Lorg/jboss/netty/util/internal/az;

    const-class v1, Lorg/jboss/netty/util/internal/az;

    const-string v2, "next"

    invoke-static {v0, v1, v2}, Lorg/jboss/netty/util/internal/a;->a(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lorg/jboss/netty/util/internal/az;->e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const-class v0, Lorg/jboss/netty/util/internal/az;

    const-class v1, Ljava/lang/Object;

    const-string v2, "item"

    invoke-static {v0, v1, v2}, Lorg/jboss/netty/util/internal/a;->a(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lorg/jboss/netty/util/internal/az;->f:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method constructor <init>(Ljava/lang/Object;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/jboss/netty/util/internal/az;->b:Ljava/lang/Object;

    iput-boolean p2, p0, Lorg/jboss/netty/util/internal/az;->a:Z

    return-void
.end method


# virtual methods
.method final a()V
    .locals 0

    iput-object p0, p0, Lorg/jboss/netty/util/internal/az;->c:Lorg/jboss/netty/util/internal/az;

    return-void
.end method

.method final a(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    invoke-static {}, Lorg/jboss/netty/util/internal/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/jboss/netty/util/internal/az;->f:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0, p1, p2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/jboss/netty/util/internal/az;->b:Ljava/lang/Object;

    if-ne v0, p1, :cond_1

    iput-object p2, p0, Lorg/jboss/netty/util/internal/az;->b:Ljava/lang/Object;

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

.method final a(Lorg/jboss/netty/util/internal/az;Lorg/jboss/netty/util/internal/az;)Z
    .locals 1

    invoke-static {}, Lorg/jboss/netty/util/internal/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/jboss/netty/util/internal/az;->e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0, p1, p2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/jboss/netty/util/internal/az;->c:Lorg/jboss/netty/util/internal/az;

    if-ne v0, p1, :cond_1

    iput-object p2, p0, Lorg/jboss/netty/util/internal/az;->c:Lorg/jboss/netty/util/internal/az;

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

.method final a(Z)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-boolean v3, p0, Lorg/jboss/netty/util/internal/az;->a:Z

    if-eq v3, p1, :cond_1

    iget-object v2, p0, Lorg/jboss/netty/util/internal/az;->b:Ljava/lang/Object;

    if-eq v2, p0, :cond_1

    if-eqz v2, :cond_0

    move v2, v0

    :goto_0
    if-ne v2, v3, :cond_1

    :goto_1
    return v0

    :cond_0
    move v2, v1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method final b()V
    .locals 1

    iput-object p0, p0, Lorg/jboss/netty/util/internal/az;->b:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jboss/netty/util/internal/az;->d:Ljava/lang/Thread;

    return-void
.end method

.method final c()Z
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lorg/jboss/netty/util/internal/az;->b:Ljava/lang/Object;

    if-eq v0, p0, :cond_0

    if-nez v0, :cond_2

    move v0, v1

    :goto_0
    iget-boolean v3, p0, Lorg/jboss/netty/util/internal/az;->a:Z

    if-ne v0, v3, :cond_1

    :cond_0
    move v2, v1

    :cond_1
    return v2

    :cond_2
    move v0, v2

    goto :goto_0
.end method

.method final d()Z
    .locals 2

    iget-object v0, p0, Lorg/jboss/netty/util/internal/az;->b:Ljava/lang/Object;

    if-eqz v0, :cond_0

    if-eq v0, p0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/jboss/netty/util/internal/az;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/jboss/netty/util/internal/az;->d:Ljava/lang/Thread;

    invoke-static {v0}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
