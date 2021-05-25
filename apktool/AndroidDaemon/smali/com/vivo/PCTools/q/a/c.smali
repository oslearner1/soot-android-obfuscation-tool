.class public final Lcom/vivo/PCTools/q/a/c;
.super Lorg/jboss/netty/handler/codec/oneone/OneToOneEncoder;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/oneone/OneToOneEncoder;-><init>()V

    return-void
.end method


# virtual methods
.method protected final encode(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/Channel;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    instance-of v0, p3, Lcom/vivo/PCTools/q/a/a;

    if-eqz v0, :cond_2

    check-cast p3, Lcom/vivo/PCTools/q/a/a;

    invoke-static {}, Lorg/jboss/netty/buffer/ChannelBuffers;->dynamicBuffer()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    invoke-virtual {p3}, Lcom/vivo/PCTools/q/a/a;->getVersionByte()[B

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeBytes([B)V

    invoke-virtual {p3}, Lcom/vivo/PCTools/q/a/a;->getHeadLengthByte()[B

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeBytes([B)V

    invoke-virtual {p3}, Lcom/vivo/PCTools/q/a/a;->getMegIdByte()[B

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeBytes([B)V

    invoke-virtual {p3}, Lcom/vivo/PCTools/q/a/a;->getModuleByte()[B

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeBytes([B)V

    invoke-virtual {p3}, Lcom/vivo/PCTools/q/a/a;->getCmd()B

    move-result v1

    invoke-interface {v0, v1}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeByte(I)V

    invoke-virtual {p3}, Lcom/vivo/PCTools/q/a/a;->getRelyCode()B

    move-result v1

    invoke-interface {v0, v1}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeByte(I)V

    invoke-virtual {p3}, Lcom/vivo/PCTools/q/a/a;->getBodyLengthByte()[B

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeBytes([B)V

    invoke-virtual {p3}, Lcom/vivo/PCTools/q/a/a;->getHeadLengthShort()S

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p3}, Lcom/vivo/PCTools/q/a/a;->getAppend()[B

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeBytes([B)V

    :cond_0
    invoke-virtual {p3}, Lcom/vivo/PCTools/q/a/a;->getBodyLength()I

    move-result v1

    if-lez v1, :cond_1

    invoke-virtual {p3}, Lcom/vivo/PCTools/q/a/a;->sendbody()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p3}, Lcom/vivo/PCTools/q/a/a;->getBody()[B

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeBytes([B)V

    const/4 v1, 0x0

    invoke-virtual {p3, v1}, Lcom/vivo/PCTools/q/a/a;->setBody([B)V

    :cond_1
    move-object p3, v0

    :cond_2
    return-object p3
.end method
