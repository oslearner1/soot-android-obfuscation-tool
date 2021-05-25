.class Lorg/jboss/netty/handler/execution/a;
.super Ljava/lang/Object;


# instance fields
.field final a:J

.field private b:J

.field private c:I


# direct methods
.method constructor <init>(J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lorg/jboss/netty/handler/execution/a;->a:J

    return-void
.end method


# virtual methods
.method declared-synchronized a(J)V
    .locals 4

    monitor-enter p0

    :goto_0
    :try_start_0
    iget-wide v0, p0, Lorg/jboss/netty/handler/execution/a;->b:J

    iget-wide v2, p0, Lorg/jboss/netty/handler/execution/a;->a:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    iget v0, p0, Lorg/jboss/netty/handler/execution/a;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/jboss/netty/handler/execution/a;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget v0, p0, Lorg/jboss/netty/handler/execution/a;->c:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/jboss/netty/handler/execution/a;->c:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_0
    move-exception v0

    :try_start_3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    iget v0, p0, Lorg/jboss/netty/handler/execution/a;->c:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/jboss/netty/handler/execution/a;->c:I

    goto :goto_0

    :catchall_1
    move-exception v0

    iget v1, p0, Lorg/jboss/netty/handler/execution/a;->c:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/jboss/netty/handler/execution/a;->c:I

    throw v0

    :cond_0
    iget-wide v0, p0, Lorg/jboss/netty/handler/execution/a;->b:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lorg/jboss/netty/handler/execution/a;->b:J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-void
.end method

.method declared-synchronized b(J)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/jboss/netty/handler/execution/a;->b:J

    sub-long/2addr v0, p1

    iput-wide v0, p0, Lorg/jboss/netty/handler/execution/a;->b:J

    iget-wide v0, p0, Lorg/jboss/netty/handler/execution/a;->b:J

    iget-wide v2, p0, Lorg/jboss/netty/handler/execution/a;->a:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    iget v0, p0, Lorg/jboss/netty/handler/execution/a;->c:I

    if-lez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
