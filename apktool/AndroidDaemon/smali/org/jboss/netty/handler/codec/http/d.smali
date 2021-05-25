.class final Lorg/jboss/netty/handler/codec/http/d;
.super Lorg/jboss/netty/handler/codec/http/HttpResponseDecoder;


# instance fields
.field private synthetic a:Lorg/jboss/netty/handler/codec/http/HttpClientCodec;


# direct methods
.method constructor <init>(Lorg/jboss/netty/handler/codec/http/HttpClientCodec;III)V
    .locals 0

    iput-object p1, p0, Lorg/jboss/netty/handler/codec/http/d;->a:Lorg/jboss/netty/handler/codec/http/HttpClientCodec;

    invoke-direct {p0, p2, p3, p4}, Lorg/jboss/netty/handler/codec/http/HttpResponseDecoder;-><init>(III)V

    return-void
.end method


# virtual methods
.method public final channelClosed(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelStateEvent;)V
    .locals 5

    invoke-super {p0, p1, p2}, Lorg/jboss/netty/handler/codec/http/HttpResponseDecoder;->channelClosed(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelStateEvent;)V

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/d;->a:Lorg/jboss/netty/handler/codec/http/HttpClientCodec;

    invoke-static {v0}, Lorg/jboss/netty/handler/codec/http/HttpClientCodec;->access$000(Lorg/jboss/netty/handler/codec/http/HttpClientCodec;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/d;->a:Lorg/jboss/netty/handler/codec/http/HttpClientCodec;

    invoke-static {v0}, Lorg/jboss/netty/handler/codec/http/HttpClientCodec;->access$100(Lorg/jboss/netty/handler/codec/http/HttpClientCodec;)Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    new-instance v2, Lorg/jboss/netty/handler/codec/PrematureChannelClosureException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Channel closed but still missing "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " response(s)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lorg/jboss/netty/handler/codec/PrematureChannelClosureException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    return-void
.end method

.method protected final bridge synthetic decode(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/buffer/ChannelBuffer;Ljava/lang/Enum;)Ljava/lang/Object;
    .locals 1

    check-cast p4, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/jboss/netty/handler/codec/http/d;->decode(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/buffer/ChannelBuffer;Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected final decode(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/buffer/ChannelBuffer;Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/d;->a:Lorg/jboss/netty/handler/codec/http/HttpClientCodec;

    iget-boolean v0, v0, Lorg/jboss/netty/handler/codec/http/HttpClientCodec;->done:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/jboss/netty/handler/codec/http/d;->actualReadableBytes()I

    move-result v0

    invoke-interface {p3, v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readBytes(I)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v1

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Lorg/jboss/netty/handler/codec/http/HttpResponseDecoder;->decode(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/buffer/ChannelBuffer;Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;)Ljava/lang/Object;

    move-result-object v1

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/d;->a:Lorg/jboss/netty/handler/codec/http/HttpClientCodec;

    invoke-static {v0}, Lorg/jboss/netty/handler/codec/http/HttpClientCodec;->access$000(Lorg/jboss/netty/handler/codec/http/HttpClientCodec;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    instance-of v0, v1, Lorg/jboss/netty/handler/codec/http/HttpMessage;

    if-eqz v0, :cond_2

    move-object v0, v1

    check-cast v0, Lorg/jboss/netty/handler/codec/http/HttpMessage;

    invoke-interface {v0}, Lorg/jboss/netty/handler/codec/http/HttpMessage;->isChunked()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/d;->a:Lorg/jboss/netty/handler/codec/http/HttpClientCodec;

    invoke-static {v0}, Lorg/jboss/netty/handler/codec/http/HttpClientCodec;->access$100(Lorg/jboss/netty/handler/codec/http/HttpClientCodec;)Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->decrementAndGet()J

    goto :goto_0

    :cond_2
    instance-of v0, v1, Lorg/jboss/netty/handler/codec/http/HttpChunk;

    if-eqz v0, :cond_3

    move-object v0, v1

    check-cast v0, Lorg/jboss/netty/handler/codec/http/HttpChunk;

    invoke-interface {v0}, Lorg/jboss/netty/handler/codec/http/HttpChunk;->isLast()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/d;->a:Lorg/jboss/netty/handler/codec/http/HttpClientCodec;

    invoke-static {v0}, Lorg/jboss/netty/handler/codec/http/HttpClientCodec;->access$100(Lorg/jboss/netty/handler/codec/http/HttpClientCodec;)Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->decrementAndGet()J

    goto :goto_0

    :cond_3
    instance-of v0, v1, [Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/d;->a:Lorg/jboss/netty/handler/codec/http/HttpClientCodec;

    invoke-static {v0}, Lorg/jboss/netty/handler/codec/http/HttpClientCodec;->access$100(Lorg/jboss/netty/handler/codec/http/HttpClientCodec;)Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->decrementAndGet()J

    goto :goto_0
.end method

.method protected final isContentAlwaysEmpty(Lorg/jboss/netty/handler/codec/http/HttpMessage;)Z
    .locals 5

    const/4 v1, 0x1

    move-object v0, p1

    check-cast v0, Lorg/jboss/netty/handler/codec/http/HttpResponse;

    invoke-interface {v0}, Lorg/jboss/netty/handler/codec/http/HttpResponse;->getStatus()Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->getCode()I

    move-result v2

    const/16 v0, 0x64

    if-ne v2, v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/d;->a:Lorg/jboss/netty/handler/codec/http/HttpClientCodec;

    iget-object v0, v0, Lorg/jboss/netty/handler/codec/http/HttpClientCodec;->queue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/handler/codec/http/HttpMethod;

    invoke-virtual {v0}, Lorg/jboss/netty/handler/codec/http/HttpMethod;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_1
    invoke-super {p0, p1}, Lorg/jboss/netty/handler/codec/http/HttpResponseDecoder;->isContentAlwaysEmpty(Lorg/jboss/netty/handler/codec/http/HttpMessage;)Z

    move-result v0

    goto :goto_0

    :sswitch_0
    sget-object v2, Lorg/jboss/netty/handler/codec/http/HttpMethod;->HEAD:Lorg/jboss/netty/handler/codec/http/HttpMethod;

    invoke-virtual {v2, v0}, Lorg/jboss/netty/handler/codec/http/HttpMethod;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_0

    :sswitch_1
    const/16 v3, 0xc8

    if-ne v2, v3, :cond_1

    sget-object v2, Lorg/jboss/netty/handler/codec/http/HttpMethod;->CONNECT:Lorg/jboss/netty/handler/codec/http/HttpMethod;

    invoke-virtual {v2, v0}, Lorg/jboss/netty/handler/codec/http/HttpMethod;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/d;->a:Lorg/jboss/netty/handler/codec/http/HttpClientCodec;

    iput-boolean v1, v0, Lorg/jboss/netty/handler/codec/http/HttpClientCodec;->done:Z

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/d;->a:Lorg/jboss/netty/handler/codec/http/HttpClientCodec;

    iget-object v0, v0, Lorg/jboss/netty/handler/codec/http/HttpClientCodec;->queue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    move v0, v1

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x43 -> :sswitch_1
        0x48 -> :sswitch_0
    .end sparse-switch
.end method
