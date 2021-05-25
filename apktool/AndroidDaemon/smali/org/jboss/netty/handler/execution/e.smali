.class final Lorg/jboss/netty/handler/execution/e;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/jboss/netty/channel/ChannelFutureListener;


# instance fields
.field private synthetic a:Ljava/lang/Object;

.field private synthetic b:Lorg/jboss/netty/handler/execution/OrderedDownstreamThreadPoolExecutor;


# direct methods
.method constructor <init>(Lorg/jboss/netty/handler/execution/OrderedDownstreamThreadPoolExecutor;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lorg/jboss/netty/handler/execution/e;->b:Lorg/jboss/netty/handler/execution/OrderedDownstreamThreadPoolExecutor;

    iput-object p2, p0, Lorg/jboss/netty/handler/execution/e;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final operationComplete(Lorg/jboss/netty/channel/ChannelFuture;)V
    .locals 2

    iget-object v0, p0, Lorg/jboss/netty/handler/execution/e;->b:Lorg/jboss/netty/handler/execution/OrderedDownstreamThreadPoolExecutor;

    iget-object v1, p0, Lorg/jboss/netty/handler/execution/e;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/jboss/netty/handler/execution/OrderedDownstreamThreadPoolExecutor;->removeChildExecutor(Ljava/lang/Object;)Z

    return-void
.end method
