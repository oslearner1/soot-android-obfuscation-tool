.class public Landroid/support/v4/util/Pools$SynchronizedPool;
.super Landroid/support/v4/os/c;


# instance fields
.field private final a:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/support/v4/os/c;-><init>(I)V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/support/v4/util/Pools$SynchronizedPool;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public acquire()Ljava/lang/Object;
    .locals 2

    iget-object v1, p0, Landroid/support/v4/util/Pools$SynchronizedPool;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-super {p0}, Landroid/support/v4/os/c;->acquire()Ljava/lang/Object;

    move-result-object v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public release(Ljava/lang/Object;)Z
    .locals 2

    iget-object v1, p0, Landroid/support/v4/util/Pools$SynchronizedPool;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-super {p0, p1}, Landroid/support/v4/os/c;->release(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
