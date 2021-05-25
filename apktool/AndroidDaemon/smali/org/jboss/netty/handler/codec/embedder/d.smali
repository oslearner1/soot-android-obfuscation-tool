.class final Lorg/jboss/netty/handler/codec/embedder/d;
.super Lorg/jboss/netty/channel/AbstractChannel;


# static fields
.field private static final a:Ljava/lang/Integer;


# instance fields
.field private final b:Lorg/jboss/netty/channel/ChannelConfig;

.field private final c:Ljava/net/SocketAddress;

.field private final d:Ljava/net/SocketAddress;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lorg/jboss/netty/handler/codec/embedder/d;->a:Ljava/lang/Integer;

    return-void
.end method

.method constructor <init>(Lorg/jboss/netty/channel/ChannelPipeline;Lorg/jboss/netty/channel/ChannelSink;)V
    .locals 6

    sget-object v1, Lorg/jboss/netty/handler/codec/embedder/d;->a:Ljava/lang/Integer;

    const/4 v2, 0x0

    sget-object v3, Lorg/jboss/netty/handler/codec/embedder/e;->a:Lorg/jboss/netty/channel/ChannelFactory;

    move-object v0, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lorg/jboss/netty/channel/AbstractChannel;-><init>(Ljava/lang/Integer;Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/channel/ChannelFactory;Lorg/jboss/netty/channel/ChannelPipeline;Lorg/jboss/netty/channel/ChannelSink;)V

    new-instance v0, Lorg/jboss/netty/handler/codec/embedder/f;

    invoke-direct {v0}, Lorg/jboss/netty/handler/codec/embedder/f;-><init>()V

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/embedder/d;->c:Ljava/net/SocketAddress;

    new-instance v0, Lorg/jboss/netty/handler/codec/embedder/f;

    invoke-direct {v0}, Lorg/jboss/netty/handler/codec/embedder/f;-><init>()V

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/embedder/d;->d:Ljava/net/SocketAddress;

    new-instance v0, Lorg/jboss/netty/channel/DefaultChannelConfig;

    invoke-direct {v0}, Lorg/jboss/netty/channel/DefaultChannelConfig;-><init>()V

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/embedder/d;->b:Lorg/jboss/netty/channel/ChannelConfig;

    return-void
.end method


# virtual methods
.method public final getConfig()Lorg/jboss/netty/channel/ChannelConfig;
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/embedder/d;->b:Lorg/jboss/netty/channel/ChannelConfig;

    return-object v0
.end method

.method public final getLocalAddress()Ljava/net/SocketAddress;
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/embedder/d;->c:Ljava/net/SocketAddress;

    return-object v0
.end method

.method public final getRemoteAddress()Ljava/net/SocketAddress;
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/embedder/d;->d:Ljava/net/SocketAddress;

    return-object v0
.end method

.method public final isBound()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final isConnected()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
