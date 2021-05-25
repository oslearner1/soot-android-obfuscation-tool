.class final Lorg/jboss/netty/handler/codec/marshalling/a;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/jboss/marshalling/ByteInput;


# instance fields
.field private final a:Lorg/jboss/netty/buffer/ChannelBuffer;


# direct methods
.method public constructor <init>(Lorg/jboss/netty/buffer/ChannelBuffer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/jboss/netty/handler/codec/marshalling/a;->a:Lorg/jboss/netty/buffer/ChannelBuffer;

    return-void
.end method


# virtual methods
.method public final available()I
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/marshalling/a;->a:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v0

    return v0
.end method

.method public final close()V
    .locals 0

    return-void
.end method

.method public final read()I
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/marshalling/a;->a:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/marshalling/a;->a:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public final read([B)I
    .locals 2

    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lorg/jboss/netty/handler/codec/marshalling/a;->read([BII)I

    move-result v0

    return v0
.end method

.method public final read([BII)I
    .locals 2

    invoke-virtual {p0}, Lorg/jboss/netty/handler/codec/marshalling/a;->available()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, p0, Lorg/jboss/netty/handler/codec/marshalling/a;->a:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v1, p1, p2, v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readBytes([BII)V

    goto :goto_0
.end method

.method public final skip(J)J
    .locals 3

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/marshalling/a;->a:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v0

    int-to-long v1, v0

    cmp-long v1, v1, p1

    if-gez v1, :cond_0

    int-to-long p1, v0

    :cond_0
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/marshalling/a;->a:Lorg/jboss/netty/buffer/ChannelBuffer;

    iget-object v1, p0, Lorg/jboss/netty/handler/codec/marshalling/a;->a:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v1}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v1

    int-to-long v1, v1

    add-long/2addr v1, p1

    long-to-int v1, v1

    invoke-interface {v0, v1}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex(I)V

    return-wide p1
.end method
