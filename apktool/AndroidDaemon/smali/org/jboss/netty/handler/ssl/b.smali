.class final Lorg/jboss/netty/handler/ssl/b;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/jboss/netty/channel/ChannelFutureListener;


# instance fields
.field private synthetic a:Lorg/jboss/netty/handler/ssl/SslHandler;


# direct methods
.method constructor <init>(Lorg/jboss/netty/handler/ssl/SslHandler;)V
    .locals 0

    iput-object p1, p0, Lorg/jboss/netty/handler/ssl/b;->a:Lorg/jboss/netty/handler/ssl/SslHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final operationComplete(Lorg/jboss/netty/channel/ChannelFuture;)V
    .locals 3

    invoke-interface {p1}, Lorg/jboss/netty/channel/ChannelFuture;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Ljava/nio/channels/ClosedChannelException;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/jboss/netty/handler/ssl/b;->a:Lorg/jboss/netty/handler/ssl/SslHandler;

    iget-object v1, v0, Lorg/jboss/netty/handler/ssl/SslHandler;->ignoreClosedChannelExceptionLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lorg/jboss/netty/handler/ssl/b;->a:Lorg/jboss/netty/handler/ssl/SslHandler;

    iget v2, v0, Lorg/jboss/netty/handler/ssl/SslHandler;->ignoreClosedChannelException:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lorg/jboss/netty/handler/ssl/SslHandler;->ignoreClosedChannelException:I

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
