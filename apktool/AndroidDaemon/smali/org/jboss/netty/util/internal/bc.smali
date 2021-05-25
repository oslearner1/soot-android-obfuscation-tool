.class final Lorg/jboss/netty/util/internal/bc;
.super Ljava/lang/Object;


# static fields
.field private static final c:Lsun/misc/Unsafe;

.field private static final d:J

.field private static final e:J

.field private static final f:J


# instance fields
.field final a:Z

.field volatile b:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    :try_start_0
    invoke-static {}, Lorg/jboss/netty/util/internal/LinkedTransferQueue;->getUnsafe()Lsun/misc/Unsafe;

    move-result-object v0

    sput-object v0, Lorg/jboss/netty/util/internal/bc;->c:Lsun/misc/Unsafe;

    const-class v0, Lorg/jboss/netty/util/internal/bc;

    sget-object v1, Lorg/jboss/netty/util/internal/bc;->c:Lsun/misc/Unsafe;

    const-string v2, "item"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v1

    sput-wide v1, Lorg/jboss/netty/util/internal/bc;->d:J

    sget-object v1, Lorg/jboss/netty/util/internal/bc;->c:Lsun/misc/Unsafe;

    const-string v2, "next"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v1

    sput-wide v1, Lorg/jboss/netty/util/internal/bc;->e:J

    sget-object v1, Lorg/jboss/netty/util/internal/bc;->c:Lsun/misc/Unsafe;

    const-string v2, "waiter"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v1, v0}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v0

    sput-wide v0, Lorg/jboss/netty/util/internal/bc;->f:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method constructor <init>(Ljava/lang/Object;Z)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lorg/jboss/netty/util/internal/bc;->c:Lsun/misc/Unsafe;

    sget-wide v1, Lorg/jboss/netty/util/internal/bc;->d:J

    invoke-virtual {v0, p0, v1, v2, p1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    iput-boolean p2, p0, Lorg/jboss/netty/util/internal/bc;->a:Z

    return-void
.end method


# virtual methods
.method final a()V
    .locals 3

    sget-object v0, Lorg/jboss/netty/util/internal/bc;->c:Lsun/misc/Unsafe;

    sget-wide v1, Lorg/jboss/netty/util/internal/bc;->e:J

    invoke-virtual {v0, p0, v1, v2, p0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void
.end method

.method final a(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 6

    sget-object v0, Lorg/jboss/netty/util/internal/bc;->c:Lsun/misc/Unsafe;

    sget-wide v2, Lorg/jboss/netty/util/internal/bc;->d:J

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method final a(Lorg/jboss/netty/util/internal/bc;Lorg/jboss/netty/util/internal/bc;)Z
    .locals 6

    sget-object v0, Lorg/jboss/netty/util/internal/bc;->c:Lsun/misc/Unsafe;

    sget-wide v2, Lorg/jboss/netty/util/internal/bc;->e:J

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method final a(Z)Z
    .locals 1

    iget-boolean v0, p0, Lorg/jboss/netty/util/internal/bc;->a:Z

    if-eq v0, p1, :cond_0

    if-eqz p0, :cond_0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final b()V
    .locals 4

    sget-object v0, Lorg/jboss/netty/util/internal/bc;->c:Lsun/misc/Unsafe;

    sget-wide v1, Lorg/jboss/netty/util/internal/bc;->d:J

    invoke-virtual {v0, p0, v1, v2, p0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    sget-object v0, Lorg/jboss/netty/util/internal/bc;->c:Lsun/misc/Unsafe;

    sget-wide v1, Lorg/jboss/netty/util/internal/bc;->f:J

    const/4 v3, 0x0

    invoke-virtual {v0, p0, v1, v2, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void
.end method

.method final c()Z
    .locals 2

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    iget-boolean v1, p0, Lorg/jboss/netty/util/internal/bc;->a:Z

    if-ne v0, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final d()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
