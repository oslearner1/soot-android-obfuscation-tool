.class final Lorg/jboss/netty/util/internal/a;
.super Ljava/lang/Object;


# static fields
.field private static final a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    const-class v1, Lorg/jboss/netty/util/internal/b;

    const-class v2, Lorg/jboss/netty/util/internal/b;

    const-string v3, "a"

    invoke-static {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v1

    new-instance v2, Lorg/jboss/netty/util/internal/b;

    invoke-direct {v2}, Lorg/jboss/netty/util/internal/b;-><init>()V

    invoke-virtual {v1, v2, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v1, v2, Lorg/jboss/netty/util/internal/b;->a:Lorg/jboss/netty/util/internal/b;

    if-eq v1, v2, :cond_0

    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    throw v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v1

    :goto_0
    sput-boolean v0, Lorg/jboss/netty/util/internal/a;->a:Z

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static a(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;
    .locals 1

    sget-boolean v0, Lorg/jboss/netty/util/internal/a;->a:Z

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static a(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .locals 1

    sget-boolean v0, Lorg/jboss/netty/util/internal/a;->a:Z

    if-eqz v0, :cond_0

    invoke-static {p0, p1, p2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static a()Z
    .locals 1

    sget-boolean v0, Lorg/jboss/netty/util/internal/a;->a:Z

    return v0
.end method
