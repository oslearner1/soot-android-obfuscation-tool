.class final Lorg/jboss/netty/handler/ssl/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Ljava/lang/Runnable;

.field private synthetic b:Lorg/jboss/netty/handler/ssl/SslHandler;


# direct methods
.method constructor <init>(Lorg/jboss/netty/handler/ssl/SslHandler;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lorg/jboss/netty/handler/ssl/c;->b:Lorg/jboss/netty/handler/ssl/SslHandler;

    iput-object p2, p0, Lorg/jboss/netty/handler/ssl/c;->a:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lorg/jboss/netty/handler/ssl/c;->b:Lorg/jboss/netty/handler/ssl/SslHandler;

    iget-object v1, v0, Lorg/jboss/netty/handler/ssl/SslHandler;->handshakeLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lorg/jboss/netty/handler/ssl/c;->a:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
