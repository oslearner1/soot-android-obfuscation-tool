.class public Lorg/jboss/netty/handler/codec/serialization/CompatibleObjectDecoder;
.super Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;


# instance fields
.field private final bin:Lorg/jboss/netty/handler/codec/serialization/h;

.field private oin:Ljava/io/ObjectInputStream;


# direct methods
.method public constructor <init>()V
    .locals 1

    sget-object v0, Lorg/jboss/netty/handler/codec/serialization/f;->a:Lorg/jboss/netty/handler/codec/serialization/f;

    invoke-direct {p0, v0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;-><init>(Ljava/lang/Enum;)V

    new-instance v0, Lorg/jboss/netty/handler/codec/serialization/h;

    invoke-direct {v0}, Lorg/jboss/netty/handler/codec/serialization/h;-><init>()V

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/serialization/CompatibleObjectDecoder;->bin:Lorg/jboss/netty/handler/codec/serialization/h;

    return-void
.end method


# virtual methods
.method protected bridge synthetic decode(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/buffer/ChannelBuffer;Ljava/lang/Enum;)Ljava/lang/Object;
    .locals 1

    check-cast p4, Lorg/jboss/netty/handler/codec/serialization/f;

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/jboss/netty/handler/codec/serialization/CompatibleObjectDecoder;->decode(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/buffer/ChannelBuffer;Lorg/jboss/netty/handler/codec/serialization/f;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected decode(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/buffer/ChannelBuffer;Lorg/jboss/netty/handler/codec/serialization/f;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/serialization/CompatibleObjectDecoder;->bin:Lorg/jboss/netty/handler/codec/serialization/h;

    new-instance v1, Lorg/jboss/netty/buffer/ChannelBufferInputStream;

    invoke-direct {v1, p3}, Lorg/jboss/netty/buffer/ChannelBufferInputStream;-><init>(Lorg/jboss/netty/buffer/ChannelBuffer;)V

    invoke-virtual {v0, v1}, Lorg/jboss/netty/handler/codec/serialization/h;->a(Ljava/io/InputStream;)V

    sget-object v0, Lorg/jboss/netty/handler/codec/serialization/e;->a:[I

    invoke-virtual {p4}, Lorg/jboss/netty/handler/codec/serialization/f;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown state: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/serialization/CompatibleObjectDecoder;->bin:Lorg/jboss/netty/handler/codec/serialization/h;

    invoke-virtual {p0, v0}, Lorg/jboss/netty/handler/codec/serialization/CompatibleObjectDecoder;->newObjectInputStream(Ljava/io/InputStream;)Ljava/io/ObjectInputStream;

    move-result-object v0

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/serialization/CompatibleObjectDecoder;->oin:Ljava/io/ObjectInputStream;

    sget-object v0, Lorg/jboss/netty/handler/codec/serialization/f;->b:Lorg/jboss/netty/handler/codec/serialization/f;

    invoke-virtual {p0, v0}, Lorg/jboss/netty/handler/codec/serialization/CompatibleObjectDecoder;->checkpoint(Ljava/lang/Enum;)V

    :pswitch_1
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/serialization/CompatibleObjectDecoder;->oin:Ljava/io/ObjectInputStream;

    invoke-virtual {v0}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected bridge synthetic decodeLast(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/buffer/ChannelBuffer;Ljava/lang/Enum;)Ljava/lang/Object;
    .locals 1

    check-cast p4, Lorg/jboss/netty/handler/codec/serialization/f;

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/jboss/netty/handler/codec/serialization/CompatibleObjectDecoder;->decodeLast(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/buffer/ChannelBuffer;Lorg/jboss/netty/handler/codec/serialization/f;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected decodeLast(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/buffer/ChannelBuffer;Lorg/jboss/netty/handler/codec/serialization/f;)Ljava/lang/Object;
    .locals 3

    const/4 v0, 0x0

    invoke-interface {p3}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/jboss/netty/handler/codec/serialization/CompatibleObjectDecoder;->decode(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/buffer/ChannelBuffer;Lorg/jboss/netty/handler/codec/serialization/f;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lorg/jboss/netty/handler/codec/serialization/CompatibleObjectDecoder;->oin:Ljava/io/ObjectInputStream;

    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V

    :goto_0
    :pswitch_0
    return-object v0

    :pswitch_1
    invoke-interface {p3}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v1

    invoke-interface {p3, v1}, Lorg/jboss/netty/buffer/ChannelBuffer;->getByte(I)B

    move-result v1

    const/16 v2, 0x79

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    invoke-interface {p3, v1}, Lorg/jboss/netty/buffer/ChannelBuffer;->skipBytes(I)V

    iget-object v1, p0, Lorg/jboss/netty/handler/codec/serialization/CompatibleObjectDecoder;->oin:Ljava/io/ObjectInputStream;

    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected newObjectInputStream(Ljava/io/InputStream;)Ljava/io/ObjectInputStream;
    .locals 1

    new-instance v0, Ljava/io/ObjectInputStream;

    invoke-direct {v0, p1}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    return-object v0
.end method
