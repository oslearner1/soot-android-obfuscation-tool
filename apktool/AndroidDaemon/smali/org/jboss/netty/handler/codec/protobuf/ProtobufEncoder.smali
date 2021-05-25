.class public Lorg/jboss/netty/handler/codec/protobuf/ProtobufEncoder;
.super Lorg/jboss/netty/handler/codec/oneone/OneToOneEncoder;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/oneone/OneToOneEncoder;-><init>()V

    return-void
.end method


# virtual methods
.method protected encode(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/Channel;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    instance-of v0, p3, Lcom/google/protobuf/MessageLite;

    if-eqz v0, :cond_1

    check-cast p3, Lcom/google/protobuf/MessageLite;

    invoke-interface {p3}, Lcom/google/protobuf/MessageLite;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Lorg/jboss/netty/buffer/ChannelBuffers;->wrappedBuffer([B)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object p3

    :cond_0
    :goto_0
    return-object p3

    :cond_1
    instance-of v0, p3, Lcom/google/protobuf/MessageLite$Builder;

    if-eqz v0, :cond_0

    check-cast p3, Lcom/google/protobuf/MessageLite$Builder;

    invoke-interface {p3}, Lcom/google/protobuf/MessageLite$Builder;->build()Lcom/google/protobuf/MessageLite;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/protobuf/MessageLite;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Lorg/jboss/netty/buffer/ChannelBuffers;->wrappedBuffer([B)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object p3

    goto :goto_0
.end method
