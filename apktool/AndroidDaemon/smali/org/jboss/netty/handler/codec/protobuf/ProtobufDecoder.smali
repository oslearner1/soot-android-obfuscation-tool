.class public Lorg/jboss/netty/handler/codec/protobuf/ProtobufDecoder;
.super Lorg/jboss/netty/handler/codec/oneone/OneToOneDecoder;


# instance fields
.field private final extensionRegistry:Lcom/google/protobuf/ExtensionRegistry;

.field private final prototype:Lcom/google/protobuf/MessageLite;


# direct methods
.method public constructor <init>(Lcom/google/protobuf/MessageLite;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/jboss/netty/handler/codec/protobuf/ProtobufDecoder;-><init>(Lcom/google/protobuf/MessageLite;Lcom/google/protobuf/ExtensionRegistry;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/protobuf/MessageLite;Lcom/google/protobuf/ExtensionRegistry;)V
    .locals 2

    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/oneone/OneToOneDecoder;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "prototype"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-interface {p1}, Lcom/google/protobuf/MessageLite;->getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;

    move-result-object v0

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/protobuf/ProtobufDecoder;->prototype:Lcom/google/protobuf/MessageLite;

    iput-object p2, p0, Lorg/jboss/netty/handler/codec/protobuf/ProtobufDecoder;->extensionRegistry:Lcom/google/protobuf/ExtensionRegistry;

    return-void
.end method


# virtual methods
.method protected decode(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/Channel;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p3, Lorg/jboss/netty/buffer/ChannelBuffer;

    if-nez v0, :cond_0

    :goto_0
    return-object p3

    :cond_0
    move-object v0, p3

    check-cast v0, Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->hasArray()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v1

    iget-object v2, p0, Lorg/jboss/netty/handler/codec/protobuf/ProtobufDecoder;->extensionRegistry:Lcom/google/protobuf/ExtensionRegistry;

    if-nez v2, :cond_1

    iget-object v2, p0, Lorg/jboss/netty/handler/codec/protobuf/ProtobufDecoder;->prototype:Lcom/google/protobuf/MessageLite;

    invoke-interface {v2}, Lcom/google/protobuf/MessageLite;->newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;

    move-result-object v2

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->array()[B

    move-result-object v3

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->arrayOffset()I

    move-result v4

    add-int/2addr v1, v4

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v0

    invoke-interface {v2, v3, v1, v0}, Lcom/google/protobuf/MessageLite$Builder;->mergeFrom([BII)Lcom/google/protobuf/MessageLite$Builder;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/protobuf/MessageLite$Builder;->build()Lcom/google/protobuf/MessageLite;

    move-result-object p3

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lorg/jboss/netty/handler/codec/protobuf/ProtobufDecoder;->prototype:Lcom/google/protobuf/MessageLite;

    invoke-interface {v2}, Lcom/google/protobuf/MessageLite;->newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;

    move-result-object v2

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->array()[B

    move-result-object v3

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->arrayOffset()I

    move-result v4

    add-int/2addr v1, v4

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v0

    iget-object v4, p0, Lorg/jboss/netty/handler/codec/protobuf/ProtobufDecoder;->extensionRegistry:Lcom/google/protobuf/ExtensionRegistry;

    invoke-interface {v2, v3, v1, v0, v4}, Lcom/google/protobuf/MessageLite$Builder;->mergeFrom([BIILcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/protobuf/MessageLite$Builder;->build()Lcom/google/protobuf/MessageLite;

    move-result-object p3

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/protobuf/ProtobufDecoder;->extensionRegistry:Lcom/google/protobuf/ExtensionRegistry;

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/protobuf/ProtobufDecoder;->prototype:Lcom/google/protobuf/MessageLite;

    invoke-interface {v0}, Lcom/google/protobuf/MessageLite;->newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;

    move-result-object v0

    new-instance v1, Lorg/jboss/netty/buffer/ChannelBufferInputStream;

    check-cast p3, Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-direct {v1, p3}, Lorg/jboss/netty/buffer/ChannelBufferInputStream;-><init>(Lorg/jboss/netty/buffer/ChannelBuffer;)V

    invoke-interface {v0, v1}, Lcom/google/protobuf/MessageLite$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/MessageLite$Builder;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/protobuf/MessageLite$Builder;->build()Lcom/google/protobuf/MessageLite;

    move-result-object p3

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/protobuf/ProtobufDecoder;->prototype:Lcom/google/protobuf/MessageLite;

    invoke-interface {v0}, Lcom/google/protobuf/MessageLite;->newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;

    move-result-object v0

    new-instance v1, Lorg/jboss/netty/buffer/ChannelBufferInputStream;

    check-cast p3, Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-direct {v1, p3}, Lorg/jboss/netty/buffer/ChannelBufferInputStream;-><init>(Lorg/jboss/netty/buffer/ChannelBuffer;)V

    iget-object v2, p0, Lorg/jboss/netty/handler/codec/protobuf/ProtobufDecoder;->extensionRegistry:Lcom/google/protobuf/ExtensionRegistry;

    invoke-interface {v0, v1, v2}, Lcom/google/protobuf/MessageLite$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/protobuf/MessageLite$Builder;->build()Lcom/google/protobuf/MessageLite;

    move-result-object p3

    goto :goto_0
.end method
