.class final Lorg/jboss/netty/channel/a;
.super Lorg/jboss/netty/channel/DefaultChannelFuture;


# direct methods
.method public constructor <init>(Lorg/jboss/netty/channel/AbstractChannel;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/jboss/netty/channel/DefaultChannelFuture;-><init>(Lorg/jboss/netty/channel/Channel;Z)V

    return-void
.end method


# virtual methods
.method final a()Z
    .locals 1

    invoke-super {p0}, Lorg/jboss/netty/channel/DefaultChannelFuture;->setSuccess()Z

    move-result v0

    return v0
.end method

.method public final setFailure(Ljava/lang/Throwable;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final setSuccess()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
