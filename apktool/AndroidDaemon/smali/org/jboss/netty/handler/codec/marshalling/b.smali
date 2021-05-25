.class final Lorg/jboss/netty/handler/codec/marshalling/b;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/jboss/marshalling/ByteOutput;


# instance fields
.field private final a:Lorg/jboss/netty/buffer/ChannelBuffer;


# direct methods
.method public constructor <init>(Lorg/jboss/netty/buffer/ChannelBuffer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/jboss/netty/handler/codec/marshalling/b;->a:Lorg/jboss/netty/buffer/ChannelBuffer;

    return-void
.end method

.method public constructor <init>(Lorg/jboss/netty/buffer/ChannelBufferFactory;I)V
    .locals 1

    invoke-static {p2, p1}, Lorg/jboss/netty/buffer/ChannelBuffers;->dynamicBuffer(ILorg/jboss/netty/buffer/ChannelBufferFactory;)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/jboss/netty/handler/codec/marshalling/b;-><init>(Lorg/jboss/netty/buffer/ChannelBuffer;)V

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 0

    return-void
.end method

.method public final flush()V
    .locals 0

    return-void
.end method

.method public final getBuffer()Lorg/jboss/netty/buffer/ChannelBuffer;
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/marshalling/b;->a:Lorg/jboss/netty/buffer/ChannelBuffer;

    return-object v0
.end method

.method public final write(I)V
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/marshalling/b;->a:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0, p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeByte(I)V

    return-void
.end method

.method public final write([B)V
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/marshalling/b;->a:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0, p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeBytes([B)V

    return-void
.end method

.method public final write([BII)V
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/marshalling/b;->a:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0, p1, p2, p3}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeBytes([BII)V

    return-void
.end method
