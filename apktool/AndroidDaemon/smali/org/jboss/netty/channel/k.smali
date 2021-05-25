.class final Lorg/jboss/netty/channel/k;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lorg/jboss/netty/channel/Channel;

.field private synthetic b:Ljava/lang/Throwable;


# direct methods
.method constructor <init>(Lorg/jboss/netty/channel/Channel;Ljava/lang/Throwable;)V
    .locals 0

    iput-object p1, p0, Lorg/jboss/netty/channel/k;->a:Lorg/jboss/netty/channel/Channel;

    iput-object p2, p0, Lorg/jboss/netty/channel/k;->b:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lorg/jboss/netty/channel/k;->a:Lorg/jboss/netty/channel/Channel;

    iget-object v1, p0, Lorg/jboss/netty/channel/k;->b:Ljava/lang/Throwable;

    invoke-static {v0, v1}, Lorg/jboss/netty/channel/Channels;->fireExceptionCaught(Lorg/jboss/netty/channel/Channel;Ljava/lang/Throwable;)V

    return-void
.end method
