.class public Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketServerHandshaker13;
.super Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketServerHandshaker;


# static fields
.field public static final WEBSOCKET_13_ACCEPT_GUID:Ljava/lang/String; = "258EAFA5-E914-47DA-95CA-C5AB0DC85B11"

.field private static final logger:Lorg/jboss/netty/logging/InternalLogger;


# instance fields
.field private final allowExtensions:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketServerHandshaker13;

    invoke-static {v0}, Lorg/jboss/netty/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lorg/jboss/netty/logging/InternalLogger;

    move-result-object v0

    sput-object v0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketServerHandshaker13;->logger:Lorg/jboss/netty/logging/InternalLogger;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 6

    const-wide v4, 0x7fffffffffffffffL

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketServerHandshaker13;-><init>(Ljava/lang/String;Ljava/lang/String;ZJ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZJ)V
    .locals 6

    sget-object v1, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketVersion;->V13:Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketVersion;

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketServerHandshaker;-><init>(Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketVersion;Ljava/lang/String;Ljava/lang/String;J)V

    iput-boolean p3, p0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketServerHandshaker13;->allowExtensions:Z

    return-void
.end method


# virtual methods
.method public close(Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/handler/codec/http/websocketx/CloseWebSocketFrame;)Lorg/jboss/netty/channel/ChannelFuture;
    .locals 2

    invoke-interface {p1, p2}, Lorg/jboss/netty/channel/Channel;->write(Ljava/lang/Object;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v0

    sget-object v1, Lorg/jboss/netty/channel/ChannelFutureListener;->CLOSE:Lorg/jboss/netty/channel/ChannelFutureListener;

    invoke-interface {v0, v1}, Lorg/jboss/netty/channel/ChannelFuture;->addListener(Lorg/jboss/netty/channel/ChannelFutureListener;)V

    return-object v0
.end method

.method public handshake(Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/handler/codec/http/HttpRequest;)Lorg/jboss/netty/channel/ChannelFuture;
    .locals 10

    const/4 v9, 0x1

    const/4 v8, 0x0

    sget-object v0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketServerHandshaker13;->logger:Lorg/jboss/netty/logging/InternalLogger;

    invoke-interface {v0}, Lorg/jboss/netty/logging/InternalLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketServerHandshaker13;->logger:Lorg/jboss/netty/logging/InternalLogger;

    const-string v1, "Channel %s WS Version 13 server handshake"

    new-array v2, v9, [Ljava/lang/Object;

    invoke-interface {p1}, Lorg/jboss/netty/channel/Channel;->getId()Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/jboss/netty/logging/InternalLogger;->debug(Ljava/lang/String;)V

    :cond_0
    new-instance v0, Lorg/jboss/netty/handler/codec/http/DefaultHttpResponse;

    sget-object v1, Lorg/jboss/netty/handler/codec/http/HttpVersion;->HTTP_1_1:Lorg/jboss/netty/handler/codec/http/HttpVersion;

    sget-object v2, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->SWITCHING_PROTOCOLS:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    invoke-direct {v0, v1, v2}, Lorg/jboss/netty/handler/codec/http/DefaultHttpResponse;-><init>(Lorg/jboss/netty/handler/codec/http/HttpVersion;Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;)V

    const-string v1, "Sec-WebSocket-Key"

    invoke-interface {p2, v1}, Lorg/jboss/netty/handler/codec/http/HttpRequest;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    new-instance v0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketHandshakeException;

    const-string v1, "not a WebSocket request: missing key"

    invoke-direct {v0, v1}, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketHandshakeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "258EAFA5-E914-47DA-95CA-C5AB0DC85B11"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :try_start_0
    sget-object v3, Lorg/jboss/netty/util/CharsetUtil;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {v3}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-static {v2}, Lorg/jboss/netty/handler/codec/http/websocketx/e;->b([B)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    invoke-static {v2}, Lorg/jboss/netty/handler/codec/http/websocketx/e;->c([B)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketServerHandshaker13;->logger:Lorg/jboss/netty/logging/InternalLogger;

    invoke-interface {v3}, Lorg/jboss/netty/logging/InternalLogger;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    sget-object v3, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketServerHandshaker13;->logger:Lorg/jboss/netty/logging/InternalLogger;

    const-string v4, "WS Version 13 Server Handshake key: %s. Response: %s."

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v1, v5, v8

    aput-object v2, v5, v9

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v1}, Lorg/jboss/netty/logging/InternalLogger;->debug(Ljava/lang/String;)V

    :cond_2
    sget-object v1, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->SWITCHING_PROTOCOLS:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    invoke-interface {v0, v1}, Lorg/jboss/netty/handler/codec/http/HttpResponse;->setStatus(Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;)V

    const-string v1, "Upgrade"

    const-string v3, "WebSocket"

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Lorg/jboss/netty/handler/codec/http/HttpResponse;->addHeader(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "Connection"

    const-string v3, "Upgrade"

    invoke-interface {v0, v1, v3}, Lorg/jboss/netty/handler/codec/http/HttpResponse;->addHeader(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "Sec-WebSocket-Accept"

    invoke-interface {v0, v1, v2}, Lorg/jboss/netty/handler/codec/http/HttpResponse;->addHeader(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "Sec-WebSocket-Protocol"

    invoke-interface {p2, v1}, Lorg/jboss/netty/handler/codec/http/HttpRequest;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {p0, v1}, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketServerHandshaker13;->selectSubprotocol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    new-instance v0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketHandshakeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Requested subprotocol(s) not supported: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketHandshakeException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_0
    move-exception v0

    invoke-static {p1, v0}, Lorg/jboss/netty/channel/Channels;->failedFuture(Lorg/jboss/netty/channel/Channel;Ljava/lang/Throwable;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_3
    const-string v1, "Sec-WebSocket-Protocol"

    invoke-interface {v0, v1, v2}, Lorg/jboss/netty/handler/codec/http/HttpResponse;->addHeader(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v2}, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketServerHandshaker13;->setSelectedSubprotocol(Ljava/lang/String;)V

    :cond_4
    invoke-interface {p1, v0}, Lorg/jboss/netty/channel/Channel;->write(Ljava/lang/Object;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v0

    invoke-interface {p1}, Lorg/jboss/netty/channel/Channel;->getPipeline()Lorg/jboss/netty/channel/ChannelPipeline;

    move-result-object v1

    const-class v2, Lorg/jboss/netty/handler/codec/http/HttpChunkAggregator;

    invoke-interface {v1, v2}, Lorg/jboss/netty/channel/ChannelPipeline;->get(Ljava/lang/Class;)Lorg/jboss/netty/channel/ChannelHandler;

    move-result-object v2

    if-eqz v2, :cond_5

    const-class v2, Lorg/jboss/netty/handler/codec/http/HttpChunkAggregator;

    invoke-interface {v1, v2}, Lorg/jboss/netty/channel/ChannelPipeline;->remove(Ljava/lang/Class;)Lorg/jboss/netty/channel/ChannelHandler;

    :cond_5
    const-class v2, Lorg/jboss/netty/handler/codec/http/HttpRequestDecoder;

    const-string v3, "wsdecoder"

    new-instance v4, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket13FrameDecoder;

    iget-boolean v5, p0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketServerHandshaker13;->allowExtensions:Z

    invoke-virtual {p0}, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketServerHandshaker13;->getMaxFramePayloadLength()J

    move-result-wide v6

    invoke-direct {v4, v9, v5, v6, v7}, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket13FrameDecoder;-><init>(ZZJ)V

    invoke-interface {v1, v2, v3, v4}, Lorg/jboss/netty/channel/ChannelPipeline;->replace(Ljava/lang/Class;Ljava/lang/String;Lorg/jboss/netty/channel/ChannelHandler;)Lorg/jboss/netty/channel/ChannelHandler;

    const-class v2, Lorg/jboss/netty/handler/codec/http/HttpResponseEncoder;

    const-string v3, "wsencoder"

    new-instance v4, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket13FrameEncoder;

    invoke-direct {v4, v8}, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket13FrameEncoder;-><init>(Z)V

    invoke-interface {v1, v2, v3, v4}, Lorg/jboss/netty/channel/ChannelPipeline;->replace(Ljava/lang/Class;Ljava/lang/String;Lorg/jboss/netty/channel/ChannelHandler;)Lorg/jboss/netty/channel/ChannelHandler;

    goto :goto_0
.end method
