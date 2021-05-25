.class final Lorg/jboss/netty/channel/local/b;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/jboss/netty/channel/ChannelFutureListener;


# instance fields
.field private synthetic a:Lorg/jboss/netty/channel/local/a;


# direct methods
.method constructor <init>(Lorg/jboss/netty/channel/local/a;)V
    .locals 0

    iput-object p1, p0, Lorg/jboss/netty/channel/local/b;->a:Lorg/jboss/netty/channel/local/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final operationComplete(Lorg/jboss/netty/channel/ChannelFuture;)V
    .locals 2

    iget-object v0, p0, Lorg/jboss/netty/channel/local/b;->a:Lorg/jboss/netty/channel/local/a;

    iget-object v0, v0, Lorg/jboss/netty/channel/local/a;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void
.end method
