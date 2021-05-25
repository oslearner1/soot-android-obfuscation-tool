.class public Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketClientHandshakerFactory;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public newHandshaker(Ljava/net/URI;Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketVersion;Ljava/lang/String;ZLjava/util/Map;)Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketClientHandshaker;
    .locals 8

    const-wide v6, 0x7fffffffffffffffL

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v7}, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketClientHandshakerFactory;->newHandshaker(Ljava/net/URI;Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketVersion;Ljava/lang/String;ZLjava/util/Map;J)Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketClientHandshaker;

    move-result-object v0

    return-object v0
.end method

.method public newHandshaker(Ljava/net/URI;Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketVersion;Ljava/lang/String;ZLjava/util/Map;J)Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketClientHandshaker;
    .locals 8

    sget-object v0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketVersion;->V13:Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketVersion;

    if-ne p2, v0, :cond_0

    new-instance v0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketClientHandshaker13;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move-wide v6, p6

    invoke-direct/range {v0 .. v7}, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketClientHandshaker13;-><init>(Ljava/net/URI;Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketVersion;Ljava/lang/String;ZLjava/util/Map;J)V

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketVersion;->V08:Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketVersion;

    if-ne p2, v0, :cond_1

    new-instance v0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketClientHandshaker08;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move-wide v6, p6

    invoke-direct/range {v0 .. v7}, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketClientHandshaker08;-><init>(Ljava/net/URI;Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketVersion;Ljava/lang/String;ZLjava/util/Map;J)V

    goto :goto_0

    :cond_1
    sget-object v0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketVersion;->V00:Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketVersion;

    if-ne p2, v0, :cond_2

    new-instance v0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketClientHandshaker00;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p5

    move-wide v5, p6

    invoke-direct/range {v0 .. v6}, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketClientHandshaker00;-><init>(Ljava/net/URI;Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketVersion;Ljava/lang/String;Ljava/util/Map;J)V

    goto :goto_0

    :cond_2
    new-instance v0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketHandshakeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Protocol version "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketVersion;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not supported."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketHandshakeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
