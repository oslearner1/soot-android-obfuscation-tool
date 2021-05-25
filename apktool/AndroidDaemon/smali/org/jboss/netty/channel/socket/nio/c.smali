.class final Lorg/jboss/netty/channel/socket/nio/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lorg/jboss/netty/channel/socket/nio/a;


# direct methods
.method constructor <init>(Lorg/jboss/netty/channel/socket/nio/a;)V
    .locals 0

    iput-object p1, p0, Lorg/jboss/netty/channel/socket/nio/c;->a:Lorg/jboss/netty/channel/socket/nio/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/c;->a:Lorg/jboss/netty/channel/socket/nio/a;

    iget-object v0, v0, Lorg/jboss/netty/channel/socket/nio/a;->writeTaskInTaskQueue:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/c;->a:Lorg/jboss/netty/channel/socket/nio/a;

    iget-object v0, v0, Lorg/jboss/netty/channel/socket/nio/a;->worker:Lorg/jboss/netty/channel/socket/nio/d;

    iget-object v1, p0, Lorg/jboss/netty/channel/socket/nio/c;->a:Lorg/jboss/netty/channel/socket/nio/a;

    invoke-virtual {v0, v1}, Lorg/jboss/netty/channel/socket/nio/d;->writeFromTaskLoop(Lorg/jboss/netty/channel/socket/nio/a;)V

    return-void
.end method
