.class final Lorg/jboss/netty/channel/socket/nio/s;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final a:Ljava/nio/channels/Selector;

.field volatile b:Z

.field volatile c:Z


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/nio/channels/Selector;->open()Ljava/nio/channels/Selector;

    move-result-object v0

    iput-object v0, p0, Lorg/jboss/netty/channel/socket/nio/s;->a:Ljava/nio/channels/Selector;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    :cond_0
    :goto_0
    iget-boolean v0, p0, Lorg/jboss/netty/channel/socket/nio/s;->b:Z

    if-nez v0, :cond_2

    monitor-enter p0

    monitor-exit p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lorg/jboss/netty/channel/socket/nio/s;->c:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/s;->a:Ljava/nio/channels/Selector;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Ljava/nio/channels/Selector;->select(J)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x0

    :try_start_2
    iput-boolean v0, p0, Lorg/jboss/netty/channel/socket/nio/s;->c:Z

    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/s;->a:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->selectedKeys()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/channels/SelectionKey;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    sget-object v1, Lorg/jboss/netty/channel/socket/nio/r;->a:Lorg/jboss/netty/logging/InternalLogger;

    invoke-interface {v1}, Lorg/jboss/netty/logging/InternalLogger;->isWarnEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lorg/jboss/netty/channel/socket/nio/r;->a:Lorg/jboss/netty/logging/InternalLogger;

    const-string v2, "Failed to wait for a temporary selector."

    invoke-interface {v1, v2, v0}, Lorg/jboss/netty/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    const/4 v1, 0x0

    :try_start_3
    iput-boolean v1, p0, Lorg/jboss/netty/channel/socket/nio/s;->c:Z

    throw v0

    :cond_1
    invoke-interface {v1}, Ljava/util/Set;->clear()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :cond_2
    return-void
.end method
