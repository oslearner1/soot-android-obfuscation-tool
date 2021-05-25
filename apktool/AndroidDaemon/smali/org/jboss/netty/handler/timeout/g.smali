.class final Lorg/jboss/netty/handler/timeout/g;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/jboss/netty/channel/ChannelFutureListener;


# instance fields
.field private final a:Lorg/jboss/netty/util/Timeout;


# direct methods
.method constructor <init>(Lorg/jboss/netty/util/Timeout;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/jboss/netty/handler/timeout/g;->a:Lorg/jboss/netty/util/Timeout;

    return-void
.end method


# virtual methods
.method public final operationComplete(Lorg/jboss/netty/channel/ChannelFuture;)V
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/handler/timeout/g;->a:Lorg/jboss/netty/util/Timeout;

    invoke-interface {v0}, Lorg/jboss/netty/util/Timeout;->cancel()V

    return-void
.end method
