.class public Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketClientHandshaker00;
.super Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketClientHandshaker;


# instance fields
.field private expectedChallengeResponseBytes:[B


# direct methods
.method public constructor <init>(Ljava/net/URI;Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketVersion;Ljava/lang/String;Ljava/util/Map;)V
    .locals 7

    const-wide v5, 0x7fffffffffffffffL

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketClientHandshaker00;-><init>(Ljava/net/URI;Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketVersion;Ljava/lang/String;Ljava/util/Map;J)V

    return-void
.end method

.method public constructor <init>(Ljava/net/URI;Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketVersion;Ljava/lang/String;Ljava/util/Map;J)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketClientHandshaker;-><init>(Ljava/net/URI;Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketVersion;Ljava/lang/String;Ljava/util/Map;J)V

    return-void
.end method

.method private static insertRandomCharacters(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    const/4 v1, 0x0

    const/4 v0, 0x1

    const/16 v2, 0xc

    invoke-static {v0, v2}, Lorg/jboss/netty/handler/codec/http/websocketx/e;->a(II)I

    move-result v2

    new-array v3, v2, [C

    move v0, v1

    :cond_0
    :goto_0
    if-ge v0, v2, :cond_3

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    const-wide v6, 0x405f800000000000L    # 126.0

    mul-double/2addr v4, v6

    const-wide v6, 0x4040800000000000L    # 33.0

    add-double/2addr v4, v6

    double-to-int v4, v4

    const/16 v5, 0x21

    if-ge v5, v4, :cond_1

    const/16 v5, 0x2f

    if-lt v4, v5, :cond_2

    :cond_1
    const/16 v5, 0x3a

    if-ge v5, v4, :cond_0

    const/16 v5, 0x7e

    if-ge v4, v5, :cond_0

    :cond_2
    int-to-char v4, v4

    aput-char v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    move v0, v1

    :goto_1
    if-ge v0, v2, :cond_4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {v1, v4}, Lorg/jboss/netty/handler/codec/http/websocketx/e;->a(II)I

    move-result v4

    invoke-virtual {p0, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-char v6, v3, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    return-object p0
.end method

.method private static insertSpaces(Ljava/lang/String;I)Ljava/lang/String;
    .locals 5

    const/4 v1, 0x0

    move v0, v1

    :goto_0
    if-ge v0, p1, :cond_0

    const/4 v2, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {v2, v3}, Lorg/jboss/netty/handler/codec/http/websocketx/e;->a(II)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method


# virtual methods
.method public finishHandshake(Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/handler/codec/http/HttpResponse;)V
    .locals 5

    new-instance v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    const/16 v1, 0x65

    const-string v2, "WebSocket Protocol Handshake"

    invoke-direct {v0, v1, v2}, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;-><init>(ILjava/lang/String;)V

    invoke-interface {p2}, Lorg/jboss/netty/handler/codec/http/HttpResponse;->getStatus()Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketHandshakeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid handshake response status: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p2}, Lorg/jboss/netty/handler/codec/http/HttpResponse;->getStatus()Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketHandshakeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const-string v0, "Upgrade"

    invoke-interface {p2, v0}, Lorg/jboss/netty/handler/codec/http/HttpResponse;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "WebSocket"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    new-instance v0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketHandshakeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid handshake response upgrade: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "Upgrade"

    invoke-interface {p2, v2}, Lorg/jboss/netty/handler/codec/http/HttpResponse;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketHandshakeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    const-string v0, "Connection"

    invoke-interface {p2, v0}, Lorg/jboss/netty/handler/codec/http/HttpResponse;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v1, "Upgrade"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    new-instance v0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketHandshakeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid handshake response connection: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "Connection"

    invoke-interface {p2, v2}, Lorg/jboss/netty/handler/codec/http/HttpResponse;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketHandshakeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    invoke-interface {p2}, Lorg/jboss/netty/handler/codec/http/HttpResponse;->getContent()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->array()[B

    move-result-object v0

    iget-object v1, p0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketClientHandshaker00;->expectedChallengeResponseBytes:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_5

    new-instance v0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketHandshakeException;

    const-string v1, "Invalid challenge"

    invoke-direct {v0, v1}, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketHandshakeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    const-string v0, "Sec-WebSocket-Protocol"

    invoke-interface {p2, v0}, Lorg/jboss/netty/handler/codec/http/HttpResponse;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketClientHandshaker00;->setActualSubprotocol(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketClientHandshaker00;->setHandshakeComplete()V

    invoke-interface {p1}, Lorg/jboss/netty/channel/Channel;->getPipeline()Lorg/jboss/netty/channel/ChannelPipeline;

    move-result-object v0

    const-class v1, Lorg/jboss/netty/handler/codec/http/HttpResponseDecoder;

    invoke-interface {v0, v1}, Lorg/jboss/netty/channel/ChannelPipeline;->get(Ljava/lang/Class;)Lorg/jboss/netty/channel/ChannelHandler;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/handler/codec/http/HttpResponseDecoder;

    const-string v1, "ws-decoder"

    new-instance v2, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket00FrameDecoder;

    invoke-virtual {p0}, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketClientHandshaker00;->getMaxFramePayloadLength()J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket00FrameDecoder;-><init>(J)V

    invoke-virtual {v0, v1, v2}, Lorg/jboss/netty/handler/codec/http/HttpResponseDecoder;->replace(Ljava/lang/String;Lorg/jboss/netty/channel/ChannelHandler;)V

    return-void
.end method

.method public handshake(Lorg/jboss/netty/channel/Channel;)Lorg/jboss/netty/channel/ChannelFuture;
    .locals 9

    const/16 v2, 0xc

    const/4 v1, 0x1

    const/16 v8, 0x8

    const/4 v7, 0x4

    const/4 v6, 0x0

    invoke-static {v1, v2}, Lorg/jboss/netty/handler/codec/http/websocketx/e;->a(II)I

    move-result v0

    invoke-static {v1, v2}, Lorg/jboss/netty/handler/codec/http/websocketx/e;->a(II)I

    move-result v1

    const v2, 0x7fffffff

    div-int/2addr v2, v0

    const v3, 0x7fffffff

    div-int/2addr v3, v1

    invoke-static {v6, v2}, Lorg/jboss/netty/handler/codec/http/websocketx/e;->a(II)I

    move-result v2

    invoke-static {v6, v3}, Lorg/jboss/netty/handler/codec/http/websocketx/e;->a(II)I

    move-result v3

    mul-int v4, v2, v0

    mul-int v5, v3, v1

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4}, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketClientHandshaker00;->insertRandomCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v5}, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketClientHandshaker00;->insertRandomCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v0}, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketClientHandshaker00;->insertSpaces(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v1}, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketClientHandshaker00;->insertSpaces(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v8}, Lorg/jboss/netty/handler/codec/http/websocketx/e;->a(I)[B

    move-result-object v5

    invoke-static {v7}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-static {v7}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    const/16 v3, 0x10

    new-array v3, v3, [B

    invoke-static {v0, v6, v3, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v2, v6, v3, v7, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v5, v6, v3, v8, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v3}, Lorg/jboss/netty/handler/codec/http/websocketx/e;->a([B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketClientHandshaker00;->expectedChallengeResponseBytes:[B

    invoke-virtual {p0}, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketClientHandshaker00;->getWebSocketUrl()Ljava/net/URI;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2}, Ljava/net/URI;->getQuery()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Ljava/net/URI;->getQuery()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "?"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2}, Ljava/net/URI;->getQuery()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    new-instance v3, Lorg/jboss/netty/handler/codec/http/DefaultHttpRequest;

    sget-object v6, Lorg/jboss/netty/handler/codec/http/HttpVersion;->HTTP_1_1:Lorg/jboss/netty/handler/codec/http/HttpVersion;

    sget-object v7, Lorg/jboss/netty/handler/codec/http/HttpMethod;->GET:Lorg/jboss/netty/handler/codec/http/HttpMethod;

    invoke-direct {v3, v6, v7, v0}, Lorg/jboss/netty/handler/codec/http/DefaultHttpRequest;-><init>(Lorg/jboss/netty/handler/codec/http/HttpVersion;Lorg/jboss/netty/handler/codec/http/HttpMethod;Ljava/lang/String;)V

    const-string v0, "Upgrade"

    const-string v6, "WebSocket"

    invoke-interface {v3, v0, v6}, Lorg/jboss/netty/handler/codec/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "Connection"

    const-string v6, "Upgrade"

    invoke-interface {v3, v0, v6}, Lorg/jboss/netty/handler/codec/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "Host"

    invoke-virtual {v2}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v0, v6}, Lorg/jboss/netty/handler/codec/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2}, Ljava/net/URI;->getPort()I

    move-result v6

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v7, "http://"

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x50

    if-eq v6, v2, :cond_1

    const/16 v2, 0x1bb

    if-eq v6, v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    const-string v2, "Origin"

    invoke-interface {v3, v2, v0}, Lorg/jboss/netty/handler/codec/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "Sec-WebSocket-Key1"

    invoke-interface {v3, v0, v4}, Lorg/jboss/netty/handler/codec/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "Sec-WebSocket-Key2"

    invoke-interface {v3, v0, v1}, Lorg/jboss/netty/handler/codec/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketClientHandshaker00;->getExpectedSubprotocol()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "Sec-WebSocket-Protocol"

    invoke-interface {v3, v1, v0}, Lorg/jboss/netty/handler/codec/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketClientHandshaker00;->customHeaders:Ljava/util/Map;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketClientHandshaker00;->customHeaders:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketClientHandshaker00;->customHeaders:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v3, v0, v2}, Lorg/jboss/netty/handler/codec/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    invoke-static {v5}, Lorg/jboss/netty/buffer/ChannelBuffers;->copiedBuffer([B)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    invoke-interface {v3, v0}, Lorg/jboss/netty/handler/codec/http/HttpRequest;->setContent(Lorg/jboss/netty/buffer/ChannelBuffer;)V

    invoke-interface {p1, v3}, Lorg/jboss/netty/channel/Channel;->write(Ljava/lang/Object;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v0

    invoke-interface {p1}, Lorg/jboss/netty/channel/Channel;->getPipeline()Lorg/jboss/netty/channel/ChannelPipeline;

    move-result-object v1

    const-class v2, Lorg/jboss/netty/handler/codec/http/HttpRequestEncoder;

    const-string v3, "ws-encoder"

    new-instance v4, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket00FrameEncoder;

    invoke-direct {v4}, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket00FrameEncoder;-><init>()V

    invoke-interface {v1, v2, v3, v4}, Lorg/jboss/netty/channel/ChannelPipeline;->replace(Ljava/lang/Class;Ljava/lang/String;Lorg/jboss/netty/channel/ChannelHandler;)Lorg/jboss/netty/channel/ChannelHandler;

    return-object v0
.end method
