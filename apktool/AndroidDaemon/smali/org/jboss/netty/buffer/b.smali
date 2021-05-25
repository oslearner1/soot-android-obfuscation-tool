.class final Lorg/jboss/netty/buffer/b;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/jboss/netty/buffer/ChannelBufferIndexFinder;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final find(Lorg/jboss/netty/buffer/ChannelBuffer;I)Z
    .locals 2

    invoke-interface {p1, p2}, Lorg/jboss/netty/buffer/ChannelBuffer;->getByte(I)B

    move-result v0

    const/16 v1, 0x20

    if-eq v0, v1, :cond_0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
